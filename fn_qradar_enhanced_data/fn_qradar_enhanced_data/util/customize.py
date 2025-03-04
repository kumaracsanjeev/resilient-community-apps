# -*- coding: utf-8 -*-
# Generated with resilient-sdk v48.0.4034

"""Generate the Resilient customizations required for fn_qradar_enhanced_data"""

import base64
import os
import io
try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition

RES_FILE = "data/export.res"


def codegen_reload_data():
    """
    Parameters required reload codegen for the fn_qradar_enhanced_data package
    """
    return {
        "package": u"fn_qradar_enhanced_data",
        "message_destinations": [u"fn_qradar_enhanced_data"],
        "functions": [u"qradar_create_note", u"qradar_get_offense_mitre_reference", u"qradar_offense_summary", u"qradar_top_events"],
        "workflows": [u"example_of_searching_qradar_flows_using_offense_id", u"example_of_searching_qradar_top_events_using_offense_id", u"qradar_assets_information", u"qradar_categories", u"qradar_destination_ips", u"qradar_offense_summary", u"qradar_source_ips", u"qradar_triggered_rules"],
        "actions": [u"Create Artifact from Assets info", u"Create artifact from Destination IP info", u"Create Artifact from Events info", u"Create artifact from Source IP info", u"Create Artifacts from Flows Info ", u"QRadar Enhanced Data", u"QRadar Enhanced Data Poller", u"QRadar Enhanced Data Refresh"],
        "incident_fields": [u"qr_assigned", u"qr_credibility", u"qr_destination_ip_count", u"qr_event_count", u"qr_flow_count", u"qr_last_updated_time", u"qr_magnitude", u"qr_offense_domain", u"qr_offense_index_type", u"qr_offense_index_value", u"qr_offense_last_updated_time", u"qr_offense_source", u"qr_offense_start_time", u"qr_offense_status", u"qr_relevance", u"qr_severity", u"qr_source_ip_count", u"qradar_destination", u"qradar_id"],
        "incident_artifact_types": [],
        "incident_types": [],
        "datatables": [u"qr_assets", u"qr_categories", u"qr_flows", u"qr_offense_top_events", u"qr_top_destination_ips", u"qr_top_source_ips", u"qr_triggered_rules", u"qradar_rules_and_mitre_tactics_and_techniques"],
        "automatic_tasks": [],
        "scripts": [u"Create Artifact from Assets info", u"Create Artifact from Destination IP info", u"Create Artifact from Events info", u"Create Artifact from Flows info", u"Create Artifact from Source IP info", u"Set Incident Last Updated Time"],
        "playbooks": [u"qradar_create_note", u"qradar_get_qradar_rule_mitre_reference"]
    }


def customization_data(client=None):
    """
    Returns a Generator of ImportDefinitions (Customizations).
    Install them using `resilient-circuits customize`

    IBM SOAR Platform Version: 45.0.7899

    Contents:
    - Message Destinations:
        - fn_qradar_enhanced_data
    - Functions:
        - qradar_create_note
        - qradar_get_offense_mitre_reference
        - qradar_offense_summary
        - qradar_top_events
    - Workflows:
        - example_of_searching_qradar_flows_using_offense_id
        - example_of_searching_qradar_top_events_using_offense_id
        - qradar_assets_information
        - qradar_categories
        - qradar_destination_ips
        - qradar_offense_summary
        - qradar_source_ips
        - qradar_triggered_rules
    - Playbooks:
        - qradar_create_note
        - qradar_get_qradar_rule_mitre_reference
    - Rules:
        - Create Artifact from Assets info
        - Create artifact from Destination IP info
        - Create Artifact from Events info
        - Create artifact from Source IP info
        - Create Artifacts from Flows Info 
        - QRadar Enhanced Data
        - QRadar Enhanced Data Poller
        - QRadar Enhanced Data Refresh
    - Incident Fields:
        - qr_assigned
        - qr_credibility
        - qr_destination_ip_count
        - qr_event_count
        - qr_flow_count
        - qr_last_updated_time
        - qr_magnitude
        - qr_offense_domain
        - qr_offense_index_type
        - qr_offense_index_value
        - qr_offense_last_updated_time
        - qr_offense_source
        - qr_offense_start_time
        - qr_offense_status
        - qr_relevance
        - qr_severity
        - qr_source_ip_count
        - qradar_destination
        - qradar_id
    - Data Tables:
        - qr_assets
        - qr_categories
        - qr_flows
        - qr_offense_top_events
        - qr_top_destination_ips
        - qr_top_source_ips
        - qr_triggered_rules
        - qradar_rules_and_mitre_tactics_and_techniques
    - Scripts:
        - Create Artifact from Assets info
        - Create Artifact from Destination IP info
        - Create Artifact from Events info
        - Create Artifact from Flows info
        - Create Artifact from Source IP info
        - Set Incident Last Updated Time
    """

    res_file = os.path.join(os.path.dirname(__file__), RES_FILE)
    if not os.path.isfile(res_file):
        raise FileNotFoundError("{} not found".format(RES_FILE))

    with io.open(res_file, mode='rt') as f:
        b64_data = base64.b64encode(f.read().encode('utf-8'))
        yield ImportDefinition(b64_data)