# -*- coding: utf-8 -*-
"""Tests using pytest_resilient_circuits"""

import json
import pytest
from resilient_circuits.util import get_config_data, get_function_definition
from resilient_circuits import SubmitTestFunction, FunctionResult
from tests.mock_incident import IncidentMock

try:
    from unittest.mock import patch, Mock, MagicMock
except:
    from mock import patch, Mock, MagicMock

PACKAGE_NAME = "fn_soar_utils"
FUNCTION_NAME = "soar_utils_create_incident"

# Read the default configuration-data section from the package
config_data = get_config_data(PACKAGE_NAME)

resilient_mock = IncidentMock

def call_soar_utils_create_incident_function(circuits, function_params, timeout=5):
    # Create the submitTestFunction event
    evt = SubmitTestFunction("soar_utils_create_incident", function_params)

    # Fire a message to the function
    circuits.manager.fire(evt)

    # circuits will fire an "exception" event if an exception is raised in the FunctionComponent
    # return this exception if it is raised
    exception_event = circuits.watcher.wait("exception", parent=None, timeout=timeout)

    if exception_event is not False:
        exception = exception_event.args[1]
        raise exception

    # else return the FunctionComponent's results
    else:
        event = circuits.watcher.wait("soar_utils_create_incident_result", parent=evt, timeout=timeout)
        assert event
        assert isinstance(event.kwargs["result"], FunctionResult)
        pytest.wait_for(event, "complete", True)
        return event.kwargs["result"].value


class TestSoarUtilsCreateIncident:
    """ Tests for the soar_utils_create_incident function"""

    def test_function_definition(self):
        """ Test that the package provides customization_data that defines the function """
        func = get_function_definition(PACKAGE_NAME, FUNCTION_NAME)
        assert func is not None

    mock_inputs_1 = {
        "soar_utils_create_fields": json.dumps({
            "name": "sample incident",
            "description": "something",
            "discovered_date": 1621110044000,
            "artifacts": [
                {"type": "IP Address", "value": "1.2.3.4"}
            ]
        })
    }

    @pytest.mark.parametrize("mock_inputs", [
        (mock_inputs_1),
    ])
    def test_success(self, circuits_app, mock_inputs):
        """ Test calling with sample values for the parameters """
        results = call_soar_utils_create_incident_function(circuits_app, mock_inputs)
        assert(results.get("name") == mock_inputs.get("name"))
