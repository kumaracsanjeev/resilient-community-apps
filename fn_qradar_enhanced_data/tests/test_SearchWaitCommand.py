# Unit test for SearchWaitCommand.py
# This is common code, just need to be test in one function
# 100% coverage

import time
from mock import patch
from fn_qradar_enhanced_data.util.qradar_utils import ArielSearch
import fn_qradar_enhanced_data.util.SearchWaitCommand as SearchWaitCommand

@patch("fn_qradar_enhanced_data.util.qradar_utils.ArielSearch.delete_search")
@patch("fn_qradar_enhanced_data.util.qradar_utils.ArielSearch.get_search_result")
@patch("fn_qradar_enhanced_data.util.qradar_utils.ArielSearch.check_status")
@patch("fn_qradar_enhanced_data.util.qradar_utils.ArielSearch.get_search_id")
def test_search_and_wait_command(mocked_get_search_id, mocked_check_status, mocked_get_search_result, mocked_delete_search):
    # Test data
    timeout = 2
    period = 1
    query_str = "SELECT * FROM events"
    search_id = "FakeSearchIDreturnedFromQradar"
    normal_return = {"events":[{"starttime":"2018-04-06 13:49",
                                "Category": "SIM User Action"},
                               {"starttime":"2018-04-05 16:30",
                                "Category": "SIM User Authentication"}]}

    search_cmd = ArielSearch(timeout, period)

    assert search_cmd.search_timeout == timeout
    assert search_cmd.polling_period == period

    # 1. Test normal case
    mocked_get_search_id.return_value = search_id
    mocked_delete_search.return_value = True
    mocked_check_status.return_value = (SearchWaitCommand.SearchWaitCommand.SEARCH_STATUS_COMPLETED, None)
    mocked_get_search_result.return_value = normal_return

    try:
        ret, result_set = search_cmd.perform_search(query_str)

        mocked_get_search_id.assert_called_with(query_str)
        mocked_check_status.assert_called_with(search_id)
        mocked_get_search_result.assert_called_with(search_id)

        assert ret == normal_return

    except Exception as e:
        assert False

    # 2. Test search job failure by simulating search_id = None
    mocked_get_search_id.return_value = None

    try:
        ret, result_set = search_cmd.perform_search(query_str)
        # It should stop here
        assert False
    except SearchWaitCommand.SearchJobFailure as e:
        assert True
    except Exception:
        assert False

    # 3. Test failed to get status
    mocked_get_search_id.return_value = search_id
    mocked_check_status.return_value = ((SearchWaitCommand).SearchWaitCommand.SEARCH_STATUS_ERROR_STOP, None)

    try:
        ret, result_set = search_cmd.perform_search(query_str)
        # It should stop here
        assert False
    except SearchWaitCommand.SearchFailure as e:
        assert True
    except Exception:
        assert False

    # 4. Test timeout
    start_time = time.time()
    mocked_get_search_id.return_value = search_id
    mocked_check_status.return_value = (SearchWaitCommand.SearchWaitCommand.SEARCH_STATUS_WAITING, None)
    try:
        ret, result_set = search_cmd.perform_search(query_str)
        # It should stop here
        assert False
    except SearchWaitCommand.SearchTimeout as e:
        print(f"Times out after {str(time.time()-start_time)} sec.")
        assert True
    except Exception:
        assert False

    # 5. Same effect for unknown and continue
    start_time = time.time()
    mocked_get_search_id.return_value = search_id
    mocked_check_status.return_value = (SearchWaitCommand.SearchWaitCommand.SEARCH_STATUS_UNKNOWN_CONTINUE, None)
    try:
        ret, result_set = search_cmd.perform_search(query_str)
        # It should stop here
        assert False
    except SearchWaitCommand.SearchTimeout as e:
        print(f"Times out after {str(time.time()-start_time)} sec.")
        assert True
    except Exception:
        assert False

    # 6. Test super class method before overridden by subclass
    base_cmd = SearchWaitCommand.SearchWaitCommand()
    assert base_cmd.get_search_id(query_str) == ""
    assert base_cmd.get_search_result(search_id) == {}
    assert base_cmd.check_status(search_id)[0] == SearchWaitCommand.SearchWaitCommand.SEARCH_STATUS_ERROR_STOP
