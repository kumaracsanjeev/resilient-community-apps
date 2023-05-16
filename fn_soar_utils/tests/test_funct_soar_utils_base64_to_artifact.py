# -*- coding: utf-8 -*-
"""Tests using pytest_resilient_circuits"""

from __future__ import print_function
import pytest
from .mock_artifact import ArtifactMock
from fn_soar_utils.util.soar_utils_common import b_to_s
from resilient_circuits.util import get_config_data, get_function_definition
from resilient_circuits import SubmitTestFunction, FunctionResult
from pytest_resilient_circuits import verify_subset

PACKAGE_NAME = "fn_soar_utils"
FUNCTION_NAME = "soar_utils_base64_to_artifact"

# Read the default configuration-data section from the package
config_data = get_config_data(PACKAGE_NAME)

# Provide a simulation of the SOAR REST API (uncomment to connect to a real appliance)
resilient_mock = ArtifactMock

def call_base64_to_artifact_function(circuits, function_params, timeout=10):
    # Fire a message to the function
    evt = SubmitTestFunction(FUNCTION_NAME, function_params)
    circuits.manager.fire(evt)
    event = circuits.watcher.wait("{}_result".format(FUNCTION_NAME), parent=evt, timeout=timeout)
    assert event
    assert isinstance(event.kwargs["result"], FunctionResult)
    pytest.wait_for(event, "complete", True)
    return event.kwargs["result"].value

class TestBase64ToArtifact:
    """ Tests for the base64_to_artifact function"""

    def test_function_definition(self):
        """ Test that the package provides customization_data that defines the function """
        func = get_function_definition(PACKAGE_NAME, FUNCTION_NAME)
        assert func is not None

    @pytest.mark.parametrize("base64content, incident_id, artifact_file_type, file_name, content_type, description, expected_result", [
        (ArtifactMock.test_data_b64("sample1.pdf"), 123, 'Log File', "file.txt", "text/plain", {"type": "text", "content": ""}, {"id": 51})
    ])
    def test_success(self, circuits_app, base64content, incident_id, artifact_file_type, file_name, content_type, description, expected_result):
        """ Test calling with sample values for the parameters """
        function_params = {
            "soar_utils_base64content": b_to_s(base64content),
            "incident_id": incident_id,
            "soar_utils_artifact_file_type": artifact_file_type,
            "soar_utils_file_name": file_name,
            "soar_utils_content_type": content_type,
            "soar_utils_description": description
        }
        result = call_base64_to_artifact_function(circuits_app, function_params)
        verify_subset(expected_result, result)
