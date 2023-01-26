{
  "action_order": [],
  "actions": [
    {
      "automations": [
        {
          "scripts_to_run": "scr_sep_add_artifact_from_scan_results",
          "type": "run_script",
          "value": null
        }
      ],
      "conditions": [
        {
          "evaluation_id": 2,
          "field_name": "sep_eoc_scan_results.computer_name",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": 1,
          "field_name": "sep_eoc_scan_results.file_path",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": 4,
          "field_name": "sep_eoc_scan_results.hash_value",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": 3,
          "field_name": "sep_eoc_scan_results.scan_command_state",
          "method": "contains",
          "type": null,
          "value": "Completed"
        },
        {
          "evaluation_id": 5,
          "field_name": "sep_eoc_scan_results.scan_result",
          "method": "contains",
          "type": null,
          "value": "Hash match"
        },
        {
          "evaluation_id": 6,
          "field_name": "sep_eoc_scan_results.scan_result",
          "method": "contains",
          "type": null,
          "value": "Full match"
        }
      ],
      "custom_condition": "1 AND 2 AND 3 AND 4 AND (5 OR 6)",
      "enabled": true,
      "export_key": "Example: SEP - Add Artifact from Scan Result",
      "id": 811,
      "logic_type": "advanced",
      "message_destinations": [],
      "name": "Example: SEP - Add Artifact from Scan Result",
      "object_type": "sep_eoc_scan_results",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "6ec7fae0-05c8-4c70-8e9d-805f1851d026",
      "view_items": [
        {
          "content": "4e62b9fe-fe72-4496-a885-b03884061bac",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": []
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "Malware MD5 Hash"
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Add Hash to Blacklist",
      "id": 812,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Add Hash to Blacklist",
      "object_type": "artifact",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "7aea2f44-b75f-4be7-be6e-1aa403c846db",
      "view_items": [
        {
          "content": "d0fed156-328c-4bf0-ab0f-827aa9cacce4",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "fa959307-b161-4b46-85b5-24db4c44ce5c",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "wf_sep_add_fingerprint_list"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_groups.group_id",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": "sep_groups.policyInheritanceEnabled",
          "method": "equals",
          "type": null,
          "value": false
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Assign Blacklist to lockdown group",
      "id": 813,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Assign Blacklist to lockdown group",
      "object_type": "sep_groups",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "0b833e1e-88f7-47a1-945e-fce3eea319dd",
      "view_items": [
        {
          "content": "fa959307-b161-4b46-85b5-24db4c44ce5c",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "wf_sep_assign_fingerprint_list_to_lockdown_group"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_fingerprint_lists.list_id",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Delete Blacklist",
      "id": 814,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Delete Blacklist",
      "object_type": "sep_fingerprint_lists",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "9176bfaa-12db-4e09-9f87-44f82154c8bd",
      "view_items": [],
      "workflows": [
        "wf_sep_delete_fingerprint_list"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "Malware MD5 Hash"
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Delete Hash from Blacklist",
      "id": 815,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Delete Hash from Blacklist",
      "object_type": "artifact",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "a4094609-9582-445a-89ad-82b1daa9c109",
      "view_items": [
        {
          "content": "d0fed156-328c-4bf0-ab0f-827aa9cacce4",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "fa959307-b161-4b46-85b5-24db4c44ce5c",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "wf_sep_delete_hash_from_fingerprint_list"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Example: SEP - Get Blacklist information",
      "id": 816,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get Blacklist information",
      "object_type": "incident",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "62c42d6b-0465-4866-82cc-59c0df64a3de",
      "view_items": [
        {
          "content": "d0fed156-328c-4bf0-ab0f-827aa9cacce4",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "fa959307-b161-4b46-85b5-24db4c44ce5c",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "wf_sep_get_blacklist_information"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_eoc_scan_results.computer_name",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Get Endpoint Details",
      "id": 817,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get Endpoint Details",
      "object_type": "sep_eoc_scan_results",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "173ad155-ef61-489a-bf33-f3c07bb5b8e8",
      "view_items": [],
      "workflows": [
        "wf_sep_get_endpoint_details"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "DNS Name"
        },
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "System Name"
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Get Endpoint Details for artifact",
      "id": 818,
      "logic_type": "any",
      "message_destinations": [],
      "name": "Example: SEP - Get Endpoint Details for artifact",
      "object_type": "artifact",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "e7abd80d-6d78-4d12-84db-8afcceda9155",
      "view_items": [],
      "workflows": [
        "wf_sep_get_endpoint_details_for_artifact"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Example: SEP - Get Endpoints status summary",
      "id": 819,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get Endpoints status summary",
      "object_type": "incident",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "d87da2bd-bb7c-4ab1-a849-5637efd4a2a0",
      "view_items": [],
      "workflows": [
        "wf_sep_get_endpoints_status"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Example: SEP - Get Endpoints status summary (refresh)",
      "id": 820,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get Endpoints status summary (refresh)",
      "object_type": "sep_endpoint_status_summary",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "c7d94472-547d-436b-be34-dc6778e14368",
      "view_items": [],
      "workflows": [
        "wf_sep_get_endpoints_status_refresh"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_eoc_scan_results.file_id",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": "sep_eoc_scan_results.file_upload_status",
          "method": "contains",
          "type": null,
          "value": "Completed"
        },
        {
          "evaluation_id": null,
          "field_name": "sep_eoc_scan_results.scan_command_state",
          "method": "contains",
          "type": null,
          "value": "Completed"
        },
        {
          "evaluation_id": null,
          "field_name": "sep_eoc_scan_results.scan_commandid",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Get File Content as Base64 string",
      "id": 821,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get File Content as Base64 string",
      "object_type": "sep_eoc_scan_results",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "10322675-fa1d-4995-bc78-367e801d8007",
      "view_items": [],
      "workflows": [
        "wf_sep_get_file_content_as_base64_string"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Example: SEP - Get Groups information",
      "id": 822,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get Groups information",
      "object_type": "incident",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "29acd35b-b36a-4527-8eeb-f6c40408bcbc",
      "view_items": [
        {
          "content": "d0fed156-328c-4bf0-ab0f-827aa9cacce4",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "wf_sep_get_groups_information"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_status_summary.non_compliant",
          "method": "gt",
          "type": null,
          "value": 0
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Get Non-Compliant Endpoints status details",
      "id": 823,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get Non-Compliant Endpoints status details",
      "object_type": "sep_endpoint_status_summary",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "28ca4f8c-2ec5-4675-a75f-a0d5c06c3e64",
      "view_items": [],
      "workflows": [
        "wf_sep_get_endpoints_status_details"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.computerName",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.quarantine_command_state",
          "method": "contains",
          "type": null,
          "value": "In progress"
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.quarantine_commandid",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.uniqueId",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Get Quarantine status",
      "id": 824,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get Quarantine status",
      "object_type": "sep_endpoint_details",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "28b24270-a3da-4049-8321-a960ac3d1deb",
      "view_items": [],
      "workflows": [
        "wf_sep_get_quarantine_status"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_eoc_scan_results.remediation_status",
          "method": "contains",
          "type": null,
          "value": "In progress"
        },
        {
          "evaluation_id": null,
          "field_name": "sep_eoc_scan_results.remediation_status",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Get Remediation status",
      "id": 825,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get Remediation status",
      "object_type": "sep_eoc_scan_results",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "1c292319-915a-40ff-a701-803257fe5831",
      "view_items": [],
      "workflows": [
        "wf_sep_get_remediation_status"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": 4,
          "field_name": "sep_eoc_scan_results.scan_command_state",
          "method": "contains",
          "type": null,
          "value": "In progress"
        },
        {
          "evaluation_id": 2,
          "field_name": "sep_eoc_scan_results.scan_command_state",
          "method": "not_contains",
          "type": null,
          "value": "Timedout"
        },
        {
          "evaluation_id": 3,
          "field_name": "sep_eoc_scan_results.scan_command_state",
          "method": "not_contains",
          "type": null,
          "value": "Completed"
        },
        {
          "evaluation_id": 1,
          "field_name": "sep_eoc_scan_results.scan_commandid",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "custom_condition": "1 AND 2 AND 3 AND 4",
      "enabled": true,
      "export_key": "Example: SEP - Get Scan results",
      "id": 826,
      "logic_type": "advanced",
      "message_destinations": [],
      "name": "Example: SEP - Get Scan results",
      "object_type": "sep_eoc_scan_results",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "8f943bc5-819c-4e05-a224-a18e7bd64299",
      "view_items": [],
      "workflows": [
        "wf_sep_get_scan_results"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_eoc_scan_results.file_upload_status",
          "method": "contains",
          "type": null,
          "value": "In progress"
        },
        {
          "evaluation_id": null,
          "field_name": "sep_eoc_scan_results.upload_commandid",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Get Upload status",
      "id": 827,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Get Upload status",
      "object_type": "sep_eoc_scan_results",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "173c927d-c7b0-47b3-b3e1-1ba217459ef9",
      "view_items": [],
      "workflows": [
        "wf_sep_get_upload_status"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "File Name"
        },
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "File Path"
        },
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "Malware MD5 Hash"
        },
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "Malware SHA-1 Hash"
        },
        {
          "evaluation_id": null,
          "field_name": "artifact.type",
          "method": "equals",
          "type": null,
          "value": "Malware SHA-256 Hash"
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Initiate EOC Scan for Artifact",
      "id": 828,
      "logic_type": "any",
      "message_destinations": [],
      "name": "Example: SEP - Initiate EOC Scan for Artifact",
      "object_type": "artifact",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "260182a1-0339-4f47-819f-1a09c38f7109",
      "view_items": [
        {
          "content": "cfae48d6-265a-4189-8841-0a2b6f2e1b15",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "wf_sep_initiate_eoc_scan_for_artifact"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.hardwareKey",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.uniqueId",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Move Endpoint",
      "id": 829,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Move Endpoint",
      "object_type": "sep_endpoint_details",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "a105414a-343a-434b-897e-f6522a4b649e",
      "view_items": [
        {
          "content": "3971a704-6061-4134-a8d9-ace22ee8a971",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "wf_sep_move_endpoint"
      ]
    },
    {
      "automations": [
        {
          "scripts_to_run": "scr_sep_parse_email_notification",
          "type": "run_script",
          "value": null
        }
      ],
      "conditions": [
        {
          "evaluation_id": 2,
          "field_name": "__emailmessage.from_address",
          "method": "contains",
          "type": null,
          "value": "\u003cSEPM-notification-email-address\u003e"
        },
        {
          "evaluation_id": 3,
          "field_name": "__emailmessage.subject",
          "method": "contains",
          "type": null,
          "value": "Security alert"
        },
        {
          "evaluation_id": 4,
          "field_name": "__emailmessage.subject",
          "method": "contains",
          "type": null,
          "value": "Single Risk Event"
        },
        {
          "evaluation_id": 5,
          "field_name": "__emailmessage.subject",
          "method": "contains",
          "type": null,
          "value": "New Risk Found"
        },
        {
          "evaluation_id": 1,
          "field_name": null,
          "method": "object_added",
          "type": null,
          "value": null
        }
      ],
      "custom_condition": "1 AND 2 AND (3 OR 4 OR 5)",
      "enabled": true,
      "export_key": "Example: SEP - Parse notification",
      "id": 830,
      "logic_type": "advanced",
      "message_destinations": [],
      "name": "Example: SEP - Parse notification",
      "object_type": "__emailmessage",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 0,
      "uuid": "e73eaa63-1a3f-407b-8457-5086bf06b6e5",
      "view_items": [],
      "workflows": []
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.computerName",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.endpoint_quarantine_status",
          "method": "not_equals",
          "type": null,
          "value": "Quarantined"
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.quarantine_command_state",
          "method": "not_contains",
          "type": null,
          "value": "In progress"
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.uniqueId",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Quarantine Endpoint",
      "id": 831,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Quarantine Endpoint",
      "object_type": "sep_endpoint_details",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "5548dcc7-0c26-4315-801e-a2f2c7e5ec99",
      "view_items": [],
      "workflows": [
        "wf_sep_quarantine_endpoint"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": 6,
          "field_name": "sep_eoc_scan_results.remediation_status",
          "method": "not_contains",
          "type": null,
          "value": "Completed"
        },
        {
          "evaluation_id": 7,
          "field_name": "sep_eoc_scan_results.remediation_status",
          "method": "not_contains",
          "type": null,
          "value": "In progress"
        },
        {
          "evaluation_id": 8,
          "field_name": "sep_eoc_scan_results.remediation_status",
          "method": "not_contains",
          "type": null,
          "value": "Unexpected status"
        },
        {
          "evaluation_id": 9,
          "field_name": "sep_eoc_scan_results.remediation_status",
          "method": "not_contains",
          "type": null,
          "value": "No match found"
        },
        {
          "evaluation_id": 10,
          "field_name": "sep_eoc_scan_results.remediation_status",
          "method": "not_contains",
          "type": null,
          "value": "Failed"
        },
        {
          "evaluation_id": 2,
          "field_name": "sep_eoc_scan_results.scan_command_state",
          "method": "contains",
          "type": null,
          "value": "Completed"
        },
        {
          "evaluation_id": 1,
          "field_name": "sep_eoc_scan_results.scan_commandid",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": 3,
          "field_name": "sep_eoc_scan_results.scan_result",
          "method": "contains",
          "type": null,
          "value": "Full match"
        },
        {
          "evaluation_id": 4,
          "field_name": "sep_eoc_scan_results.scan_result",
          "method": "contains",
          "type": null,
          "value": "Hash match"
        },
        {
          "evaluation_id": 5,
          "field_name": "sep_eoc_scan_results.scan_result",
          "method": "contains",
          "type": null,
          "value": "Partial match"
        }
      ],
      "custom_condition": "1 AND 2 AND (3 OR 4 OR 5) AND 6 AND 7 AND 8 AND 9 AND 10",
      "enabled": true,
      "export_key": "Example: SEP - Remediate Artifact on Endpoint",
      "id": 832,
      "logic_type": "advanced",
      "message_destinations": [],
      "name": "Example: SEP - Remediate Artifact on Endpoint",
      "object_type": "sep_eoc_scan_results",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "f6b8c118-5e90-46d7-9c2c-cf2a1edf04cb",
      "view_items": [
        {
          "content": "ae1f0703-db0f-469b-a08c-8783d5aaf338",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "wf_sep_remediate_artifact_on_endpoint"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.computerName",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.endpoint_quarantine_status",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.endpoint_quarantine_status",
          "method": "not_contains",
          "type": null,
          "value": "Un-Quarantined"
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.quarantine_command_state",
          "method": "not_contains",
          "type": null,
          "value": "In progress"
        },
        {
          "evaluation_id": null,
          "field_name": "sep_endpoint_details.uniqueId",
          "method": "has_a_value",
          "type": null,
          "value": null
        }
      ],
      "enabled": true,
      "export_key": "Example: SEP - Un-Quarantine Endpoint",
      "id": 833,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: SEP - Un-Quarantine Endpoint",
      "object_type": "sep_endpoint_details",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "569d2855-6956-4dd5-bd59-318fcf7f9a8e",
      "view_items": [],
      "workflows": [
        "wf_sep_quarantine_endpoint"
      ]
    },
    {
      "automations": [],
      "conditions": [
        {
          "evaluation_id": 6,
          "field_name": "sep_eoc_scan_results.file_upload_status",
          "method": "not_contains",
          "type": null,
          "value": "In progress"
        },
        {
          "evaluation_id": 7,
          "field_name": "sep_eoc_scan_results.file_upload_status",
          "method": "not_contains",
          "type": null,
          "value": "Completed"
        },
        {
          "evaluation_id": 2,
          "field_name": "sep_eoc_scan_results.scan_command_state",
          "method": "contains",
          "type": null,
          "value": "Completed"
        },
        {
          "evaluation_id": 1,
          "field_name": "sep_eoc_scan_results.scan_commandid",
          "method": "has_a_value",
          "type": null,
          "value": null
        },
        {
          "evaluation_id": 3,
          "field_name": "sep_eoc_scan_results.scan_result",
          "method": "contains",
          "type": null,
          "value": "Full match"
        },
        {
          "evaluation_id": 4,
          "field_name": "sep_eoc_scan_results.scan_result",
          "method": "contains",
          "type": null,
          "value": "Hash match"
        },
        {
          "evaluation_id": 5,
          "field_name": "sep_eoc_scan_results.scan_result",
          "method": "contains",
          "type": null,
          "value": "Partial match"
        }
      ],
      "custom_condition": "1 AND 2 AND (3 OR 4 OR 5) AND 6 AND 7",
      "enabled": true,
      "export_key": "Example: SEP - Upload file to SEPM server",
      "id": 834,
      "logic_type": "advanced",
      "message_destinations": [],
      "name": "Example: SEP - Upload file to SEPM server",
      "object_type": "sep_eoc_scan_results",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "abc7bd33-4d8c-4a4a-a28a-786421c9e21d",
      "view_items": [
        {
          "content": "87d868be-0433-4e3a-b116-2563aacc567f",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "wf_sep_upload_file_to_sepm"
      ]
    }
  ],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1668006441192,
  "export_format_version": 2,
  "export_type": null,
  "fields": [
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_computer_ids",
      "hide_notification": false,
      "id": 3079,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_computer_ids",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_computer_ids",
      "tooltip": "The list of computer ids on which to run the SEP command.",
      "type_id": 11,
      "uuid": "9074e6ef-2fe5-42b4-a9d2-b11ad9f0988d",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_os",
      "hide_notification": false,
      "id": 3093,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_os",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_os",
      "tooltip": "The list of OS to filter. Possible values are CentOs, Debian, Fedora, MacOSX, Oracle, OSX, RedHat, SUSE, Ubuntu, Win10, Win2K, Win7, Win8, WinEmb7, WinEmb8, WinEmb81, WinFundamental, WinNT, Win2K3, Win2K8, Win2K8R2, WinVista, WinXP, WinXPEmb, WinXPProf64",
      "type_id": 11,
      "uuid": "91b1265c-1c84-4ce0-8cbe-134a47c5642b",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_md5",
      "hide_notification": false,
      "id": 3102,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_md5",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_md5",
      "tooltip": "The MD5 hash value of the suspicious file.",
      "type_id": 11,
      "uuid": "99571be1-1b68-40c3-9a09-4b74a0de2064",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_order",
      "hide_notification": false,
      "id": 3071,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_order",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_order",
      "tooltip": "Specifies whether the results are in ascending order (ASC) or descending order (DESC).",
      "type_id": 11,
      "uuid": "9a14c89d-e869-4ad1-9c0c-c27a24ec8ea5",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_sha1",
      "hide_notification": false,
      "id": 3094,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_sha1",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_sha1",
      "tooltip": "The SHA1 hash value of the suspicious file.",
      "type_id": 11,
      "uuid": "9ced4015-3ccc-439e-b4fb-839bcdd0b284",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_source",
      "hide_notification": false,
      "id": 3081,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_source",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_source",
      "tooltip": "The file source from where to search for the suspicious file. Possible values are: FILESYSTEM (default), QUARANTINE, or BOTH. ",
      "type_id": 11,
      "uuid": "ab4969c6-75d1-4c07-a3e0-ba231443e57b",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_status",
      "hide_notification": false,
      "id": 3078,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "sep_status",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_status",
      "tooltip": "Get overall status for endpoints.",
      "type_id": 11,
      "uuid": "afaec424-30d3-4993-91cc-64500d9b1e5f",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_group_ids",
      "hide_notification": false,
      "id": 3076,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_group_ids",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_group_ids",
      "tooltip": "The list of groups on which to run the SEP command.",
      "type_id": 11,
      "uuid": "b304766d-cbda-4c8e-85de-27c4e16e082a",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_scan_type",
      "hide_notification": false,
      "id": 3099,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "sep_scan_type",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_scan_type",
      "tooltip": "The SEP eoc scan type. Possible values are:  FULL_SCAN and QUICK_SCAN.",
      "type_id": 11,
      "uuid": "cb92fbc0-79a0-48fe-b048-8c62ef5ea42f",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "FULL_SCAN",
          "properties": null,
          "uuid": "810db651-8a47-4931-a4b4-1e579d08088d",
          "value": 3270
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "QUICK_SCAN",
          "properties": null,
          "uuid": "8f3dd10a-b0d1-485f-9f5d-fd9b1df72664",
          "value": 3271
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_status_details",
      "hide_notification": false,
      "id": 3092,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "sep_status_details",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_status_details",
      "tooltip": "Get endpoints status details.",
      "type_id": 11,
      "uuid": "cfb2dcae-ae42-42e2-b6a0-861488911e6a",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_pageindex",
      "hide_notification": false,
      "id": 3069,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "sep_pageindex",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_pageindex",
      "tooltip": "The index page that is used for the returned results. The default page index is 1.",
      "type_id": 11,
      "uuid": "dbaed19c-7901-4833-96e4-762c2cdcbad8",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_status_type",
      "hide_notification": false,
      "id": 3073,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_status_type",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_status_type",
      "tooltip": "The type of command status requested.",
      "type_id": 11,
      "uuid": "de729d7a-746e-4c45-bc79-10dfb72b9cbe",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_description",
      "hide_notification": false,
      "id": 3068,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_description",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_description",
      "tooltip": "The SEP object (e.g. scan) description.",
      "type_id": 11,
      "uuid": "e767ad45-ffd2-4b73-a9ef-d3d2d4d3f5a7",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_undo",
      "hide_notification": false,
      "id": 3089,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "sep_undo",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_undo",
      "tooltip": "Boolean value, if set to true, will undo operation.",
      "type_id": 11,
      "uuid": "e89d2d89-78f2-4e35-b962-3da7fda86247",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_sha256",
      "hide_notification": false,
      "id": 3080,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_sha256",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_sha256",
      "tooltip": "The SHA256 hash value of the suspicious file.",
      "type_id": 11,
      "uuid": "ee3b03cf-bbc6-43d8-b2d8-2553b41c694b",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_file_id",
      "hide_notification": false,
      "id": 3090,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_file_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_file_id",
      "tooltip": "The file ID from which to get detailed information.",
      "type_id": 11,
      "uuid": "f5c6389c-d677-4da9-83f2-e05175fe1f6a",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_groupid",
      "hide_notification": false,
      "id": 3084,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_groupid",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_groupid",
      "tooltip": "Group id on which to run the SEP command.",
      "type_id": 11,
      "uuid": "0180b379-0327-4e2f-b8bc-4367275da5ea",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_hash_value",
      "hide_notification": false,
      "id": 3091,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_hash_value",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_hash_value",
      "tooltip": "The hash value. Can be MD5 or SHA256 hash value.",
      "type_id": 11,
      "uuid": "0331b6f9-bb16-4487-82ee-57267c852c15",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_sort",
      "hide_notification": false,
      "id": 3075,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_sort",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_sort",
      "tooltip": "The column by which the results are sorted. Possible values are COMPUTER_NAME (Default value), COMPUTER_ID, COMPUTER_DOMAIN_NAME, or DOMAIN_ID.",
      "type_id": 11,
      "uuid": "1242c5fd-9914-41e9-b557-6b40f8c63081",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_commandid",
      "hide_notification": false,
      "id": 3101,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_commandid",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_commandid",
      "tooltip": "Command id of SEP job.",
      "type_id": 11,
      "uuid": "163cbc38-29d4-43d3-b26a-06157ce46b4d",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_fingerprintlist_name",
      "hide_notification": false,
      "id": 3087,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_fingerprintlist_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_fingerprintlist_name",
      "tooltip": "Name of a SEP fingerprint list.",
      "type_id": 11,
      "uuid": "185d9c87-28d8-46a4-9e50-dbc73be88b59",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_domainid",
      "hide_notification": false,
      "id": 3082,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_domainid",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_domainid",
      "tooltip": "The SEPM domain id.",
      "type_id": 11,
      "uuid": "214b95e7-240a-4a9d-b8c5-686fc4953ef3",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_fullpathname",
      "hide_notification": false,
      "id": 3086,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_fullpathname",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_fullpathname",
      "tooltip": "The full path name of the group.",
      "type_id": 11,
      "uuid": "23db38b4-29a3-4c6b-818b-fa61944fd247",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_incident_id",
      "hide_notification": false,
      "id": 3074,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "sep_incident_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_incident_id",
      "tooltip": "The resilient incident id.",
      "type_id": 11,
      "uuid": "278ebe09-7fbe-4ac7-89fb-5332aa004e00",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_domain",
      "hide_notification": false,
      "id": 3097,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_domain",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_domain",
      "tooltip": "The SEPM domain.",
      "type_id": 11,
      "uuid": "3ca07027-92ca-4d00-a40e-9ced6a71beb1",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_file_path",
      "hide_notification": false,
      "id": 3100,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_file_path",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_file_path",
      "tooltip": "The file path of the suspect file.",
      "type_id": 11,
      "uuid": "478fdc18-25d8-4490-8513-f5d6fe9ab1ce",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_fingerprintlist_id",
      "hide_notification": false,
      "id": 3098,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_fingerprintlist_id",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_fingerprintlist_id",
      "tooltip": "Id of SEP fingerprint list",
      "type_id": 11,
      "uuid": "4878447f-eb7a-45b8-814a-0c7b753a8821",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_pagesize",
      "hide_notification": false,
      "id": 3070,
      "input_type": "number",
      "internal": false,
      "is_tracked": false,
      "name": "sep_pagesize",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_pagesize",
      "tooltip": "The number of results to include on each page. The default is 20.",
      "type_id": 11,
      "uuid": "51144f0c-ee7c-438f-a013-a5a0011f6e7b",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_scan_action",
      "hide_notification": false,
      "id": 3072,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "sep_scan_action",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_scan_action",
      "tooltip": "Action to be performed during a scan.",
      "type_id": 11,
      "uuid": "5b452d96-e040-46b3-ac15-828c9ffddbfa",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "remediate",
          "properties": null,
          "uuid": "93b82e92-6f87-431a-9c2a-9f5d0f2c621b",
          "value": 3269
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_scan_date",
      "hide_notification": false,
      "id": 3096,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_scan_date",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_scan_date",
      "tooltip": "Time when scan was initiated",
      "type_id": 11,
      "uuid": "6067c5a3-b7b6-4d18-ac4e-6405527a3cae",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_matching_endpoint_ids",
      "hide_notification": false,
      "id": 3088,
      "input_type": "boolean",
      "internal": false,
      "is_tracked": false,
      "name": "sep_matching_endpoint_ids",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_matching_endpoint_ids",
      "tooltip": "Get list of matching endpoints.",
      "type_id": 11,
      "uuid": "6c5b30ca-ab45-46c7-a3c9-2ffea2e7da4e",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_lastupdate",
      "hide_notification": false,
      "id": 3077,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_lastupdate",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_lastupdate",
      "tooltip": "Indicates when a computer last updated its status. The default value of 0 gets all the results.",
      "type_id": 11,
      "uuid": "71dc61c4-fc52-4972-aec8-ec4c18b4c952",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_mode",
      "hide_notification": false,
      "id": 3083,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_mode",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_mode",
      "tooltip": "The presentation mode for the results, as a list (default) or as a tree.",
      "type_id": 11,
      "uuid": "73d836fd-30b0-4600-86e5-39b615ea8732",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_computername",
      "hide_notification": false,
      "id": 3085,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_computername",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_computername",
      "tooltip": "The host name of computer. Wild card is supported as \u0027*\u0027.",
      "type_id": 11,
      "uuid": "797b8c43-78ae-45ab-af45-83f158801dd0",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/sep_hardwarekey",
      "hide_notification": false,
      "id": 3095,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "sep_hardwarekey",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_hardwarekey",
      "tooltip": "Hardware key of SEP computer.",
      "type_id": 11,
      "uuid": "7b7b35d0-a958-46e5-9c58-919f31a24aa7",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/sep_source",
      "hide_notification": false,
      "id": 3061,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "sep_source",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "sep_source",
      "tooltip": "The file source from where to search for the suspicious file. Possible values are: FILESYSTEM (default), QUARANTINE, or BOTH.",
      "type_id": 6,
      "uuid": "87d868be-0433-4e3a-b116-2563aacc567f",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "FILESYSTEM",
          "properties": null,
          "uuid": "d8b5096b-46e5-426e-bda0-aa59c60e1f81",
          "value": 3252
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "QUARANTINE",
          "properties": null,
          "uuid": "81873541-81a6-497d-af11-6ebc05358ae3",
          "value": 3253
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "BOTH",
          "properties": null,
          "uuid": "c45efbf7-988a-4238-a13b-ea7865a1e454",
          "value": 3254
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/sep_target_endpoints",
      "hide_notification": false,
      "id": 3065,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "sep_target_endpoints",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "Target endpoints",
      "tooltip": "Select current endpoint or all endpoints as  action target.",
      "type_id": 6,
      "uuid": "ae1f0703-db0f-469b-a08c-8783d5aaf338",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "Selected endpoint",
          "properties": null,
          "uuid": "3d242426-b4af-4005-a6d1-f52dce3b80d4",
          "value": 3263
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "All matching endpoints",
          "properties": null,
          "uuid": "9a2fcb4f-7e0c-4a8f-9203-2a68c12c0adb",
          "value": 3264
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/sep_scan_type",
      "hide_notification": false,
      "id": 3062,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "sep_scan_type",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "Scan type",
      "tooltip": "The SEP eoc scan type. Possible values are:  QUICK_SCAN and FULL_SCAN. A  FULL_SCAN evaluates all areas of the computer hard drive. A QUICK_SCAN only scans the important locations of your computer that the viruses and other security threats most often target.",
      "type_id": 6,
      "uuid": "cfae48d6-265a-4189-8841-0a2b6f2e1b15",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "QUICK_SCAN",
          "properties": null,
          "uuid": "1a2a7484-26bb-4c11-ae80-1a77f9a2483c",
          "value": 3255
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "FULL_SCAN",
          "properties": null,
          "uuid": "a1433c90-8d8b-4248-8258-4f697d7b7f74",
          "value": 3256
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/sep_domain_name",
      "hide_notification": false,
      "id": 3067,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "sep_domain_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "Domain name",
      "tooltip": "SEP domain name",
      "type_id": 6,
      "uuid": "d0fed156-328c-4bf0-ab0f-827aa9cacce4",
      "values": [
        {
          "default": true,
          "enabled": true,
          "hidden": false,
          "label": "Default",
          "properties": null,
          "uuid": "2b55ad7d-41aa-4a0e-ae55-c0c4e25e0a19",
          "value": 3268
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/sep_fingerprintlist_name",
      "hide_notification": false,
      "id": 3063,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "sep_fingerprintlist_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "Fingerprint list name",
      "tooltip": "Name of a SEP fingerprint list.",
      "type_id": 6,
      "uuid": "fa959307-b161-4b46-85b5-24db4c44ce5c",
      "values": [
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "Blacklist",
          "properties": null,
          "uuid": "d3c29d9a-7f3b-4d64-b9fe-a9e5d31d0764",
          "value": 3257
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/sep_fullpathname",
      "hide_notification": false,
      "id": 3064,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "sep_fullpathname",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "Group Full path name",
      "tooltip": "The full path name of the group.",
      "type_id": 6,
      "uuid": "3971a704-6061-4134-a8d9-ace22ee8a971",
      "values": [
        {
          "default": false,
          "enabled": false,
          "hidden": false,
          "label": "My Company\\JP_QUARANTINE_GROUP",
          "properties": null,
          "uuid": "9150d769-a74a-414a-b405-81ec6bd48c1d",
          "value": 3258
        },
        {
          "default": false,
          "enabled": false,
          "hidden": false,
          "label": "My Company\\TEST_GROUP_1",
          "properties": null,
          "uuid": "16aaf071-0e8a-4462-98c8-3b730ceabe19",
          "value": 3259
        },
        {
          "default": false,
          "enabled": false,
          "hidden": false,
          "label": "My Company\\QUARANTINE_GROUP",
          "properties": null,
          "uuid": "55071776-863f-4be6-8b17-7594f82b20e2",
          "value": 3260
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "My Company",
          "properties": null,
          "uuid": "a7de732c-062c-4e3e-a785-070d561b90a3",
          "value": 3261
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "My Company\\Default Group",
          "properties": null,
          "uuid": "bb283ce3-384d-470d-8361-dc7917b4c100",
          "value": 3262
        }
      ]
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/sep_artifact_type_scan_results",
      "hide_notification": false,
      "id": 3066,
      "input_type": "select",
      "internal": false,
      "is_tracked": false,
      "name": "sep_artifact_type_scan_results",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "templates": [],
      "text": "Artifact type - scan results",
      "tooltip": "Resilient artifact types.",
      "type_id": 6,
      "uuid": "4e62b9fe-fe72-4496-a885-b03884061bac",
      "values": [
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "Malware SHA-256 Hash",
          "properties": null,
          "uuid": "70052397-ca00-495f-bb75-15455e83881c",
          "value": 3265
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "System Name",
          "properties": null,
          "uuid": "814b9fae-fa78-40ab-993c-51f8179c470e",
          "value": 3266
        },
        {
          "default": false,
          "enabled": true,
          "hidden": false,
          "label": "File Path",
          "properties": null,
          "uuid": "57403861-7a23-4003-8d28-b92795f30017",
          "value": 3267
        }
      ]
    },
    {
      "export_key": "incident/internal_customizations_field",
      "id": 0,
      "input_type": "text",
      "internal": true,
      "name": "internal_customizations_field",
      "read_only": true,
      "text": "Customizations Field (internal)",
      "type_id": 0,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa1"
    }
  ],
  "functions": [
    {
      "created_date": 1668002329986,
      "description": {
        "content": "Add an MD5 hash to a new fingerprint list. \nNote: Currently only supports MD5 hash type.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Add Fingerprint List",
      "export_key": "fn_sep_add_fingerprint_list",
      "id": 306,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002330197,
      "name": "fn_sep_add_fingerprint_list",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "d4b5ee5d-10b2-4935-a650-f1516acfc691",
      "version": 1,
      "view_items": [
        {
          "content": "185d9c87-28d8-46a4-9e50-dbc73be88b59",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "e767ad45-ffd2-4b73-a9ef-d3d2d4d3f5a7",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "214b95e7-240a-4a9d-b8c5-686fc4953ef3",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "0331b6f9-bb16-4487-82ee-57267c852c15",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Add Hash to Blacklist",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_add_fingerprint_list",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 419
        }
      ]
    },
    {
      "created_date": 1668002330289,
      "description": {
        "content": "Assign a fingerprint list to a group for lock-down.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Assign Fingerprint List to Group",
      "export_key": "fn_sep_assign_fingerprint_list_to_group",
      "id": 307,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002330496,
      "name": "fn_sep_assign_fingerprint_list_to_group",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "edb1beff-d01c-4334-aeb6-45d9a65831d4",
      "version": 1,
      "view_items": [
        {
          "content": "0180b379-0327-4e2f-b8bc-4367275da5ea",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "4878447f-eb7a-45b8-814a-0c7b753a8821",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Assign Blacklist to lockdown group",
          "object_type": "sep_groups",
          "programmatic_name": "wf_sep_assign_fingerprint_list_to_lockdown_group",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 416
        }
      ]
    },
    {
      "created_date": 1668002330582,
      "description": {
        "content": "Delete  a  fingerprint list.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Delete Fingerprint List",
      "export_key": "fn_sep_delete_fingerprint_list",
      "id": 308,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002330792,
      "name": "fn_sep_delete_fingerprint_list",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "e710d302-1010-4994-a02c-87377bfde59e",
      "version": 1,
      "view_items": [
        {
          "content": "4878447f-eb7a-45b8-814a-0c7b753a8821",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Delete Blacklist",
          "object_type": "sep_fingerprint_lists",
          "programmatic_name": "wf_sep_delete_fingerprint_list",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 428
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Delete Hash from Blacklist",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_delete_hash_from_fingerprint_list",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 418
        }
      ]
    },
    {
      "created_date": 1668002330880,
      "description": {
        "content": "Gets the details of a command status from a command id.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Get Command Status",
      "export_key": "fn_sep_get_command_status",
      "id": 309,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002331086,
      "name": "fn_sep_get_command_status",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "b29ec053-be35-4311-9d8f-1b6275664c0d",
      "version": 1,
      "view_items": [
        {
          "content": "6067c5a3-b7b6-4d18-ac4e-6405527a3cae",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "278ebe09-7fbe-4ac7-89fb-5332aa004e00",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "163cbc38-29d4-43d3-b26a-06157ce46b4d",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9a14c89d-e869-4ad1-9c0c-c27a24ec8ea5",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "dbaed19c-7901-4833-96e4-762c2cdcbad8",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "51144f0c-ee7c-438f-a013-a5a0011f6e7b",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "1242c5fd-9914-41e9-b557-6b40f8c63081",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "de729d7a-746e-4c45-bc79-10dfb72b9cbe",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "6c5b30ca-ab45-46c7-a3c9-2ffea2e7da4e",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Quarantine status",
          "object_type": "sep_endpoint_details",
          "programmatic_name": "wf_sep_get_quarantine_status",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 410
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Remediation status",
          "object_type": "sep_eoc_scan_results",
          "programmatic_name": "wf_sep_get_remediation_status",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 422
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Scan results",
          "object_type": "sep_eoc_scan_results",
          "programmatic_name": "wf_sep_get_scan_results",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 429
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Upload status",
          "object_type": "sep_eoc_scan_results",
          "programmatic_name": "wf_sep_get_upload_status",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 424
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Initiate EOC Scan for Artifact",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_initiate_eoc_scan_for_artifact",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 411
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Quarantine Endpoint",
          "object_type": "sep_endpoint_details",
          "programmatic_name": "wf_sep_quarantine_endpoint",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 412
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Remediate Artifact on Endpoint",
          "object_type": "sep_eoc_scan_results",
          "programmatic_name": "wf_sep_remediate_artifact_on_endpoint",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 427
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Upload file to SEPM server",
          "object_type": "sep_eoc_scan_results",
          "programmatic_name": "wf_sep_upload_file_to_sepm",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 426
        }
      ]
    },
    {
      "created_date": 1668002331168,
      "description": {
        "content": "Gets the information about the computers in a specified domain.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Get Computers",
      "export_key": "fn_sep_get_computers",
      "id": 310,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002331375,
      "name": "fn_sep_get_computers",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "91343444-7a62-4f7f-9812-918531b6bf10",
      "version": 1,
      "view_items": [
        {
          "content": "797b8c43-78ae-45ab-af45-83f158801dd0",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "afaec424-30d3-4993-91cc-64500d9b1e5f",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "cfb2dcae-ae42-42e2-b6a0-861488911e6a",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "3ca07027-92ca-4d00-a40e-9ced6a71beb1",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "71dc61c4-fc52-4972-aec8-ec4c18b4c952",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9a14c89d-e869-4ad1-9c0c-c27a24ec8ea5",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "91b1265c-1c84-4ce0-8cbe-134a47c5642b",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "dbaed19c-7901-4833-96e4-762c2cdcbad8",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "51144f0c-ee7c-438f-a013-a5a0011f6e7b",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "1242c5fd-9914-41e9-b557-6b40f8c63081",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "6c5b30ca-ab45-46c7-a3c9-2ffea2e7da4e",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Endpoint Details",
          "object_type": "sep_eoc_scan_results",
          "programmatic_name": "wf_sep_get_endpoint_details",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 414
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Endpoint Details for artifact",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_get_endpoint_details_for_artifact",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 425
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Endpoints status summary",
          "object_type": "incident",
          "programmatic_name": "wf_sep_get_endpoints_status",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 420
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Endpoints status summary (refresh)",
          "object_type": "sep_endpoint_status_summary",
          "programmatic_name": "wf_sep_get_endpoints_status_refresh",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 421
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Non-Compliant Endpoints status details",
          "object_type": "sep_endpoint_status_summary",
          "programmatic_name": "wf_sep_get_endpoints_status_details",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 430
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Quarantine status",
          "object_type": "sep_endpoint_details",
          "programmatic_name": "wf_sep_get_quarantine_status",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 410
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Initiate EOC Scan for Artifact",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_initiate_eoc_scan_for_artifact",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 411
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Quarantine Endpoint",
          "object_type": "sep_endpoint_details",
          "programmatic_name": "wf_sep_quarantine_endpoint",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 412
        }
      ]
    },
    {
      "created_date": 1668002331464,
      "description": {
        "content": "Gets a list of all accessible domains.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Get Domains",
      "export_key": "fn_sep_get_domains",
      "id": 311,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002331669,
      "name": "fn_sep_get_domains",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "a17245e2-ae90-46aa-ae44-cc0d37b8387c",
      "version": 1,
      "view_items": [],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Add Hash to Blacklist",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_add_fingerprint_list",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 419
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Delete Hash from Blacklist",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_delete_hash_from_fingerprint_list",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 418
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Blacklist information",
          "object_type": "incident",
          "programmatic_name": "wf_sep_get_blacklist_information",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 423
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Groups information",
          "object_type": "incident",
          "programmatic_name": "wf_sep_get_groups_information",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 413
        }
      ]
    },
    {
      "created_date": 1668002331754,
      "description": {
        "content": "Get contents of a file uploaded to SEPM server as a Base64 string for a given file ID.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Get File Content as Base64",
      "export_key": "fn_sep_get_file_content_as_base64",
      "id": 312,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002331998,
      "name": "fn_sep_get_file_content_as_base64",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "d3f9eb5b-969b-45aa-bb88-29c21c85fd04",
      "version": 1,
      "view_items": [
        {
          "content": "f5c6389c-d677-4da9-83f2-e05175fe1f6a",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get File Content as Base64 string",
          "object_type": "sep_eoc_scan_results",
          "programmatic_name": "wf_sep_get_file_content_as_base64_string",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 417
        }
      ]
    },
    {
      "created_date": 1668002332084,
      "description": {
        "content": "Get the fingerprint list information for a specified name or id.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Get Fingerprint List",
      "export_key": "fn_sep_get_fingerprint_list",
      "id": 313,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002332319,
      "name": "fn_sep_get_fingerprint_list",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "e3e94d0c-e2c9-4f76-9e41-6878e718e8de",
      "version": 1,
      "view_items": [
        {
          "content": "214b95e7-240a-4a9d-b8c5-686fc4953ef3",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "4878447f-eb7a-45b8-814a-0c7b753a8821",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "185d9c87-28d8-46a4-9e50-dbc73be88b59",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Add Hash to Blacklist",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_add_fingerprint_list",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 419
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Assign Blacklist to lockdown group",
          "object_type": "sep_groups",
          "programmatic_name": "wf_sep_assign_fingerprint_list_to_lockdown_group",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 416
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Delete Hash from Blacklist",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_delete_hash_from_fingerprint_list",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 418
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Blacklist information",
          "object_type": "incident",
          "programmatic_name": "wf_sep_get_blacklist_information",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 423
        }
      ]
    },
    {
      "created_date": 1668002332414,
      "description": {
        "content": "Get properties of all groups in a domain.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Get Groups",
      "export_key": "fn_sep_get_groups",
      "id": 314,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002332624,
      "name": "fn_sep_get_groups",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "da72c4a8-45c1-4633-9d18-9ef6bd03dae9",
      "version": 1,
      "view_items": [
        {
          "content": "3ca07027-92ca-4d00-a40e-9ced6a71beb1",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "23db38b4-29a3-4c6b-818b-fa61944fd247",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "73d836fd-30b0-4600-86e5-39b615ea8732",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "dbaed19c-7901-4833-96e4-762c2cdcbad8",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "51144f0c-ee7c-438f-a013-a5a0011f6e7b",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9a14c89d-e869-4ad1-9c0c-c27a24ec8ea5",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "1242c5fd-9914-41e9-b557-6b40f8c63081",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Get Groups information",
          "object_type": "incident",
          "programmatic_name": "wf_sep_get_groups_information",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 413
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Move Endpoint",
          "object_type": "sep_endpoint_details",
          "programmatic_name": "wf_sep_move_endpoint",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 415
        }
      ]
    },
    {
      "created_date": 1668002332703,
      "description": {
        "content": "Check for and move an endpoint to a different group.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Move endpoint",
      "export_key": "fn_sep_move_endpoint",
      "id": 315,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002332897,
      "name": "fn_sep_move_endpoint",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "eda382b3-ec2c-4c42-ba90-643cd22349dc",
      "version": 1,
      "view_items": [
        {
          "content": "0180b379-0327-4e2f-b8bc-4367275da5ea",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "7b7b35d0-a958-46e5-9c58-919f31a24aa7",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Move Endpoint",
          "object_type": "sep_endpoint_details",
          "programmatic_name": "wf_sep_move_endpoint",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 415
        }
      ]
    },
    {
      "created_date": 1668002332975,
      "description": {
        "content": "Quarantine/un-quarantine Symantec Endpoint Protection endpoints. The function will add or remove endpoints to or from network quarantine.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Quarantine Endpoints",
      "export_key": "fn_sep_quarantine_endpoints",
      "id": 316,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002333169,
      "name": "fn_sep_quarantine_endpoints",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "ce358d79-cdf9-49d8-a94c-89d838f51197",
      "version": 1,
      "view_items": [
        {
          "content": "9074e6ef-2fe5-42b4-a9d2-b11ad9f0988d",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "b304766d-cbda-4c8e-85de-27c4e16e082a",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "e89d2d89-78f2-4e35-b962-3da7fda86247",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Quarantine Endpoint",
          "object_type": "sep_endpoint_details",
          "programmatic_name": "wf_sep_quarantine_endpoint",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 412
        }
      ]
    },
    {
      "created_date": 1668002333246,
      "description": {
        "content": "Initiates an Evidence of Compromise (EOC) scan  of an artifact value  against  a list of endpoints or groups. The function can also be used to complete a remediation (quarantine) scan action  for hash value (MD5, SHA1 or SHA256).",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Scan Endpoints",
      "export_key": "fn_sep_scan_endpoints",
      "id": 317,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002333438,
      "name": "fn_sep_scan_endpoints",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "cc7fd805-db7a-4c37-aa0e-29ffd1752eec",
      "version": 1,
      "view_items": [
        {
          "content": "b304766d-cbda-4c8e-85de-27c4e16e082a",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9074e6ef-2fe5-42b4-a9d2-b11ad9f0988d",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "cb92fbc0-79a0-48fe-b048-8c62ef5ea42f",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "478fdc18-25d8-4490-8513-f5d6fe9ab1ce",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "ee3b03cf-bbc6-43d8-b2d8-2553b41c694b",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9ced4015-3ccc-439e-b4fb-839bcdd0b284",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "99571be1-1b68-40c3-9a09-4b74a0de2064",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "e767ad45-ffd2-4b73-a9ef-d3d2d4d3f5a7",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "5b452d96-e040-46b3-ac15-828c9ffddbfa",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Initiate EOC Scan for Artifact",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_initiate_eoc_scan_for_artifact",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 411
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Remediate Artifact on Endpoint",
          "object_type": "sep_eoc_scan_results",
          "programmatic_name": "wf_sep_remediate_artifact_on_endpoint",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 427
        }
      ]
    },
    {
      "created_date": 1668002333515,
      "description": {
        "content": "Updates an existing fingerprint list with a set of hash values. \nNote: Currently only supports MD5 hash type.",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Update Fingerprint List",
      "export_key": "fn_sep_update_fingerprint_list",
      "id": 318,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002333709,
      "name": "fn_sep_update_fingerprint_list",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "86fbaf45-bb0f-4ba0-a988-cc603d315e49",
      "version": 1,
      "view_items": [
        {
          "content": "185d9c87-28d8-46a4-9e50-dbc73be88b59",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "4878447f-eb7a-45b8-814a-0c7b753a8821",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "e767ad45-ffd2-4b73-a9ef-d3d2d4d3f5a7",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "214b95e7-240a-4a9d-b8c5-686fc4953ef3",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "0331b6f9-bb16-4487-82ee-57267c852c15",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Add Hash to Blacklist",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_add_fingerprint_list",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 419
        },
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Delete Hash from Blacklist",
          "object_type": "artifact",
          "programmatic_name": "wf_sep_delete_hash_from_fingerprint_list",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 418
        }
      ]
    },
    {
      "created_date": 1668002333786,
      "description": {
        "content": "Upload a file from an endpoint back to the SEPM server.  \nNote: Only supports executable file types such as binary executable (.exe), batch (.bat), Windows installer package (.msi) etc. File source can be FILESYTEM, QUARANTINE or BOTH",
        "format": "text"
      },
      "destination_handle": "fn_sep",
      "display_name": "SEP - Upload File to SEPM",
      "export_key": "fn_sep_upload_file_to_sepm",
      "id": 319,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 8,
        "name": "a@example.com",
        "type": "user"
      },
      "last_modified_time": 1668002333978,
      "name": "fn_sep_upload_file_to_sepm",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "a5fce4c1-b595-47b0-bfa0-781b802cba59",
      "version": 1,
      "view_items": [
        {
          "content": "478fdc18-25d8-4490-8513-f5d6fe9ab1ce",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9074e6ef-2fe5-42b4-a9d2-b11ad9f0988d",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "ee3b03cf-bbc6-43d8-b2d8-2553b41c694b",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9ced4015-3ccc-439e-b4fb-839bcdd0b284",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "99571be1-1b68-40c3-9a09-4b74a0de2064",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "ab4969c6-75d1-4c07-a3e0-ba231443e57b",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Example: SEP - Upload file to SEPM server",
          "object_type": "sep_eoc_scan_results",
          "programmatic_name": "wf_sep_upload_file_to_sepm",
          "tags": [
            {
              "tag_handle": "fn_sep",
              "value": null
            }
          ],
          "uuid": null,
          "workflow_id": 426
        }
      ]
    }
  ],
  "geos": null,
  "groups": null,
  "id": 26,
  "inbound_destinations": [],
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1668006439015,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1668006439015,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ],
  "industries": null,
  "layouts": [],
  "locale": null,
  "message_destinations": [
    {
      "api_keys": [
        "3f6feee7-fc7f-40f3-8222-0323a3aae5ab"
      ],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "fn_sep",
      "name": "fn_sep",
      "programmatic_name": "fn_sep",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "users": [],
      "uuid": "88199d49-9dff-44d1-84ce-c1e502b91496"
    }
  ],
  "notifications": null,
  "overrides": [],
  "phases": [],
  "playbooks": null,
  "regulators": null,
  "roles": [],
  "scripts": [
    {
      "actions": [],
      "created_date": 1668002322882,
      "description": "Script for Symantec SEP to add a Resilient artifact from a property of the \u0027Symantec SEP - EOC scan results\u0027 data-table.\nThe supported artifact types supported are: \"File Path\", \"Malware SHA-256 Hash\" and \"System Name\".",
      "enabled": false,
      "export_key": "scr_sep_add_artifact_from_scan_results",
      "id": 311,
      "language": "python",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002322992,
      "name": "scr_sep_add_artifact_from_scan_results",
      "object_type": "sep_eoc_scan_results",
      "playbook_handle": null,
      "programmatic_name": "scr_sep_add_artifact_from_scan_results",
      "script_text": "# Create a Resilient artifact based on a dropdown which selects the corresponding data-table field.\nARTIFACT_TYPE = rule.properties.sep_artifact_type_scan_results\nFUNCTION_NAME = \"fn_sep_scan_endpoints\"\n\nPARAMS = {\n    \"Malware SHA-256 Hash\": row.hash_value,\n    \"System Name\": row.computer_name,\n    \"File Path\": row.file_path\n}\n\n\ndef addArtifact(artifact_type, artifact_value, description):\n    \"\"\"This method adds new artifacts to the incident derived from matches of the the regular expression\n\n    :param artifact_type: The type of the artifact.\n    :param artifact_value: - The value of the artifact.\n    :param description: - the description of the artifact.\n    \"\"\"\n    incident.addArtifact(artifact_type, artifact_value, description)\n\n\ndef validate_fields(fields, params):\n    \"\"\"\n    Ensure required fields are present. Throw ValueError if not\n    :param fields: Required fields.\n    :param params: Data-table fields as parameters.\n    :return: no return\n    \"\"\"\n    for f in fields:\n        if f not in params or not params.get(f) or params.get(f) == \u0027\u0027:\n            raise ValueError(str(\u0027Required data-table field is missing or empty for artifact type: \u0027 + f))\n\n\ndef main():\n    desc = \u0027\u0027\n\n    validate_fields([\"System Name\", ARTIFACT_TYPE], PARAMS)\n\n    desc = u\"Detected by Symantec SEP Eoc Scan for artifact of type \u0027{0}\u0027 and value \u0027{1}\u0027 by function \" \\\n    \"\u0027{2}\u0027 for Symantec SEP.\".format(row.artifact_type, unicode(row.artifact_value), FUNCTION_NAME)\n    addArtifact(ARTIFACT_TYPE, PARAMS[ARTIFACT_TYPE], desc)\n\n\n# Script execution starts here\nif __name__ == \"__main__\":\n    main()",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "58c07c1d-64da-4b01-993f-20e827e9ba4f"
    },
    {
      "actions": [],
      "created_date": 1668002323110,
      "description": "Script for Symantec SEP to parse email notifications to generate incidents and artifacts.",
      "enabled": false,
      "export_key": "scr_sep_parse_email_notification",
      "id": 312,
      "language": "python",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002323233,
      "name": "scr_sep_parse_email_notification",
      "object_type": "__emailmessage",
      "playbook_handle": null,
      "programmatic_name": "scr_sep_parse_email_notification",
      "script_text": "# Symantec SEP email notification parsing script.\n# This is a a follow-on from the generic parsing script which is used specifically to parse for Symantec SEP notifications.\n\nimport re\n\n# Dict to capture suspicious file details to add to data-table.\nFILE_PATH_LIST = []\nCOMPUTER_NAME = \u0027\u0027\n\ndef add_artifact(artifact_type, artifact_value, description):\n    \"\"\" Add new artifacts to the incident.\n    :param artifact_type: The type of the artifact.\n    :param artifact_value: - The value of the artifact.\n    :param description: - the description of the artifact.\n    \"\"\"\n    incident.addArtifact(artifact_type, artifact_value, description)\n\ndef add_artifact_from_email(regex, artifact_type, description):\n    \"\"\"This method adds new artifacts to the incident derived from matches of the the regular expression\n    parameter within the email body contents.\n    :param regex: - A regular expression to match against the email body contents.\n    :param artifact_type: - The type of the artifact(s).\n    :param description: - The description of the artifact(s).\n    \"\"\"\n    global FILE_PATH_LIST, COMPUTER_NAME\n    data_list = []\n    if artifact_type == \"System Name\":\n        # Only extract 1st match found for \"Computer:\"\n        data = re.search(regex, emailmessage.body.content)\n        if data is not None:\n            add_artifact(artifact_type, data.group(1), description)\n            COMPUTER_NAME = data.group(1).strip()\n    else:\n        data_set = set(re.findall(regex, emailmessage.body.content))  # Using a set to enforce uniqueness\n        if data_set is not None and len(data_set) \u003e 0:\n            # Convert regex set to list\n            for d in data_set:\n                data_list.append(d.strip())\n            [add_artifact(artifact_type, artifact_value, description) for artifact_value in data_list]\n            if artifact_type == \"File Path\":\n                [FILE_PATH_LIST.append(fp) for fp in data_list]\n\n\n###\n# Mainline starts here\n###\ndef main():\n    # Add \"Phishing\" as an incident type for the associated incident\n    incident.incident_type_ids.append(\"Phishing\")\n\n    # Add the email sender information to the incident as the recipient of the Symantec SEP notification.\n    reportingUserInfo = emailmessage.from.address\n    if emailmessage.from.name is not None:\n        reportingUserInfo = u\"{0} \u003c{1}\u003e\".format(emailmessage.from.name,emailmessage.from.address)\n        incident.addArtifact(\"Email Recipient\", reportingUserInfo, \"Symantec SEP notification email reipient.\")\n        # Extract email sender information on the assumption that a fishing email is being forwarded\n    if emailmessage.body.content is not None:\n        add_artifact_from_email(r\"From: (.*)\\n\", \"Email Sender\", \"Symantec SEP notification  email sender.\")\n        add_artifact_from_email(r\"Reply-To: (.*)\\n\", \"Email Sender\", \"Symantec SEP notification email sender (Reply-To).\")\n        add_artifact_from_email(r\"File path: (.*)\\n\", \"File Path\", \"File path of suspicious file in SEP environment.\")\n        add_artifact_from_email(r\"Computer: (.*)\\n\", \"System Name\", \"Endpoint  with suspicious file in SEP environment.\")\n        add_artifact_from_email(r\"User: (.*)\\n\", \"User Account\", \"User account which had a suspicious file in SEP environment.\")\n        add_artifact_from_email(r\"IP Address: (.*)\\n\", \"IP Address\",\n                        \"IP address of Endpoint which had the suspicious file in SEP environment.\")\n        add_artifact_from_email(r\"Security alert: suspicious activity from (\\d{1,3}.\\d{1,3}.\\d{1,3}.\\d{1,3}) .*\", \"IP Address\",\n                                \"IP address with suspicious activity detected in SEP environment.\")\n    if FILE_PATH_LIST:\n        for fp in FILE_PATH_LIST:\n          file_name = fp.split(\"\\\\\")[-1] if \u0027\\\\\u0027 in fp else fp.split(\"/\")[-1]\n          add_artifact(\"File Name\", file_name, u\"File name of file path for suspicious file {} in SEP environment.\".format(unicode(fp)))\n# Script execution starts here\nmain()",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "05e72a31-43e3-4950-9552-11310a3a2816"
    }
  ],
  "server_version": {
    "build_number": 49,
    "major": 43,
    "minor": 1,
    "version": "43.1.49"
  },
  "tags": [],
  "task_order": [],
  "timeframes": null,
  "types": [
    {
      "actions": [],
      "display_name": "Symantec SEP - Endpoint details",
      "export_key": "sep_endpoint_details",
      "fields": {
        "computerName": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/computerName",
          "hide_notification": false,
          "id": 2988,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "computerName",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Computer name",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "929a15ce-dd74-4eed-8c53-24596ec5a27b",
          "values": [],
          "width": 126
        },
        "domain_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/domain_id",
          "hide_notification": false,
          "id": 2989,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "domain_id",
          "operation_perms": {},
          "operations": [],
          "order": 14,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP domain id",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "e4478fb5-2937-4894-af06-7c9c18d905bc",
          "values": [],
          "width": 39
        },
        "domain_name": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/domain_name",
          "hide_notification": false,
          "id": 2990,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "domain_name",
          "operation_perms": {},
          "operations": [],
          "order": 6,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP domain name",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "389c8bfc-05a3-40ca-9a04-3d2fd9dc9e82",
          "values": [],
          "width": 40
        },
        "endpoint_quarantine_status": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/endpoint_quarantine_status",
          "hide_notification": false,
          "id": 2991,
          "input_type": "textarea",
          "internal": false,
          "is_tracked": false,
          "name": "endpoint_quarantine_status",
          "operation_perms": {},
          "operations": [],
          "order": 10,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Endpoint quarantine status",
          "tooltip": "Quarantine status of an endpoint. Possible statuses are \u0027Un-Quarantined\u0027 and \u0027Quarantined\u0027. Note: Only applicable for MS Windows endpoints.",
          "type_id": 1134,
          "uuid": "ddd2e15a-1460-4f0e-a7cd-b884fb1d5175",
          "values": [],
          "width": 57
        },
        "group_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/group_id",
          "hide_notification": false,
          "id": 2992,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "group_id",
          "operation_perms": {},
          "operations": [],
          "order": 13,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP group id",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "72a4e915-5a51-4245-8825-ff65b12f346b",
          "values": [],
          "width": 30
        },
        "group_name": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/group_name",
          "hide_notification": false,
          "id": 2993,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "group_name",
          "operation_perms": {},
          "operations": [],
          "order": 7,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP group name",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "084b80de-6d3c-41ea-8c2d-b5064b5aeaa3",
          "values": [],
          "width": 32
        },
        "hardwareKey": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/hardwareKey",
          "hide_notification": false,
          "id": 2994,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "hardwareKey",
          "operation_perms": {},
          "operations": [],
          "order": 8,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Hardware key",
          "tooltip": "Hardware Key is the way to identify a client in SEP.",
          "type_id": 1134,
          "uuid": "bbab835d-28f6-4101-baca-610eab13df3d",
          "values": [],
          "width": 51
        },
        "infected": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/infected",
          "hide_notification": false,
          "id": 2995,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "infected",
          "operation_perms": {},
          "operations": [],
          "order": 5,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Infected",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "7d67b2e2-05de-46a9-9380-a76621293d44",
          "values": [],
          "width": 44
        },
        "ipAddresses": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/ipAddresses",
          "hide_notification": false,
          "id": 2996,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "ipAddresses",
          "operation_perms": {},
          "operations": [],
          "order": 3,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "IP addresses",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "1720988d-c5c3-4937-b0f6-59f01d9cdc5f",
          "values": [],
          "width": 149
        },
        "operatingSystem": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/operatingSystem",
          "hide_notification": false,
          "id": 2997,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "operatingSystem",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Operating system",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "8121e17e-115d-4fc3-977d-f7a008d39db4",
          "values": [],
          "width": 102
        },
        "quarantine_command_state": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/quarantine_command_state",
          "hide_notification": false,
          "id": 2998,
          "input_type": "textarea",
          "internal": false,
          "is_tracked": false,
          "name": "quarantine_command_state",
          "operation_perms": {},
          "operations": [],
          "order": 9,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Quarantine command state",
          "tooltip": "State of the quarantine command for a SEP command id.",
          "type_id": 1134,
          "uuid": "63bb2e21-50b1-4fec-9a3b-614c20c371dc",
          "values": [],
          "width": 58
        },
        "quarantine_commandid": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/quarantine_commandid",
          "hide_notification": false,
          "id": 2999,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "quarantine_commandid",
          "operation_perms": {},
          "operations": [],
          "order": 11,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP quarantine  command id",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "8373deb9-1a64-41aa-8309-3588edba0c59",
          "values": [],
          "width": 58
        },
        "query_execution_date": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/query_execution_date",
          "hide_notification": false,
          "id": 3000,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "query_execution_date",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Query execution date",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "f715fc71-d2b9-47eb-90f0-3a3984afc847",
          "values": [],
          "width": 113
        },
        "sep_description": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/sep_description",
          "hide_notification": false,
          "id": 3001,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "sep_description",
          "operation_perms": {},
          "operations": [],
          "order": 4,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Description",
          "tooltip": "Description of an endpoint in the SEP environment.",
          "type_id": 1134,
          "uuid": "48b8ba21-3d7a-4bad-bac1-06cce62b755c",
          "values": [],
          "width": 143
        },
        "uniqueId": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_details/uniqueId",
          "hide_notification": false,
          "id": 3002,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "uniqueId",
          "operation_perms": {},
          "operations": [],
          "order": 12,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP Computer id",
          "tooltip": "",
          "type_id": 1134,
          "uuid": "220f865e-968f-49fd-b4f6-7833a4631124",
          "values": [],
          "width": 51
        }
      },
      "for_actions": false,
      "for_custom_fields": false,
      "for_notifications": false,
      "for_workflows": false,
      "id": null,
      "parent_types": [
        "incident"
      ],
      "properties": {
        "can_create": false,
        "can_destroy": false,
        "for_who": []
      },
      "scripts": [],
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "type_id": 8,
      "type_name": "sep_endpoint_details",
      "uuid": "d38c1432-a44b-4f00-938e-a5eddd15d180"
    },
    {
      "actions": [],
      "display_name": "Symantec SEP - Non-compliant Endpoints status details",
      "export_key": "sep_endpoints_non_compliant_details",
      "fields": {
        "apOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/apOnOff",
          "hide_notification": false,
          "id": 3003,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "apOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 6,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Auto-protect engine",
          "tooltip": "Auto-protect engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "c47fdaef-142b-4b48-a4fa-64f928ee857f",
          "values": [],
          "width": 43
        },
        "avEngineOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/avEngineOnOff",
          "hide_notification": false,
          "id": 3004,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "avEngineOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 7,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Anti-Virus engine",
          "tooltip": "Anti-Virus engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "f7d0ef31-d4d2-4d49-853a-cc22c86fcf59",
          "values": [],
          "width": 77
        },
        "cidsBrowserFfOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/cidsBrowserFfOnOff",
          "hide_notification": false,
          "id": 3005,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "cidsBrowserFfOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 8,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Browser Intrustion Prevention - FireFox engine",
          "tooltip": "Browser Intrustion Prevention - FireFox engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "6793d391-5227-4fc0-99e7-700a79ca0dfa",
          "values": [],
          "width": 105
        },
        "cidsBrowserIeOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/cidsBrowserIeOnOff",
          "hide_notification": false,
          "id": 3006,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "cidsBrowserIeOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 9,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Browser Intrustion Prevention - IE engine",
          "tooltip": "Browser Intrustion Prevention - IE engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "46151939-5c7e-4148-9b46-769f534bc7fc",
          "values": [],
          "width": 105
        },
        "cidsDrvOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/cidsDrvOnOff",
          "hide_notification": false,
          "id": 3007,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "cidsDrvOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 10,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Client Intrusion Detection System engine",
          "tooltip": "Client Intrusion Detection System engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "1dc855ac-d41a-4136-bba1-5df2bfd1a840",
          "values": [],
          "width": 69
        },
        "computer_name": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/computer_name",
          "hide_notification": false,
          "id": 3008,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "computer_name",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Computer name",
          "tooltip": "",
          "type_id": 1135,
          "uuid": "672cb129-7be7-454e-99f2-11a53bb44ee4",
          "values": [],
          "width": 95
        },
        "daOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/daOnOff",
          "hide_notification": false,
          "id": 3009,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "daOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 11,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Download Insight engine",
          "tooltip": "Client Intrusion Detection System engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "1cce89a6-fc48-4225-8dd1-fed07364c7a2",
          "values": [],
          "width": 52
        },
        "elamOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/elamOnOff",
          "hide_notification": false,
          "id": 3010,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "elamOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 12,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Early Launch Antimalware engine",
          "tooltip": "Client Intrusion Detection System engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "336a8e6f-17b7-43a9-aed1-0072a137522f",
          "values": [],
          "width": 67
        },
        "firewallOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/firewallOnOff",
          "hide_notification": false,
          "id": 3011,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "firewallOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 13,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Firewall engine",
          "tooltip": "Client Intrusion Detection System engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "6b5ab73b-ed10-4baf-8e87-7bdbde1e1ab0",
          "values": [],
          "width": 70
        },
        "host_integrity_check": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/host_integrity_check",
          "hide_notification": false,
          "id": 3012,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "host_integrity_check",
          "operation_perms": {},
          "operations": [],
          "order": 3,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Host integrity check status",
          "tooltip": "Status of Host Integrity check.  Possible values are \u0027Passed\u0027 and  \u0027Failed\u0027.",
          "type_id": 1135,
          "uuid": "79dafc67-c989-47a5-b7ef-5ec40e63c754",
          "values": [],
          "width": 110
        },
        "onlineStatus": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/onlineStatus",
          "hide_notification": false,
          "id": 3013,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "onlineStatus",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Online status",
          "tooltip": "",
          "type_id": 1135,
          "uuid": "496d5b9e-21a8-4b70-a016-6aa97df8f0f6",
          "values": [],
          "width": 68
        },
        "pepOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/pepOnOff",
          "hide_notification": false,
          "id": 3014,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "pepOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 14,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Proactive Exploit Protection engine",
          "tooltip": "Client Intrusion Detection System engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "ad01f35b-ada1-4868-8ef6-a8b1791455f8",
          "values": [],
          "width": 54
        },
        "ptpOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/ptpOnOff",
          "hide_notification": false,
          "id": 3015,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "ptpOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 15,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Proactive Threat Protection engine",
          "tooltip": "Client Intrusion Detection System engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "bb77c2e0-4629-49c6-8dc0-a4e052b133d9",
          "values": [],
          "width": 54
        },
        "query_execution_date": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/query_execution_date",
          "hide_notification": false,
          "id": 3016,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "query_execution_date",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Query execution date",
          "tooltip": "",
          "type_id": 1135,
          "uuid": "405b818c-c161-4103-affe-a4bba1ff653e",
          "values": [],
          "width": 126
        },
        "readableLastScanTime": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/readableLastScanTime",
          "hide_notification": false,
          "id": 3017,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "readableLastScanTime",
          "operation_perms": {},
          "operations": [],
          "order": 5,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Last Scan Time",
          "tooltip": "Last time the ednpoint performed a scan.",
          "type_id": 1135,
          "uuid": "0cb3ab72-4a09-4ef2-8823-decf6f2f2faa",
          "values": [],
          "width": 82
        },
        "readableLastUpdateTime": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/readableLastUpdateTime",
          "hide_notification": false,
          "id": 3018,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "readableLastUpdateTime",
          "operation_perms": {},
          "operations": [],
          "order": 4,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Last update time",
          "tooltip": "Last time Endpoint sent an update to the SEPM server.",
          "type_id": 1135,
          "uuid": "bafd7d35-96cb-491f-bf6c-f5b74db7d71e",
          "values": [],
          "width": 82
        },
        "tamperOnOff": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoints_non_compliant_details/tamperOnOff",
          "hide_notification": false,
          "id": 3019,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "tamperOnOff",
          "operation_perms": {},
          "operations": [],
          "order": 16,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Tamper protection engine",
          "tooltip": "Client Intrusion Detection System engine - status on an endpoint.",
          "type_id": 1135,
          "uuid": "6cef5021-b145-493b-ae73-bb9ee6c2df9b",
          "values": [],
          "width": 68
        }
      },
      "for_actions": false,
      "for_custom_fields": false,
      "for_notifications": false,
      "for_workflows": false,
      "id": null,
      "parent_types": [
        "incident"
      ],
      "properties": {
        "can_create": false,
        "can_destroy": false,
        "for_who": []
      },
      "scripts": [],
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "type_id": 8,
      "type_name": "sep_endpoints_non_compliant_details",
      "uuid": "5b9d28cf-e9a1-4e0f-8826-19255125f69d"
    },
    {
      "actions": [],
      "display_name": "Symantec SEP - Endpoint status summary",
      "export_key": "sep_endpoint_status_summary",
      "fields": {
        "disabled": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_status_summary/disabled",
          "hide_notification": false,
          "id": 3020,
          "input_type": "number",
          "internal": false,
          "is_tracked": false,
          "name": "disabled",
          "operation_perms": {},
          "operations": [],
          "order": 6,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Disabled",
          "tooltip": "Count of endpoints on which at least one of the main Symantec SEP engines are disabled.",
          "type_id": 1136,
          "uuid": "1feabb04-7afc-4a19-a130-14aea7522a03",
          "values": [],
          "width": 81
        },
        "hi_failed": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_status_summary/hi_failed",
          "hide_notification": false,
          "id": 3021,
          "input_type": "number",
          "internal": false,
          "is_tracked": false,
          "name": "hi_failed",
          "operation_perms": {},
          "operations": [],
          "order": 7,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Host integrity failed",
          "tooltip": "Count of endpoints where Host Integrity check has failed.",
          "type_id": 1136,
          "uuid": "360b8137-60ac-4bce-a610-192cb19ebd71",
          "values": [],
          "width": 132
        },
        "non_compliant": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_status_summary/non_compliant",
          "hide_notification": false,
          "id": 3022,
          "input_type": "number",
          "internal": false,
          "is_tracked": false,
          "name": "non_compliant",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Non compliant",
          "tooltip": "Total count of non-compliant endpoints in the Symantec SEP environment. ",
          "type_id": 1136,
          "uuid": "be1cd774-3c15-4c94-9bed-9de6dd76ea71",
          "values": [],
          "width": 52
        },
        "offline": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_status_summary/offline",
          "hide_notification": false,
          "id": 3023,
          "input_type": "number",
          "internal": false,
          "is_tracked": false,
          "name": "offline",
          "operation_perms": {},
          "operations": [],
          "order": 5,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Offline",
          "tooltip": "Count of offline endpoints.",
          "type_id": 1136,
          "uuid": "bd09465e-3859-42d0-8095-fab7a0d8da69",
          "values": [],
          "width": 41
        },
        "out_of_date": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_status_summary/out_of_date",
          "hide_notification": false,
          "id": 3024,
          "input_type": "number",
          "internal": false,
          "is_tracked": false,
          "name": "out_of_date",
          "operation_perms": {},
          "operations": [],
          "order": 4,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Out of date",
          "tooltip": "Count of endpoints which have not sent an update within the heartbeart (15 minute) windows.",
          "type_id": 1136,
          "uuid": "10364bf0-eecb-45dc-b4e7-72157094fb96",
          "values": [],
          "width": 86
        },
        "query_execution_date": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_status_summary/query_execution_date",
          "hide_notification": false,
          "id": 3025,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "query_execution_date",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Query execution date",
          "tooltip": "",
          "type_id": 1136,
          "uuid": "a6fe927b-0e1c-4210-8951-8db8653dfd25",
          "values": [],
          "width": 127
        },
        "total": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_status_summary/total",
          "hide_notification": false,
          "id": 3026,
          "input_type": "number",
          "internal": false,
          "is_tracked": false,
          "name": "total",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Total",
          "tooltip": "Total count of endpoints in the Symantec SEP environment. Note: Endpoints can be counted in more than status column.",
          "type_id": 1136,
          "uuid": "de5adc90-9db5-47cb-9602-edfa1a1f12ea",
          "values": [],
          "width": 29
        },
        "up_to_date": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_endpoint_status_summary/up_to_date",
          "hide_notification": false,
          "id": 3027,
          "input_type": "number",
          "internal": false,
          "is_tracked": false,
          "name": "up_to_date",
          "operation_perms": {},
          "operations": [],
          "order": 3,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Up to date",
          "tooltip": "Count of endpoints which have sent an update within the heartbeart (15 minute) windows.",
          "type_id": 1136,
          "uuid": "ff90283f-5fba-4b97-a2f8-d6407f7c0318",
          "values": [],
          "width": 87
        }
      },
      "for_actions": false,
      "for_custom_fields": false,
      "for_notifications": false,
      "for_workflows": false,
      "id": null,
      "parent_types": [
        "incident"
      ],
      "properties": {
        "can_create": false,
        "can_destroy": false,
        "for_who": []
      },
      "scripts": [],
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "type_id": 8,
      "type_name": "sep_endpoint_status_summary",
      "uuid": "0e739973-f4b8-4efe-8e2d-b1ddeb413fd3"
    },
    {
      "actions": [],
      "display_name": "Symantec SEP - EOC scan results",
      "export_key": "sep_eoc_scan_results",
      "fields": {
        "artifact_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/artifact_id",
          "hide_notification": false,
          "id": 3028,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "artifact_id",
          "operation_perms": {},
          "operations": [],
          "order": 16,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Artifact id",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "5a05faf0-ca9a-4b56-b841-497c7f9b4c36",
          "values": [],
          "width": 40
        },
        "artifact_type": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/artifact_type",
          "hide_notification": false,
          "id": 3029,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "artifact_type",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Artifact type",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "1518fc32-f8bc-4d99-8bbd-9a8eb2347511",
          "values": [],
          "width": 67
        },
        "artifact_value": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/artifact_value",
          "hide_notification": false,
          "id": 3030,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "artifact_value",
          "operation_perms": {},
          "operations": [],
          "order": 3,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Artifact value",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "82166ba2-7cbe-4736-9a73-25d96b9d2731",
          "values": [],
          "width": 72
        },
        "computer_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/computer_id",
          "hide_notification": false,
          "id": 3031,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "computer_id",
          "operation_perms": {},
          "operations": [],
          "order": 15,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP computer id",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "b933cb6d-6bc4-4b5e-a7bc-ddba65b7fdea",
          "values": [],
          "width": 51
        },
        "computer_name": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/computer_name",
          "hide_notification": false,
          "id": 3032,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "computer_name",
          "operation_perms": {},
          "operations": [],
          "order": 6,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Computer name",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "e7cbc268-525d-423c-b32c-670bae5ecb57",
          "values": [],
          "width": 58
        },
        "file_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/file_id",
          "hide_notification": false,
          "id": 3033,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "file_id",
          "operation_perms": {},
          "operations": [],
          "order": 14,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP file id",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "32b624b3-a593-4f2e-b88d-0b967ddb497c",
          "values": [],
          "width": 40
        },
        "file_path": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/file_path",
          "hide_notification": false,
          "id": 3034,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "file_path",
          "operation_perms": {},
          "operations": [],
          "order": 4,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "File path",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "132f0487-2f8d-4fad-8ab7-620cf50fbc11",
          "values": [],
          "width": 32
        },
        "file_upload_status": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/file_upload_status",
          "hide_notification": false,
          "id": 3035,
          "input_type": "textarea",
          "internal": false,
          "is_tracked": false,
          "name": "file_upload_status",
          "operation_perms": {},
          "operations": [],
          "order": 13,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "File upload  status",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "3fbfbb3d-6490-4c99-8153-6fed645bf102",
          "values": [],
          "width": 90
        },
        "hash_value": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/hash_value",
          "hide_notification": false,
          "id": 3036,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "hash_value",
          "operation_perms": {},
          "operations": [],
          "order": 5,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Hash value",
          "tooltip": "Scan match can return sha-256, sha1 or md5 hash values.",
          "type_id": 1137,
          "uuid": "009b08b6-8659-4c24-aa50-9a21bbbb930a",
          "values": [],
          "width": 42
        },
        "query_execution_date": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/query_execution_date",
          "hide_notification": false,
          "id": 3037,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "query_execution_date",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Query execution date",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "29216307-050b-47c0-ab6d-6e27a8b2dc20",
          "values": [],
          "width": 74
        },
        "remediation_commandid": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/remediation_commandid",
          "hide_notification": false,
          "id": 3038,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "remediation_commandid",
          "operation_perms": {},
          "operations": [],
          "order": 10,
          "placeholder": "Command id returned from SEPM server  when  an remediation scan is initiated.",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP remediation command id",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "2338c1ef-02cd-4558-857f-c9d1df0ebde7",
          "values": [],
          "width": 97
        },
        "remediation_status": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/remediation_status",
          "hide_notification": false,
          "id": 3039,
          "input_type": "textarea",
          "internal": false,
          "is_tracked": false,
          "name": "remediation_status",
          "operation_perms": {},
          "operations": [],
          "order": 11,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Remediation status",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "7c3d6788-2780-4975-b3c3-833f5fab221d",
          "values": [],
          "width": 86
        },
        "scan_command_state": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/scan_command_state",
          "hide_notification": false,
          "id": 3040,
          "input_type": "textarea",
          "internal": false,
          "is_tracked": false,
          "name": "scan_command_state",
          "operation_perms": {},
          "operations": [],
          "order": 8,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Scan command state",
          "tooltip": "This value contains the overall state of the scan command across all target endpoints. Possible values are \u0027In progress\u0027, \u0027Completed\u0027 and \u0027Timedout\u0027\u0027.",
          "type_id": 1137,
          "uuid": "bfd30e06-a4cc-4c39-89a8-2756dc13782a",
          "values": [],
          "width": 51
        },
        "scan_commandid": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/scan_commandid",
          "hide_notification": false,
          "id": 3041,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "scan_commandid",
          "operation_perms": {},
          "operations": [],
          "order": 7,
          "placeholder": "Command id returned from SEPM server  when  an EOC scan is initiated.",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP scan command id",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "1e29dc36-695f-46f9-8e8c-c0ac35d223ec",
          "values": [],
          "width": 94
        },
        "scan_result": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/scan_result",
          "hide_notification": false,
          "id": 3042,
          "input_type": "textarea",
          "internal": false,
          "is_tracked": false,
          "name": "scan_result",
          "operation_perms": {},
          "operations": [],
          "order": 9,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Scan Query/Result",
          "tooltip": "This column is used to signify whether the row is being used to display a query or a query result.  Possible values: \u0027Query\u0027 for a query and \u0027Full match\u0027, \u0027Partial Match\u0027 or \u0027Hash match\u0027 for a match.",
          "type_id": 1137,
          "uuid": "a344bd68-aab4-4206-ade7-7e5c516c7b01",
          "values": [],
          "width": 69
        },
        "scan_type": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/scan_type",
          "hide_notification": false,
          "id": 3043,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "scan_type",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP Scan type",
          "tooltip": "The SEP eoc scan type. ",
          "type_id": 1137,
          "uuid": "95b6372c-7bcc-4089-ac6b-eac5b5c0c2e8",
          "values": [],
          "width": 31
        },
        "upload_commandid": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_eoc_scan_results/upload_commandid",
          "hide_notification": false,
          "id": 3044,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "upload_commandid",
          "operation_perms": {},
          "operations": [],
          "order": 12,
          "placeholder": "Command id returned from SEPM server  when  a file upload is initiated.",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP upload command id",
          "tooltip": "",
          "type_id": 1137,
          "uuid": "bfd5d390-4a52-404f-827c-fe88eae41df6",
          "values": [],
          "width": 86
        }
      },
      "for_actions": false,
      "for_custom_fields": false,
      "for_notifications": false,
      "for_workflows": false,
      "id": null,
      "parent_types": [
        "incident"
      ],
      "properties": {
        "can_create": false,
        "can_destroy": false,
        "for_who": []
      },
      "scripts": [],
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "type_id": 8,
      "type_name": "sep_eoc_scan_results",
      "uuid": "aab4b432-fbc6-4484-a6a9-fd00997a8b28"
    },
    {
      "actions": [],
      "display_name": "Symantec SEP - Fingerprint lists",
      "export_key": "sep_fingerprint_lists",
      "fields": {
        "domain_name": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_fingerprint_lists/domain_name",
          "hide_notification": false,
          "id": 3045,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "domain_name",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP domain name",
          "tooltip": "",
          "type_id": 1138,
          "uuid": "2679b8af-266d-4145-887b-eeaf5fb610db",
          "values": [],
          "width": 69
        },
        "group_ids": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_fingerprint_lists/group_ids",
          "hide_notification": false,
          "id": 3046,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "group_ids",
          "operation_perms": {},
          "operations": [],
          "order": 5,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Assigned SEP group ids",
          "tooltip": "",
          "type_id": 1138,
          "uuid": "4ba3f07b-2e6b-4e8f-8677-ad60f33e3149",
          "values": [],
          "width": 217
        },
        "hash_values": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_fingerprint_lists/hash_values",
          "hide_notification": false,
          "id": 3047,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "hash_values",
          "operation_perms": {},
          "operations": [],
          "order": 4,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "MD5 Hash values",
          "tooltip": "Hash values in list (Currently MD5 only supported).",
          "type_id": 1138,
          "uuid": "41abab3c-c370-4206-ab37-94e437d5183c",
          "values": [],
          "width": 195
        },
        "list_description": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_fingerprint_lists/list_description",
          "hide_notification": false,
          "id": 3048,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "list_description",
          "operation_perms": {},
          "operations": [],
          "order": 3,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Description",
          "tooltip": "SEP list description.",
          "type_id": 1138,
          "uuid": "3aeb0107-ef1f-4795-925a-9ab4e9c5b879",
          "values": [],
          "width": 161
        },
        "list_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_fingerprint_lists/list_id",
          "hide_notification": false,
          "id": 3049,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "list_id",
          "operation_perms": {},
          "operations": [],
          "order": 6,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP list id",
          "tooltip": "",
          "type_id": 1138,
          "uuid": "315b124e-79fa-4d18-8924-0ac8aed35417",
          "values": [],
          "width": 75
        },
        "list_name": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_fingerprint_lists/list_name",
          "hide_notification": false,
          "id": 3050,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "list_name",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "List name",
          "tooltip": "SEP list name.",
          "type_id": 1138,
          "uuid": "70dccc43-cb7a-4815-9a64-770cba212de9",
          "values": [],
          "width": 75
        },
        "query_execution_date": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_fingerprint_lists/query_execution_date",
          "hide_notification": false,
          "id": 3051,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "query_execution_date",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Query Execution date",
          "tooltip": "",
          "type_id": 1138,
          "uuid": "661c8e15-746c-4963-8f98-da4ca7e2fb89",
          "values": [],
          "width": 129
        }
      },
      "for_actions": false,
      "for_custom_fields": false,
      "for_notifications": false,
      "for_workflows": false,
      "id": null,
      "parent_types": [
        "incident"
      ],
      "properties": {
        "can_create": false,
        "can_destroy": false,
        "for_who": []
      },
      "scripts": [],
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "type_id": 8,
      "type_name": "sep_fingerprint_lists",
      "uuid": "2aa13e41-f0c8-4b34-a1aa-2a480f686ed7"
    },
    {
      "actions": [],
      "display_name": "Symantec SEP - Groups",
      "export_key": "sep_groups",
      "fields": {
        "domain_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_groups/domain_id",
          "hide_notification": false,
          "id": 3052,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "domain_id",
          "operation_perms": {},
          "operations": [],
          "order": 8,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP domain id",
          "tooltip": "",
          "type_id": 1139,
          "uuid": "28d8690e-952e-40f1-b405-d427c876ad32",
          "values": [],
          "width": 56
        },
        "domain_name": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_groups/domain_name",
          "hide_notification": false,
          "id": 3053,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "domain_name",
          "operation_perms": {},
          "operations": [],
          "order": 1,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP domain name",
          "tooltip": "",
          "type_id": 1139,
          "uuid": "b8af6da4-da4d-45d2-adb3-f57bc5f65966",
          "values": [],
          "width": 75
        },
        "fullPathName": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_groups/fullPathName",
          "hide_notification": false,
          "id": 3054,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "fullPathName",
          "operation_perms": {},
          "operations": [],
          "order": 4,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Full path name",
          "tooltip": "Full path name of the SEP group.",
          "type_id": 1139,
          "uuid": "9cd693f9-7a49-49ac-9cc1-727ddecafb3d",
          "values": [],
          "width": 117
        },
        "group_description": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_groups/group_description",
          "hide_notification": false,
          "id": 3055,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "group_description",
          "operation_perms": {},
          "operations": [],
          "order": 3,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Description",
          "tooltip": "Description of the SEP group. ",
          "type_id": 1139,
          "uuid": "ff14c2ce-b978-4061-9e89-daeefee44ff1",
          "values": [],
          "width": 156
        },
        "group_id": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_groups/group_id",
          "hide_notification": false,
          "id": 3056,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "group_id",
          "operation_perms": {},
          "operations": [],
          "order": 7,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP Group id",
          "tooltip": "",
          "type_id": 1139,
          "uuid": "c4e322ab-e1d7-4415-8c03-e3ece5f0b234",
          "values": [],
          "width": 146
        },
        "group_name": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_groups/group_name",
          "hide_notification": false,
          "id": 3057,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "group_name",
          "operation_perms": {},
          "operations": [],
          "order": 2,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "SEP Group name",
          "tooltip": "",
          "type_id": 1139,
          "uuid": "40445ab6-0336-498a-8cf0-bf24d6da4135",
          "values": [],
          "width": 104
        },
        "numberOfPhysicalComputers": {
          "allow_default_value": false,
          "blank_option": true,
          "calculated": false,
          "changeable": true,
          "chosen": true,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_groups/numberOfPhysicalComputers",
          "hide_notification": false,
          "id": 3058,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "numberOfPhysicalComputers",
          "operation_perms": {},
          "operations": [],
          "order": 5,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Number of physical computers",
          "tooltip": "Numer of physical endpoints assigned to the SEP group.",
          "type_id": 1139,
          "uuid": "1a805352-4e5d-4d03-854a-0e1c7f709b49",
          "values": [],
          "width": 69
        },
        "policyInheritanceEnabled": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_groups/policyInheritanceEnabled",
          "hide_notification": false,
          "id": 3059,
          "input_type": "boolean",
          "internal": false,
          "is_tracked": false,
          "name": "policyInheritanceEnabled",
          "operation_perms": {},
          "operations": [],
          "order": 6,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Policy inheritance enabled",
          "tooltip": "",
          "type_id": 1139,
          "uuid": "f49f38ac-07ae-45a3-9f5d-df718c0a5c3f",
          "values": [],
          "width": 134
        },
        "query_execution_date": {
          "allow_default_value": false,
          "blank_option": false,
          "calculated": false,
          "changeable": true,
          "chosen": false,
          "default_chosen_by_server": false,
          "deprecated": false,
          "export_key": "sep_groups/query_execution_date",
          "hide_notification": false,
          "id": 3060,
          "input_type": "text",
          "internal": false,
          "is_tracked": false,
          "name": "query_execution_date",
          "operation_perms": {},
          "operations": [],
          "order": 0,
          "placeholder": "",
          "prefix": null,
          "read_only": false,
          "rich_text": false,
          "tags": [],
          "templates": [],
          "text": "Query execution date",
          "tooltip": "",
          "type_id": 1139,
          "uuid": "2c004034-8ffa-405c-9da9-1b6c05dcac53",
          "values": [],
          "width": 109
        }
      },
      "for_actions": false,
      "for_custom_fields": false,
      "for_notifications": false,
      "for_workflows": false,
      "id": null,
      "parent_types": [
        "incident"
      ],
      "properties": {
        "can_create": false,
        "can_destroy": false,
        "for_who": []
      },
      "scripts": [],
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "type_id": 8,
      "type_name": "sep_groups",
      "uuid": "5a463e0a-dc40-4e49-99d0-aeaa2de8c75a"
    }
  ],
  "workflows": [
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_get_blacklist_information",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_blacklist_information\" isExecutable=\"true\" name=\"Example: SEP - Get Blacklist information\"\u003e\u003cdocumentation\u003eGet a blacklist fingerprint list information for a specified name.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1ps8d9j\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_07rq9qa\" name=\"SEP - Get Domains\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"a17245e2-ae90-46aa-ae44-cc0d37b8387c\"\u003e{\"inputs\":{},\"post_processing_script\":\"fn_name = \\\"fn_sep_get_domains\\\"\\nwf_name = \\\"Example: SEP - Get Blacklist information\\\"\\ncontent = results.content\\ndomainid = None\\nfor i in range(len(content)):\\n  if content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    domainid = content[i][\\\"id\\\"]\\n    break\\nif domainid is not None:\\n    workflow.addProperty(\\\"domid_exists\\\", {})\\nelse:\\n    note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The domain name  \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; was not found \\\" \\\\\\n                u\\\"for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;.\\\".format(wf_name, unicode(rule.properties.sep_domain_name), fn_name)\\n    incident.addNote(helper.createRichText(note_text))\",\"result_name\":\"get_domains_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1ps8d9j\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0ea62qu\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1ps8d9j\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_07rq9qa\"/\u003e\u003cserviceTask id=\"ServiceTask_02udmal\" name=\"SEP - Get Fingerprint List\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"e3e94d0c-e2c9-4f76-9e41-6878e718e8de\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_fingerprint_list script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult:{\u0027inputs\u0027: {u\u0027sep_fingerprintlist_name\u0027: u\u0027Blacklist_2\u0027, u\u0027sep_domainid\u0027: u\u0027908090000946C25D330E919313D23887\u0027}, \\n        \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-28 16:23:05\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \\n                    \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1153}, \\n        \u0027success\u0027: True, \\n        \u0027content\u0027: {u\u0027description\u0027: u\u0027Hash of type Malware MD5 Hash\u0027, u\u0027hashType\u0027: u\u0027MD5\u0027, u\u0027source\u0027: u\u0027WEBSERVICE\u0027, \\n                    u\u0027groupIds\u0027: [u\u00277E4BB119A9FE9DC526EDABFB1EE261B8\u0027], u\u0027data\u0027: [u\u0027482F9B6E0CC4C1DBBD772AAAF088CB3A\u0027], \\n                    u\u0027id\u0027: u\u0027E60B061FDD844EBF9778D4BD2AC3942A\u0027, u\u0027name\u0027: u\u0027Blacklist_2\u0027}, \\n        \u0027raw\u0027: \u0027{\\\"description\\\": \\\"Hash of type Malware MD5 Hash\\\", \\\"hashType\\\": \\\"MD5\\\", \\\"source\\\": \\\"WEBSERVICE\\\", \u0027\\n               \u0027\\\"groupIds\\\": [\\\"7E4BB119A9FE9DC526EDABFB1EE261B8\\\"], \\\"data\\\": [\\\"482F9B6E0CC4C1DBBD772AAAF088CB3A\\\"], \u0027\\n               \u0027\\\"id\\\": \\\"E60B061FDD844EBF9778D4BD2AC3942A\\\", \\\"name\\\": \\\"Blacklist_2\\\"}\u0027, \\n        \u0027reason\u0027: None, \\n        \u0027version\u0027: \u00271.0\u0027\\n }\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_fingerprint_list script\\nDATA_TBL_FIELDS = [\\\"domain_name\\\", \\\"list_name\\\", \\\"list_id\\\", \\\"list_description\\\", \\\"hash_values\\\", \\\"group_ids\\\"]\\nFN_NAME = \\\"fn_sep_get_fingerprint_list\\\"\\nWF_NAME = \\\"Get Fingerprint List\\\"\\nCONTENT = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\nDOMAIN_NAME = rule.properties.sep_domain_name\\n# Processing\\n\\n\\ndef main():\\n    note_text = \u0027\u0027\\n\\n    if CONTENT is not None:\\n        if \\\"errorCode\\\" in CONTENT and int(CONTENT[\\\"errorCode\\\"]) == 410:\\n            # The finger print list doesn\u0027t exist.\\n            note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The fingerprint list \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; does not exist \\\" \\\\\\n                        \\\"for domain \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format(WF_NAME, unicode(INPUTS[\\\"sep_fingerprintlist_name\\\"]), unicode(DOMAIN_NAME), FN_NAME)\\n        else:\\n            note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; results returned for \\\" \\\\\\n                        \\\"fingerprint list \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; and domain \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format(WF_NAME, len(CONTENT[\\\"data\\\"]), unicode(INPUTS[\\\"sep_fingerprintlist_name\\\"]),\\n                        unicode(DOMAIN_NAME), FN_NAME)\\n\\n            newrow = incident.addRow(\\\"sep_fingerprint_lists\\\")\\n            newrow.query_execution_date = QUERY_EXECUTION_DATE\\n            newrow.domain_name = rule.properties.sep_domain_name\\n            newrow.list_name =  CONTENT[\\\"name\\\"]\\n            newrow.list_id =  CONTENT[\\\"id\\\"]\\n            newrow.list_description =  CONTENT[\\\"description\\\"]\\n            newrow.hash_values = \u0027, \u0027.join(CONTENT[\\\"data\\\"])\\n            newrow.group_ids = \u0027, \u0027.join(CONTENT[\\\"groupIds\\\"])\\n    else:\\n        noteText += u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned  for \\\" \\\\\\n                    \\\"fingerprint list \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; and domain \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient \\\" \\\\\\n                    \\\"function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, unicode(INPUTS[\\\"sep_fingerprintlist_name\\\"]),\\n                                                 unicode(DOMAIN_NAME), FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"domain_content_results =  workflow.properties.get_domains_results\\ndomain_content = domain_content_results.content\\n\\nfor i in range(len(domain_content)):\\n  if domain_content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    inputs.sep_domainid = domain_content[i][\\\"id\\\"]\\n    break\\ninputs.sep_fingerprintlist_name = rule.properties.sep_fingerprintlist_name\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0rgoz9j\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0gitwsh\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cendEvent id=\"EndEvent_0vp7xul\"\u003e\u003cincoming\u003eSequenceFlow_0gitwsh\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0gitwsh\" sourceRef=\"ServiceTask_02udmal\" targetRef=\"EndEvent_0vp7xul\"/\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_041efzy\"\u003e\u003cincoming\u003eSequenceFlow_0ea62qu\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0rgoz9j\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_1xlixd1\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_0ea62qu\" sourceRef=\"ServiceTask_07rq9qa\" targetRef=\"ExclusiveGateway_041efzy\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0rgoz9j\" name=\"Domain id exists\" sourceRef=\"ExclusiveGateway_041efzy\" targetRef=\"ServiceTask_02udmal\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"domid_exists\\\", None) != None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003cendEvent id=\"EndEvent_1azx5ow\"\u003e\u003cincoming\u003eSequenceFlow_1xlixd1\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1xlixd1\" name=\"Domain id does not exist\" sourceRef=\"ExclusiveGateway_041efzy\" targetRef=\"EndEvent_1azx5ow\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"domid_exists\\\", None) == None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1mq2nlq\"\u003e\u003ctext\u003eGet domain id by name. Input: Domain name selected from activity field.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0sygkpf\" sourceRef=\"ServiceTask_07rq9qa\" targetRef=\"TextAnnotation_1mq2nlq\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1p42b6d\"\u003e\u003ctext\u003e\u003c![CDATA[Get fingerprint list information by name for domain by id. Fingerprint list\u00a0 name selected from\u00a0 activity field.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1t81cuv\" sourceRef=\"ServiceTask_02udmal\" targetRef=\"TextAnnotation_1p42b6d\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_07rq9qa\" id=\"ServiceTask_07rq9qa_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"243\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1ps8d9j\" id=\"SequenceFlow_1ps8d9j_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"243\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"220.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_02udmal\" id=\"ServiceTask_02udmal_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"560\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0vp7xul\" id=\"EndEvent_0vp7xul_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"734\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"707\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0gitwsh\" id=\"SequenceFlow_0gitwsh_di\"\u003e\u003comgdi:waypoint x=\"660\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"734\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"652\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_041efzy\" id=\"ExclusiveGateway_041efzy_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"397\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"422\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0ea62qu\" id=\"SequenceFlow_0ea62qu_di\"\u003e\u003comgdi:waypoint x=\"343\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"397\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"370\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0rgoz9j\" id=\"SequenceFlow_0rgoz9j_di\"\u003e\u003comgdi:waypoint x=\"447\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"560\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"83\" x=\"462\" y=\"185\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1azx5ow\" id=\"EndEvent_1azx5ow_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"404\" y=\"320\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"422\" y=\"359\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1xlixd1\" id=\"SequenceFlow_1xlixd1_di\"\u003e\u003comgdi:waypoint x=\"422\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"422\" xsi:type=\"omgdc:Point\" y=\"320\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"79\" x=\"398\" y=\"269\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1mq2nlq\" id=\"TextAnnotation_1mq2nlq_di\"\u003e\u003comgdc:Bounds height=\"47\" width=\"150\" x=\"218\" y=\"52\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0sygkpf\" id=\"Association_0sygkpf_di\"\u003e\u003comgdi:waypoint x=\"293\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"294\" xsi:type=\"omgdc:Point\" y=\"99\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1p42b6d\" id=\"TextAnnotation_1p42b6d_di\"\u003e\u003comgdc:Bounds height=\"67\" width=\"238\" x=\"491\" y=\"42\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1t81cuv\" id=\"Association_1t81cuv_di\"\u003e\u003comgdi:waypoint x=\"610\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"610\" xsi:type=\"omgdc:Point\" y=\"109\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Get a blacklist fingerprint list information for a specified name.",
      "export_key": "wf_sep_get_blacklist_information",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002345261,
      "name": "Example: SEP - Get Blacklist information",
      "object_type": "incident",
      "programmatic_name": "wf_sep_get_blacklist_information",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "3401ead8-eeaa-4719-b511-54018521041f",
      "workflow_id": 423
    },
    {
      "actions": [],
      "content": {
        "version": 2,
        "workflow_id": "wf_sep_get_quarantine_status",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_quarantine_status\" isExecutable=\"true\" name=\"Example: SEP - Get Quarantine status\"\u003e\u003cdocumentation\u003eGet the status of an Quarantine Endpoint command.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_12r8v45\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_00td1h5\" name=\"SEP - Get Command Status\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"b29ec053-be35-4311-9d8f-1b6275664c0d\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_command_status script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: { \u0027inputs\u0027: {u\u0027sep_status_type\u0027: u\u0027quarantine\u0027, u\u0027sep_commandid\u0027: u\u00277D3670DDF5A64A99B3721BF8A375B302\u0027},\\n          \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-04-26 15:25:55\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                      \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1256},\\n          \u0027success\u0027: True,\\n          \u0027content\u0027: {u\u0027sort\u0027: [{u\u0027direction\u0027: u\u0027ASC\u0027, u\u0027property\u0027: u\u0027Begintime\u0027, u\u0027ascending\u0027: True}], \u0027command_state\u0027: \u0027Completed\u0027, u\u0027number\u0027: 0, u\u0027firstPage\u0027: True, \u0027: 0, u\u0027content\u0027: [{u\u0027computerName\u0027: u\u0027WIN-N5KGH4CP3N3\u0027, u\u0027subStateId u\u0027binaryFileId\u0027: None, u\u0027lastUpdateTime\u0027:\\n                        u\u00272019-04-26T11:05:27Z\u0027, u\u0027domainName\u0027: u\u0027Default\u0027, u\u0027hardwareKey\u0027: u\u0027DC7D24D6465566D2941F35BC8D17801E\u0027,\\n                        u\u0027subStateDesc\u0027: u\u0027\u0027, u\u0027stateId\u0027: 3, u\u0027computerId\u0027: u\u002789AD1BBB0946C25D25E6C0984E971D8A\u0027, u\u0027computerIp\u0027: u\u00279.70.194.94\u0027, u\u0027beginTime\u0027: u\u00272019-04-26T11:05:27Z\u0027, u\u0027currentLoginUserName\u0027: u\u0027Administrator\u0027, u\u0027resultInXML\u0027: u\u0027\u0027, \u0027command_status_id\u0027: 3}], u\u0027lastPage\u0027: True, u\u0027totalPages\u0027: 1, u\u0027numberOfElements\u0027: 1, u\u0027totalElements\u0027: 1, u\u0027size\u0027: 20},\\n          \u0027raw\u0027: \u0027{\\\"sort\\\": [{\\\"direction\\\": \\\"ASC\\\", \\\"property\\\": \\\"Begintime\\\", \\\"ascending\\\": true}], \\\"command_state\\\": \\\"Completed\\\", \\\"number\\\": 0, \\\"firstPage\\\": true, \\\"content\\\": [{\\\"computerName\\\": \\\"WIN-N5KGH4CP3N3\\\", \\\"subStateId\\\": 0, \\\"binaryFileId\\\": null, \\\"lastUpdateTime\\\": \\\"2019-04-26T11:05:27Z\\\", \\\"domainName\\\": \\\"Default\\\", \\\"hardwareKey\\\": \\\"DC7D24D6465566D2941F35BC8D17801E\\\", \\\"subStateDesc\\\": \\\"\\\", \\\"stateId\\\": 3, \\\"computerId\\\": \\\"89AD1BBB0946C25D25E6C0984E971D8A\\\", \\\"computerIp\\\": \\\"9.70.194.94\\\", \\\"beginTime\\\": \\\"2019-04-26T11:05:27Z\\\", \\\"currentLoginUserName\\\": \\\"Administrator\\\", \\\"resultInXML\\\": \\\"\\\", \\\"command_status_id\\\": 3}], \\\"lastPage\\\": true, \\\"totalPages\\\": 1, \\\"numberOfElements\\\": 1, \\\"totalElements\\\": 1, \\\"size\\\": 20}\u0027, \u0027reason\u0027: None, \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"quarantine_status\\\", \\\"quarantine_command_state\\\", \\\"endpoint_quarantine_status\\\"]\\nFN_NAME = \\\"fn_sep_get_command_status\\\"\\nWF_NAME = \\\"Quarantine Endpoint\\\"\\nSTATUS_TYPE = \\\"quarantine\\\"\\nFINAL_STATUSES = {\\n    0: \\\"Not received\\\",\\n    1: \\\"Received\\\",\\n    2: \\\"In progress\\\",\\n    3: \\\"Completed\\\",\\n    4: \\\"Rejected\\\",\\n    5: \\\"Canceled\\\",\\n    6: \\\"Failed\\\"\\n}\\n\\nC_OUTER = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n# Processing\\n\\ndef main():\\n\\n    endpoint_quarantine_status = row.endpoint_quarantine_status[\\\"content\\\"]\\n    status_msg = \\\"Un-quarantine\\\" if endpoint_quarantine_status == \\\"Quarantined\\\" else \\\"Quarantine\\\"\\n    note_text = \u0027\u0027\\n    quarantine_command_state = C_OUTER[\\\"overall_command_state\\\"]\\n\\n    if C_OUTER is not None and len(C_OUTER[\\\"content\\\"]) \u0026gt; 0:\\n        row.quarantine_command_state = quarantine_command_state\\n        row.query_execution_date = QUERY_EXECUTION_DATE\\n        computer = C_OUTER[\\\"content\\\"][0]\\n        note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; command status for command id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; \\\" \\\\\\n                    \\\"for computer \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; was \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, status_msg, row.quarantine_commandid, row.computerName, FINAL_STATUSES[computer[\\\"stateId\\\"]], FN_NAME)\\n        if quarantine_command_state == \\\"Completed\\\":\\n            row.quarantine_command_state = FINAL_STATUSES[computer[\\\"stateId\\\"]]\\n        else:\\n            row.quarantine_command_state = quarantine_command_state\\n\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\" \\\\\\n            .format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_commandid = row.quarantine_commandid\\ninputs.sep_status_type = \\\"quarantine\\\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_12r8v45\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_04ddrsa\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_12r8v45\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_00td1h5\"/\u003e\u003cserviceTask id=\"ServiceTask_0l56qqb\" name=\"SEP - Get Computers\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"91343444-7a62-4f7f-9812-918531b6bf10\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_computers script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\\n      \\\"input_params\\\": {\\\"sep_computername\\\": \\\"myhostname\\\", \\\"sep_domain\\\": null, \\\"sep_lastupdate\\\": null, \\\"sep_order: null,\\n      \\\"sep_os\\\": null, \\\"sep_pageindex\\\": null, \\\"sep_pageindex\\\": null, \\\"sep_sort\\\": null},\\n      \\\"query_execution_time\\\": \\\"2018-08-09 12:34:15\\\",\\n      \\\"content\\\"\\n                {\\n                  \\\"sort\\\": [\\n                    {\\n                      \\\"direction\\\": \\\"ASC\\\",\\n                      \\\"property\\\": \\\"COMPUTER_NAME\\\",\\n                      \\\"ascending\\\": true\\n                    }\\n                  ],\\n                  \\\"number\\\": 0,\\n                  \\\"firstPage\\\": true,\\n                  \\\"content\\\": [\\n                    {\\n                      \\\"profileVersion\\\": \\\"14.2.1031\\\",\\n                      \\\"elamOnOff\\\": 1,\\n                      \\\"avEngineOnOff\\\": 1,\\n                      \\\"profileChecksum\\\": null,\\n                      \\\"atpDeviceId\\\": null,\\n                      \\\"processorType\\\": \\\"Intel64 Family 6 Model 15 Stepping 1\\\",\\n                      \\\"oslanguage\\\": \\\"en-US\\\",\\n                      \\\"licenseId\\\": null,\\n                      \\\"licenseStatus\\\": -1,\\n                      \\\"group\\\": {\\n                        \\\"domain\\\": {\\n                          \\\"id\\\": \\\"908090000946C25D330E919313D23887\\\",\\n                          \\\"name\\\": \\\"Default\\\"\\n                        },\\n                        \\\"name\\\": \\\"My Company\\\",\\n                        \\\"fullPathName\\\": null,\\n                        \\\"externalReferenceId\\\": null,\\n                        \\\"source\\\": null,\\n                        \\\"id\\\": \\\"CAD80F000946C25D6C150831060AA326\\\"\\n                      },\\n                      \\\"uuid\\\": \\\"EA650B42-D10A-7F9F-A1D2-0A58C4F4CEB1\\\",\\n                      \\\"groupUpdateProvider\\\": false,\\n                      \\\"edrStatus\\\": 0,\\n                      \\\"freeDisk\\\": 56538476544,\\n                      \\\"diskDrive\\\": \\\"C:\\\\\\\\\\\",\\n                      \\\"osFunction\\\": \\\"Server\\\",\\n                      \\\"processorClock\\\": 2394,\\n                      \\\"mobilePhone\\\": \\\"\\\",\\n                      \\\"jobTitle\\\": \\\"\\\",\\n                      \\\"lastHeuristicThreatTime\\\": 0,\\n                      \\\"osname\\\": \\\"Windows Server 2012\\\",\\n                      \\\"winServers\\\": [\\n                        \\\"0.0.0.0\\\",\\n                        \\\"0.0.0.0\\\"\\n                      ],\\n                      \\\"deploymentMessage\\\": \\\"\\\",\\n                      \\\"idsSerialNo\\\": \\\"\\\",\\n                      \\\"employeeNumber\\\": \\\"\\\",\\n                      \\\"snacLicenseId\\\": null,\\n                      \\\"lastSiteId\\\": \\\"EE75B0850946C25D5287B58B5173A37C\\\",\\n                      \\\"uwf\\\": 2,\\n                      \\\"currentClientId\\\": \\\"256B2B130946C25D40C83823AA2E5D4C\\\",\\n                      \\\"osbitness\\\": \\\"x64\\\",\\n                      \\\"lastScanTime\\\": 1550825941000,\\n                      \\\"email\\\": \\\"\\\",\\n                      \\\"securityVirtualAppliance\\\": null,\\n                      \\\"worstInfectionIdx\\\": \\\"0\\\",\\n                      \\\"encryptedDevicePassword\\\": null,\\n                      \\\"lastServerId\\\": \\\"7D6AAA6F0946C25D170B3A2D442500B6\\\",\\n                      \\\"kernel\\\": null,\\n                      \\\"lastUpdateTime\\\": 1550835481557,\\n                      \\\"ptpOnOff\\\": 1,\\n                      \\\"majorVersion\\\": 14,\\n                      \\\"lastConnectedIpAddr\\\": \\\"9.70.194.93\\\",\\n                      \\\"agentVersion\\\": \\\"14.2.1031.0100\\\",\\n                      \\\"deploymentRunningVersion\\\": \\\"14.2.1031.0100\\\",\\n                      \\\"agentTimeStamp\\\": 1550835481557,\\n                      \\\"osminor\\\": 2,\\n                      \\\"osMajor\\\": 6,\\n                      \\\"deploymentTargetVersion\\\": \\\"14.2.1031.0100\\\",\\n                      \\\"osMinor\\\": 2,\\n                      \\\"osFlavorNumber\\\": 79,\\n                      \\\"logicalCpus\\\": 0,\\n                      \\\"deploymentPreVersion\\\": \\\"\\\",\\n                      \\\"hypervisorVendorId\\\": \\\"0\\\",\\n                      \\\"fbwf\\\": 2,\\n                      \\\"osversion\\\": \\\"6.2\\\",\\n                      \\\"dnsServers\\\": [\\n                        \\\"9.70.192.29\\\",\\n                        \\\"FEC0:0000:0000:FFFF:0000:0000:0000:0001\\\"\\n                      ],\\n                      \\\"vsicStatus\\\": 3,\\n                      \\\"deleted\\\": 0,\\n                      \\\"deploymentStatus\\\": \\\"302456832\\\",\\n                      \\\"computerTimeStamp\\\": 1550758769451,\\n                      \\\"bwf\\\": 2,\\n                      \\\"totalDiskSpace\\\": 81567,\\n                      \\\"homePhone\\\": \\\"\\\",\\n                      \\\"daOnOff\\\": 1,\\n                      \\\"computerDescription\\\": \\\"\\\",\\n                      \\\"pepOnOff\\\": 1,\\n                      \\\"bashStatus\\\": 1,\\n                      \\\"agentUsn\\\": 525374,\\n                      \\\"osName\\\": \\\"Windows Server 2012\\\",\\n                      \\\"patternIdx\\\": \\\"F592051A3024B9BD77C1FC9EE1D1ADC9\\\",\\n                      \\\"employeeStatus\\\": \\\"\\\",\\n                      \\\"tmpDevice\\\": null,\\n                      \\\"rebootRequired\\\": 0,\\n                      \\\"subnetMasks\\\": [\\n                        \\\"255.255.255.0\\\",\\n                        \\\"64\\\"\\n                      ],\\n                      \\\"minorVersion\\\": 2,\\n                      \\\"osservicePack\\\": \\\"\\\",\\n                      \\\"lastSiteName\\\": \\\"My Site\\\",\\n                      \\\"cidsEngineVersion\\\": \\\"0.0.0.0\\\",\\n                      \\\"lastDeploymentTime\\\": 1550585147000,\\n                      \\\"isGrace\\\": 0,\\n                      \\\"computerUsn\\\": 501645,\\n                      \\\"agentId\\\": \\\"6E5AA5CB0946C25D40C83823BB5107E6\\\",\\n                      \\\"cidsBrowserFfOnOff\\\": 1,\\n                      \\\"domainOrWorkgroup\\\": \\\"WORKGROUP\\\",\\n                      \\\"svaId\\\": null,\\n                      \\\"loginDomain\\\": \\\"LocalComputer\\\",\\n                      \\\"lastServerName\\\": \\\"WIN-4OA0GKJN830\\\",\\n                      \\\"contentUpdate\\\": 1,\\n                      \\\"writeFiltersStatus\\\": null,\\n                      \\\"infected\\\": 0,\\n                      \\\"memory\\\": 6441979904,\\n                      \\\"freeMem\\\": 2910998528,\\n                      \\\"officePhone\\\": \\\"\\\",\\n                      \\\"lastVirusTime\\\": 1550597487000,\\n                      \\\"telemetryMid\\\": \\\"890E283B-41D3-4340-A397-66F6AFCAF33E\\\",\\n                      \\\"idsVersion\\\": \\\"\\\",\\n                      \\\"cidsBrowserIeOnOff\\\": 1,\\n                      \\\"publicKey\\\": \\\"BgIAAACkAABSU0ExAAgAAAEAAQDfMtYpvbC2ZOrpGFbK76tuyp2MZ7/6EGsFrqAV3ZBMfvMllksVObpPYvDSc5vCjtzthb1301VADLAspayGytsdAj5z8+LLpOnJkHNg9tIunm1lLkBTitevI6G+nNjyKd7uPn3+bxjk1LL8g1exL2C2SMPEXubdUa1N5xwmhhPHp6PSIAjY74QUcNyplfvylMS9QRWoQ70mqNy9tLLef6+qCYWTqGa7QKXS0WUJs8sJMzWfCrpeMVAmU5/s3yEu+OI+9RKgOeSfy7wRzmAWHQTofjHkYGYqwXcwwLX7AbWjdcpYo0Kaecf8e5t2ZvWyR362EaNxn0HYSjpKraY1hLK1\\\",\\n                      \\\"quarantineDesc\\\": \\\"Host Integrity check is disabled.\\\\n Host Integrity policy has been disabled by the administrator.\\\",\\n                      \\\"cidsDrvMulfCode\\\": 0,\\n                      \\\"biosVersion\\\": \\\"INTEL  - 6040000 PhoenixBIOS 4.0 Release 6.0\\\",\\n                      \\\"rebootReason\\\": \\\"\\\",\\n                      \\\"telemetryHwid\\\": \\\"A942D8EB-32C3-E42F-FE83-723FDC431F32\\\",\\n                      \\\"cidsSilentMode\\\": 0,\\n                      \\\"creationTime\\\": 1550585043812,\\n                      \\\"macAddresses\\\": [\\n                        \\\"00-50-56-8B-A6-C3\\\",\\n                        \\\"00-50-56-8B-A6-C3\\\"\\n                      ],\\n                      \\\"idsChecksum\\\": null,\\n                      \\\"operatingSystem\\\": \\\"Windows Server 2012 \\\",\\n                      \\\"osmajor\\\": 6,\\n                      \\\"virtualizationPlatform\\\": \\\"Unknown\\\",\\n                      \\\"ipAddresses\\\": [\\n                        \\\"9.70.194.93\\\",\\n                        \\\"FE80:0000:0000:0000:FC67:074E:CD22:0188\\\"\\n                      ],\\n                      \\\"physicalCpus\\\": 1,\\n                      \\\"osBitness\\\": \\\"x64\\\",\\n                      \\\"cidsDefsetVersion\\\": \\\"190220061\\\",\\n                      \\\"cidsDrvOnOff\\\": 1,\\n                      \\\"computerName\\\": \\\"WIN-4OA0GKJN830\\\",\\n                      \\\"logonUserName\\\": \\\"Administrator\\\",\\n                      \\\"licenseExpiry\\\": 0,\\n                      \\\"osLanguage\\\": \\\"en-US\\\",\\n                      \\\"gateways\\\": [\\n                        \\\"9.70.194.1\\\",\\n                        \\\"9.70.194.1\\\",\\n                        \\\"0.0.0.0\\\",\\n                        \\\"0.0.0.0\\\"\\n                      ],\\n                      \\\"uniqueId\\\": \\\"D31AA16E0946C25D40C83823C500518B\\\",\\n                      \\\"department\\\": \\\"\\\",\\n                      \\\"isNpvdiClient\\\": 0,\\n                      \\\"dhcpServer\\\": \\\"0.0.0.0\\\",\\n                      \\\"osfunction\\\": \\\"Server\\\",\\n                      \\\"description\\\": \\\"\\\",\\n                      \\\"osflavorNumber\\\": 79,\\n                      \\\"tpmDevice\\\": \\\"0\\\",\\n                      \\\"onlineStatus\\\": 1,\\n                      \\\"lastDownloadTime\\\": 1550585418144,\\n                      \\\"apOnOff\\\": 1,\\n                      \\\"timeZone\\\": 480,\\n                      \\\"fullName\\\": \\\"\\\",\\n                      \\\"osVersion\\\": \\\"6.2\\\",\\n                      \\\"attributeExtension\\\": \\\"\\\",\\n                      \\\"atpServer\\\": \\\"\\\",\\n                      \\\"tamperOnOff\\\": 1,\\n                      \\\"osServicePack\\\": \\\"\\\",\\n                      \\\"agentType\\\": \\\"105\\\",\\n                      \\\"serialNumber\\\": \\\"VMware-42 0b 65 ea 0a d1 9f 7f-a1 d2 0a 58 c4 f4 ce b1\\\",\\n                      \\\"osElamStatus\\\": 0,\\n                      \\\"installType\\\": \\\"0\\\",\\n                      \\\"profileSerialNo\\\": \\\"CAD8-01/26/2019 08:00:11 062\\\",\\n                      \\\"hardwareKey\\\": \\\"1771D79454E53469DF4B290C06C104C9\\\",\\n                      \\\"firewallOnOff\\\": 1\\n                    }\\n                  ],\\n                  \\\"lastPage\\\": true,\\n                  \\\"totalPages\\\": 1,\\n                  \\\"size\\\": 20,\\n                  \\\"totalElements\\\": 2,\\n                  \\\"numberOfElements\\\": 2\\n                }\\n}\\n\\\"\\\"\\\"\\n#  Globals\\nFN_NAME = \\\"SEP - Get Computers\\\"\\nWF_NAME = \\\"Get  Quarantine status\\\"\\nDATA_TBL_FIELDS = [\\\"query_execution_date\\\", \\\"endpoint_quarantine_status\\\"]\\nC_OUTER = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n\\n# Processing\\ndef main():\\n    note_text = \u0027\u0027\\n    if C_OUTER is not None and len(C_OUTER[\\\"content\\\"]) \u0026gt; 0:\\n        row.query_execution_date = QUERY_EXECUTION_DATE\\n        computer = C_OUTER[\\\"content\\\"][0]\\n        ep_name = computer[\\\"computerName\\\"]\\n        ep_osname = computer.get(\\\"osname\\\", \\\"\\\")\\n        if \\\"windows\\\" in ep_osname.lower():\\n            if (computer[\\\"quarantineDesc\\\"].find(\\\"Host Integrity check passed\\\") == -1):\\n                row.endpoint_quarantine_status = \\\"Quarantined\\\"\\n            else:\\n                row.endpoint_quarantine_status = \\\"Un-Quarantined\\\"\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Quarantine status of endpoint \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; is \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, ep_name, row.endpoint_quarantine_status, FN_NAME)\\n        else:\\n            newrow.endpoint_quarantine_status = \\\"N/A\\\"\\n    else:\\n        note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, FN_NAME)\\n    if note_text:\\n        incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"post_processing_script_language\":\"python\",\"pre_processing_script\":\"inputs.sep_computername = row.computerName\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_04ddrsa\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_15594a4\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_04ddrsa\" sourceRef=\"ServiceTask_00td1h5\" targetRef=\"ServiceTask_0l56qqb\"/\u003e\u003cendEvent id=\"EndEvent_1adq8qh\"\u003e\u003cincoming\u003eSequenceFlow_15594a4\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_15594a4\" sourceRef=\"ServiceTask_0l56qqb\" targetRef=\"EndEvent_1adq8qh\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0cv272w\"\u003e\u003ctext\u003e\u003c![CDATA[Get current command status for quarantine command by quarantine commandid. Input: Assigned from data table row.\nUpdate data table with latest status.]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1j2wee7\" sourceRef=\"ServiceTask_00td1h5\" targetRef=\"TextAnnotation_0cv272w\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1gfad9d\"\u003e\u003ctext\u003e\u003c![CDATA[Refresh data table row for the \u0027Endpoint status\u0027 property.]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1a7deoo\" sourceRef=\"ServiceTask_0l56qqb\" targetRef=\"TextAnnotation_1gfad9d\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_00td1h5\" id=\"ServiceTask_00td1h5_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"243\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_12r8v45\" id=\"SequenceFlow_12r8v45_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"243\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"220.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0l56qqb\" id=\"ServiceTask_0l56qqb_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"506\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_04ddrsa\" id=\"SequenceFlow_04ddrsa_di\"\u003e\u003comgdi:waypoint x=\"343\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"506\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"379.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1adq8qh\" id=\"EndEvent_1adq8qh_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"681\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"654\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_15594a4\" id=\"SequenceFlow_15594a4_di\"\u003e\u003comgdi:waypoint x=\"606\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"681\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"598.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0cv272w\" id=\"TextAnnotation_0cv272w_di\"\u003e\u003comgdc:Bounds height=\"63\" width=\"231\" x=\"177\" y=\"46\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1j2wee7\" id=\"Association_1j2wee7_di\"\u003e\u003comgdi:waypoint x=\"293\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"293\" xsi:type=\"omgdc:Point\" y=\"109\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1gfad9d\" id=\"TextAnnotation_1gfad9d_di\"\u003e\u003comgdc:Bounds height=\"32\" width=\"229\" x=\"441\" y=\"45\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1a7deoo\" id=\"Association_1a7deoo_di\"\u003e\u003comgdi:waypoint x=\"556\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"556\" xsi:type=\"omgdc:Point\" y=\"77\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 2,
      "description": "Get the status of an Quarantine Endpoint command.",
      "export_key": "wf_sep_get_quarantine_status",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668003939192,
      "name": "Example: SEP - Get Quarantine status",
      "object_type": "sep_endpoint_details",
      "programmatic_name": "wf_sep_get_quarantine_status",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "9b599b31-9323-44c8-ad99-a34e71413e1e",
      "workflow_id": 410
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_upload_file_to_sepm",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_upload_file_to_sepm\" isExecutable=\"true\" name=\"Example: SEP - Upload file to SEPM server\"\u003e\u003cdocumentation\u003eRequest a file discovered by an EOC scan be uploaded to the SEPM server. Note: Only supports file executable types such as binary executable (.exe), batch (.bat), Windows installer package (.msi) etc.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0nxl5ad\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0pe71mo\" name=\"SEP - Upload File to SEPM\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"a5fce4c1-b595-47b0-bfa0-781b802cba59\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_upload_file_to_sepm script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: { \u0027inputs\u0027: {u\u0027sep_sha256\u0027: u\u0027590f9895c2cbe93d47c3f7a3104fb843edfb5d5741330593d7d302a1e11e0ba5\u0027, u\u0027sep_source\u0027: u\u0027FILESYSTEM\u0027,\\n                   u\u0027sep_computer_ids\u0027: u\u002789AD1BBB0946C25D25E6C0984E971D8A\u0027, u\u0027sep_file_path\u0027: u\u0027C:\\\\\\\\temp\\\\\\\\New Text Document.txt\u0027,\\n                   u\u0027sep_sha1\u0027: None, u\u0027sep_md5\u0027: None\\n                   },\\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-14 14:46:08\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                    \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1226\\n                   }, \u0027success\u0027: True,\\n         \u0027content\u0027: {u\u0027commandID\u0027: u\u00271BFD8C9B3FD74FF4A2490FFE63314E7A\u0027},\\n         \u0027raw\u0027: \u0027{\\\"commandID\\\": \\\"1BFD8C9B3FD74FF4A2490FFE63314E7A\\\"}\u0027,\\n         \u0027reason\u0027: None,\\n         \u0027version\u0027: \u00271.0\u0027\\n}\\n\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"commandID\\\"]\\nfn_name = \\\"fn_sep_upload_file_to_sepm\\\"\\nwf_name = \\\"Upload file to SEPM server\\\"\\ncontent = results.content\\ninputs = results.inputs\\n# Processing\\n\\nif content  is not None:\\n    noteText = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Command excuted with id  \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for artifact with \\\" \\\\\\n               \\\"type \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; and value \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; from source \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;\\\"\\\\\\n        .format(wf_name, content[\\\"commandID\\\"], row.artifact_type, unicode(row.artifact_value), inputs[\\\"sep_source\\\"], fn_name)\\n    row.upload_commandid = content[\\\"commandID\\\"]\\n\\nelse:\\n    noteText += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There was \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(wf_name, fn_name)\\n\\nincident.addNote(helper.createRichText(noteText))\",\"pre_processing_script\":\"inputs.sep_computer_ids = row.computer_id\\ninputs.sep_file_path = row.file_path\\ninputs.sep_source = rule.properties.sep_source\\nhash_lengths  = [64, 40, 32]\\nhvs = [None if h != len(row.hash_value) else row.hash_value for h in hash_lengths]\\ninputs.sep_sha256 = hvs[0]\\ninputs.sep_sha1 = hvs[1]\\ninputs.sep_md5 = hvs[2]\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0nxl5ad\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0gntbdm\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0nxl5ad\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0pe71mo\"/\u003e\u003cserviceTask id=\"ServiceTask_1udvp4k\" name=\"SEP - Get Command Status\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"b29ec053-be35-4311-9d8f-1b6275664c0d\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_command_status script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: { \u0027inputs\u0027: {u\u0027sep_status_type\u0027: u\u0027quarantine\u0027, u\u0027sep_commandid\u0027: u\u00277D3670DDF5A64A99B3721BF8A375B302\u0027},\\n          \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-04-26 15:25:55\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                      \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1256},\\n          \u0027success\u0027: True,\\n          \u0027content\u0027: {u\u0027sort\u0027: [{u\u0027direction\u0027: u\u0027ASC\u0027, u\u0027property\u0027: u\u0027Begintime\u0027, u\u0027ascending\u0027: True}], \u0027command_state\u0027: \u0027Completed\u0027, u\u0027number\u0027: 0, u\u0027firstPage\u0027: True, \u0027: 0, u\u0027content\u0027: [{u\u0027computerName\u0027: u\u0027WIN-N5KGH4CP3N3\u0027, u\u0027subStateId u\u0027binaryFileId\u0027: None, u\u0027lastUpdateTime\u0027:\\n                        u\u00272019-04-26T11:05:27Z\u0027, u\u0027domainName\u0027: u\u0027Default\u0027, u\u0027hardwareKey\u0027: u\u0027DC7D24D6465566D2941F35BC8D17801E\u0027,\\n                        u\u0027subStateDesc\u0027: u\u0027\u0027, u\u0027stateId\u0027: 3, u\u0027computerId\u0027: u\u002789AD1BBB0946C25D25E6C0984E971D8A\u0027, u\u0027computerIp\u0027: u\u00279.70.194.94\u0027, u\u0027beginTime\u0027: u\u00272019-04-26T11:05:27Z\u0027, u\u0027currentLoginUserName\u0027: u\u0027Administrator\u0027, u\u0027resultInXML\u0027: u\u0027\u0027, \u0027command_status_id\u0027: 3}], u\u0027lastPage\u0027: True, u\u0027totalPages\u0027: 1, u\u0027numberOfElements\u0027: 1, u\u0027totalElements\u0027: 1, u\u0027size\u0027: 20},\\n          \u0027raw\u0027: \u0027{\\\"sort\\\": [{\\\"direction\\\": \\\"ASC\\\", \\\"property\\\": \\\"Begintime\\\", \\\"ascending\\\": true}], \\\"command_state\\\": \\\"Completed\\\", \\\"number\\\": 0, \\\"firstPage\\\": true, \\\"content\\\": [{\\\"computerName\\\": \\\"WIN-N5KGH4CP3N3\\\", \\\"subStateId\\\": 0, \\\"binaryFileId\\\": null, \\\"lastUpdateTime\\\": \\\"2019-04-26T11:05:27Z\\\", \\\"domainName\\\": \\\"Default\\\", \\\"hardwareKey\\\": \\\"DC7D24D6465566D2941F35BC8D17801E\\\", \\\"subStateDesc\\\": \\\"\\\", \\\"stateId\\\": 3, \\\"computerId\\\": \\\"89AD1BBB0946C25D25E6C0984E971D8A\\\", \\\"computerIp\\\": \\\"9.70.194.94\\\", \\\"beginTime\\\": \\\"2019-04-26T11:05:27Z\\\", \\\"currentLoginUserName\\\": \\\"Administrator\\\", \\\"resultInXML\\\": \\\"\\\", \\\"command_status_id\\\": 3}], \\\"lastPage\\\": true, \\\"totalPages\\\": 1, \\\"numberOfElements\\\": 1, \\\"totalElements\\\": 1, \\\"size\\\": 20}\u0027, \u0027reason\u0027: None, \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"query_execution_date\\\", \\\"file_upload_status\\\"]\\nFN_NAME = \\\"fn_sep_get_command_status\\\"\\nWF_NAME = \\\"Upload file to SEPM server\\\"\\nSTATUS_TYPE = \\\"upload\\\"\\nFINAL_STATUSES = {\\n    0: \\\"Initial / Not received\\\",\\n    1: \\\"Received\\\", \\n    2: \\\"In progress\\\",\\n    3: \\\"Completed\\\".format(STATUS_TYPE.capitalize()),\\n    4: \\\"Rejected\\\".format(STATUS_TYPE.capitalize()),\\n    5: \\\"Canceled\\\".format(STATUS_TYPE.capitalize()),\\n    6: \\\"Failed\\\".format(STATUS_TYPE.capitalize())\\n}\\nC_OUTER = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n# Processing\\n\\ndef main():\\n    upload_command_state = C_OUTER[\\\"overall_command_state\\\"]\\n    note_text = \u0027\u0027\\n    if C_OUTER is not None and len(C_OUTER[\\\"content\\\"]) \u0026gt; 0:\\n        row.query_execution_date = QUERY_EXECUTION_DATE\\n        computer = C_OUTER[\\\"content\\\"][0]\\n        if upload_command_state == \\\"Completed\\\":\\n            note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Upload command completed with status \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                        \\\"for command id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for artifact with type \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; and value \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; for Resilient function \\\" \\\\\\n                        \\\"\u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FINAL_STATUSES[computer[\\\"stateId\\\"]], INPUTS[\\\"sep_commandid\\\"], row.artifact_type,\\n                    unicode(row.artifact_value), FN_NAME)\\n            row.file_upload_status = FINAL_STATUSES[computer[\\\"stateId\\\"]]\\n            if computer[\\\"stateId\\\"] == 3:\\n                row.file_id = computer[\\\"binaryFileId\\\"]\\n        else:\\n            note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Upload command in \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; state for command \\\" \\\\\\n                        \\\"id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for artifact with type \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; and value \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; for Resilient function \\\" \\\\\\n                   \\\"\u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FINAL_STATUSES[computer[\\\"stateId\\\"]], INPUTS[\\\"sep_commandid\\\"], row.artifact_type,\\n                    unicode(row.artifact_value), FN_NAME)\\n            row.file_upload_status = upload_command_state\\n    else:\\n        note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                    \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_commandid = row.upload_commandid\\ninputs.sep_status_type = \\\"upload\\\"\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0gntbdm\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_01wjfew\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0gntbdm\" sourceRef=\"ServiceTask_0pe71mo\" targetRef=\"ServiceTask_1udvp4k\"/\u003e\u003cendEvent id=\"EndEvent_1g71ogb\"\u003e\u003cincoming\u003eSequenceFlow_01wjfew\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_01wjfew\" sourceRef=\"ServiceTask_1udvp4k\" targetRef=\"EndEvent_1g71ogb\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1wem961\"\u003e\u003ctext\u003e\u003c![CDATA[Initiate file upload to SEPM server.\nInputs: Assigned from a data table entry. Output: upload commandid\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1datj2m\" sourceRef=\"ServiceTask_0pe71mo\" targetRef=\"TextAnnotation_1wem961\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1usp072\"\u003e\u003ctext\u003e\u003c![CDATA[Get initial command status for upload command by upload commandid.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_02p06gl\" sourceRef=\"ServiceTask_1udvp4k\" targetRef=\"TextAnnotation_1usp072\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0pe71mo\" id=\"ServiceTask_0pe71mo_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"249\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0nxl5ad\" id=\"SequenceFlow_0nxl5ad_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"249\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"223.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1udvp4k\" id=\"ServiceTask_1udvp4k_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"470\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0gntbdm\" id=\"SequenceFlow_0gntbdm_di\"\u003e\u003comgdi:waypoint x=\"349\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"470\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"364.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1g71ogb\" id=\"EndEvent_1g71ogb_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"680\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"653\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_01wjfew\" id=\"SequenceFlow_01wjfew_di\"\u003e\u003comgdi:waypoint x=\"570\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"680\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"580\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1wem961\" id=\"TextAnnotation_1wem961_di\"\u003e\u003comgdc:Bounds height=\"64\" width=\"223\" x=\"187\" y=\"23\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1datj2m\" id=\"Association_1datj2m_di\"\u003e\u003comgdi:waypoint x=\"300\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"299\" xsi:type=\"omgdc:Point\" y=\"87\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1usp072\" id=\"TextAnnotation_1usp072_di\"\u003e\u003comgdc:Bounds height=\"49\" width=\"231\" x=\"404\" y=\"30\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_02p06gl\" id=\"Association_02p06gl_di\"\u003e\u003comgdi:waypoint x=\"521\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"521\" xsi:type=\"omgdc:Point\" y=\"103\"/\u003e\u003comgdi:waypoint x=\"520\" xsi:type=\"omgdc:Point\" y=\"84\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Request a file discovered by an EOC scan be uploaded to the SEPM server. Note: Only supports file executable types such as binary executable (.exe), batch (.bat), Windows installer package (.msi) etc.",
      "export_key": "wf_sep_upload_file_to_sepm",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002347401,
      "name": "Example: SEP - Upload file to SEPM server",
      "object_type": "sep_eoc_scan_results",
      "programmatic_name": "wf_sep_upload_file_to_sepm",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "f5ad77f8-b227-44c7-9ddb-eefaa05d175e",
      "workflow_id": 426
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_get_remediation_status",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_remediation_status\" isExecutable=\"true\" name=\"Example: SEP - Get Remediation status\"\u003e\u003cdocumentation\u003eGet the status of an remediation scan command.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1va6qu8\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0ovi8ki\" name=\"SEP - Get Command Status\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"b29ec053-be35-4311-9d8f-1b6275664c0d\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_command_status script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\\n    \u0027inputs\u0027: {u\u0027sep_commandid\u0027: u\u00272F260501C22842ABBA7EB0805D92EFE0\u0027},\\n    \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-03-01 12:46:27\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027,\\n    \u0027execution_time_ms\u0027: 1085},\\n    \u0027success\u0027: True,\\n    \u0027content\u0027:\\n                {\\n                  \\\"sort\\\": [\\n                    {\\n                      \\\"direction\\\": \\\"ASC\\\",\\n                      \\\"property\\\": \\\"Begintime\\\",\\n                      \\\"ascending\\\": true\\n                    }\\n                  ],\\n                  \\\"number\\\": 0,\\n                  \\\"firstPage\\\": true,\\n                  \\\"content\\\": [\\n                    {\\n                      \\\"computerName\\\": \\\"ep1\\\",\\n                      \\\"subStateId\\\": 0,\\n                      \\\"binaryFileId\\\": null,\\n                      \\\"lastUpdateTime\\\": null,\\n                      \\\"domainName\\\": \\\"Default\\\",\\n                      \\\"hardwareKey\\\": \\\"1771D79454E53469DF4B290C06C104C9\\\",\\n                      \\\"subStateDesc\\\": null,\\n                      \\\"stateId\\\": 0,\\n                      \\\"computerId\\\": \\\"D31AA16E0946C25D40C83823C500518B\\\",\\n                      \\\"computerIp\\\": \\\"192.168.194.93\\\",\\n                      \\\"beginTime\\\": null,\\n                      \\\"currentLoginUserName\\\": \\\"Administrator\\\",\\n                      \\\"resultInXML\\\": null\\n                    },\\n                    {\\n                      \\\"computerName\\\": \\\"ep2\\\",\\n                      \\\"subStateId\\\": 0,\\n                      \\\"binaryFileId\\\": null,\\n                      \\\"lastUpdateTime\\\": null,\\n                      \\\"domainName\\\": \\\"Default\\\",\\n                      \\\"hardwareKey\\\": \\\"DC7D24D6465566D2941F35BC8D17801E\\\",\\n                      \\\"subStateDesc\\\": null,\\n                      \\\"stateId\\\": 0,\\n                      \\\"computerId\\\": \\\"89AD1BBB0946C25D25E6C0984E971D8A\\\",\\n                      \\\"computerIp\\\": \\\"192.168.194.94\\\",\\n                      \\\"beginTime\\\": null,\\n                      \\\"currentLoginUserName\\\": \\\"Administrator\\\",\\n                      \\\"resultInXML\\\": null\\n                    }\\n                  ],\\n                  \\\"lastPage\\\": true,\\n                  \\\"totalPages\\\": 1,\\n                  \\\"size\\\": 20,\\n                  \\\"totalElements\\\": 2,\\n                  \\\"numberOfElements\\\": 2\\n                }\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"query_execution_date\\\", \\\"remediation_status\\\"]\\nFN_NAME = \\\"fn_sep_get_command_status\\\"\\nWF_NAME = \\\"Get Remediation status\\\"\\nSTATUS_TYPE = \\\"remediate\\\"\\nREMEDITATE_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\nC_OUTER = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\n\\ndef main():\\n    remediation_command_state = C_OUTER[\\\"overall_command_state\\\"]\\n    total_remediation_count = C_OUTER[\\\"total_remediation_count\\\"]\\n    total_remediation_ep_count = C_OUTER[\\\"total_remediation_ep_count\\\"]\\n    total_fail_remediation_count = C_OUTER[\\\"total_fail_remediation_count\\\"]\\n    total_ep_count = C_OUTER[\\\"total_ep_count\\\"]\\n    att_name = C_OUTER[\\\"att_name\\\"]\\n\\n    note_text = \u0027\u0027\\n    att_note = \u0027\u0027\\n    if C_OUTER is not None:\\n        if total_remediation_count \u0026gt; 0:\\n            att_note = \\\"\u0026lt;br\u0026gt;Added full result as an attachment. Attachment name : \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;.\\\".format(att_name)\\n            \\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Remediate artifact returned \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; remediated \\\" \\\\\\n                    \\\"artifacts on \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; out of a total of \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; endpoints for artifact with type \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; \\\" \\\\\\n                    \\\"and value \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{7}\u0026lt;/b\u0026gt;.{6}\\\" \\\\\\n            .format(WF_NAME, total_remediation_count, total_remediation_ep_count, total_ep_count, row.artifact_type,\\n                    unicode(row.artifact_value), att_note, FN_NAME)\\n\\n        if remediation_command_state == \\\"Completed\\\":\\n            if total_fail_remediation_count == 0 and total_remediation_count \u0026gt; 0:\\n                row.remediation_status = u\\\"{0} at {1}. For remediation results see note/attachment.\\\".format(remediation_command_state, REMEDITATE_EXECUTION_DATE)\\n            elif total_fail_remediation_count == 0 and total_remediation_count == 0:\\n                row.remediation_status = \\\"No match found\\\"\\n            elif total_fail_remediation_count \u0026gt; 0:\\n                row.remediation_status = \\\"Failed\\\"\\n        else:\\n            row.remediation_status = remediation_command_state\\n    else:\\n        row.remediation_status = remediation_command_state\\n        note_text += u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Remediate artifact returned \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results for \\\" \\\\\\n                     \\\"for artifact with type \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; and value \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, row.artifact_type, unicode(row.artifact_value), FN_NAME)\\n    incident.addNote(helper.createRichText(note_text))\\n\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\\n\",\"pre_processing_script\":\"inputs.sep_incident_id = incident.id\\ninputs.sep_commandid = row.remediation_commandid\\ninputs.sep_status_type = \\\"remediation\\\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1va6qu8\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1mk16pm\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1va6qu8\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0ovi8ki\"/\u003e\u003cendEvent id=\"EndEvent_13zxfd0\"\u003e\u003cincoming\u003eSequenceFlow_1mk16pm\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1mk16pm\" sourceRef=\"ServiceTask_0ovi8ki\" targetRef=\"EndEvent_13zxfd0\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_19afvuj\"\u003e\u003ctext\u003e\u003c![CDATA[Get current command status for a remediation command by remediation commandid. Input: Assigned from data table row.\nUpdate data table with latest status.]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_10o7p7s\" sourceRef=\"ServiceTask_0ovi8ki\" targetRef=\"TextAnnotation_19afvuj\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0ovi8ki\" id=\"ServiceTask_0ovi8ki_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"277\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1va6qu8\" id=\"SequenceFlow_1va6qu8_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"277\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"237.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_13zxfd0\" id=\"EndEvent_13zxfd0_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"432\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"450\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1mk16pm\" id=\"SequenceFlow_1mk16pm_di\"\u003e\u003comgdi:waypoint x=\"377\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"432\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"404.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_19afvuj\" id=\"TextAnnotation_19afvuj_di\"\u003e\u003comgdc:Bounds height=\"60\" width=\"259\" x=\"197\" y=\"41\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_10o7p7s\" id=\"Association_10o7p7s_di\"\u003e\u003comgdi:waypoint x=\"327\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"327\" xsi:type=\"omgdc:Point\" y=\"101\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Get the status of an remediation scan command.",
      "export_key": "wf_sep_get_remediation_status",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002344483,
      "name": "Example: SEP - Get Remediation status",
      "object_type": "sep_eoc_scan_results",
      "programmatic_name": "wf_sep_get_remediation_status",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "9bc104af-53ec-4b0c-8161-84b20cc171c7",
      "workflow_id": 422
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_get_groups_information",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_groups_information\" isExecutable=\"true\" name=\"Example: SEP - Get Groups information\"\u003e\u003cdocumentation\u003eGet groups information.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0laeki3\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0wjv59v\" name=\"SEP - Get Domains\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"a17245e2-ae90-46aa-ae44-cc0d37b8387c\"\u003e{\"inputs\":{},\"post_processing_script\":\"fn_name = \\\"fn_sep_get_domains\\\"\\nwf_name = \\\"Example: SEP - Get Groups information\\\"\\ncontent = results.content\\ndomainid = None\\nfor i in range(len(content)):\\n  if content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    domainid = content[i][\\\"id\\\"]\\n    break\\nif domainid is not None:\\n    workflow.addProperty(\\\"domid_exists\\\", {})\\nelse:\\n    note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The domain name  \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; was not found \\\" \\\\\\n                u\\\"for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;.\\\".format(wf_name, unicode(rule.properties.sep_domain_name), fn_name)\\n    incident.addNote(helper.createRichText(note_text))\",\"result_name\":\"get_domains_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0laeki3\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1auavki\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0laeki3\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0wjv59v\"/\u003e\u003cserviceTask id=\"ServiceTask_1fdl7t3\" name=\"SEP - Get Groups\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"da72c4a8-45c1-4633-9d18-9ef6bd03dae9\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_groups script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\\n         \u0027content\u0027: {\\n                      \\\"sort\\\": [\\n                        {\\n                          \\\"direction\\\": \\\"ASC\\\",\\n                          \\\"property\\\": \\\"NAME\\\",\\n                          \\\"ascending\\\": true\\n                        }\\n                      ],\\n                      \\\"number\\\": 0,\\n                      \\\"firstPage\\\": true,\\n                      \\\"content\\\": [\\n                        {\\n                          \\\"policyDate\\\": 1548489611062,\\n                          \\\"domain\\\": {\\n                            \\\"id\\\": \\\"908090000946C25D330E919313D23887\\\",\\n                            \\\"name\\\": \\\"Default\\\"\\n                          },\\n                          \\\"numberOfRegisteredUsers\\\": 1,\\n                          \\\"description\\\": \\\"\\\",\\n                          \\\"created\\\": 1548481072007,\\n                          \\\"policySerialNumber\\\": \\\"4CBD-01/26/2019 08:00:11 062\\\",\\n                          \\\"lastModified\\\": 1548481072007,\\n                          \\\"fullPathName\\\": \\\"My Company\\\\\\\\Default Group\\\",\\n                          \\\"createdBy\\\": \\\"AF3C39A10A320801000000DBF200C60A\\\",\\n                          \\\"numberOfPhysicalComputers\\\": 1,\\n                          \\\"customIpsNumber\\\": \\\"\\\",\\n                          \\\"id\\\": \\\"4CBD63EE0946C25D1011DB1872A1736A\\\",\\n                          \\\"policyInheritanceEnabled\\\": true,\\n                          \\\"name\\\": \\\"Default Group\\\"\\n                        },\\n                        {\\n                          \\\"policyDate\\\": 1548489611062,\\n                          \\\"domain\\\": {\\n                            \\\"id\\\": \\\"908090000946C25D330E919313D23887\\\",\\n                            \\\"name\\\": \\\"Default\\\"\\n                          },\\n                          \\\"numberOfRegisteredUsers\\\": 1,\\n                          \\\"description\\\": \\\"\\\",\\n                          \\\"created\\\": 1548481072007,\\n                          \\\"policySerialNumber\\\": \\\"CAD8-01/26/2019 08:00:11 062\\\",\\n                          \\\"lastModified\\\": 1548481072007,\\n                          \\\"fullPathName\\\": \\\"My Company\\\",\\n                          \\\"createdBy\\\": \\\"AF3C39A10A320801000000DBF200C60A\\\",\\n                          \\\"number OfPhysicalComputers\\\": 1,\\n                          \\\"customIpsNumber\\\": \\\"\\\",\\n                          \\\"id\\\": \\\"CAD80F000946C25D6C150831060AA326\\\",\\n                          \\\"policyInheritanceEnabled\\\": false,\\n                          \\\"name\\\": \\\"My Company\\\"\\n                        }\\n                      ],\\n                      \\\"lastPage\\\": true,\\n                      \\\"totalPages\\\": 1,\\n                      \\\"size\\\": 25,\\n                      \\\"totalElements\\\": 2,\\n                      \\\"numberOfElements\\\": 2\\n                     }\\n\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_amp_get_groups script\\nDATA_TBL_FIELDS = [\\\"query_execution_time\\\", \\\"group_name\\\", \\\"group_id\\\", \\\"group_description\\\", \\\"fullPathName\\\",\\n                   \\\"numberOfPhysicalComputers\\\",\\\"policyInheritanceEnabled\\\"]\\nFN_NAME = \\\"fn_symc_sep_get_groups\\\"\\nWF_NAME = \\\"Get Groups information\\\"\\nDATA_TBL_FIELDS_DOM = [\\\"domain_name\\\", \\\"domain_id\\\"]\\nC_OUTER = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\nDOMAIN_NAME = rule.properties.sep_domain_name\\n\\n# Processing\\ndef main():\\n    note_text = \u0027\u0027\\n    if C_OUTER is not None:\\n        note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; results returned for domain \\\" \\\\\\n                    \\\"\u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, results[\\\"content\\\"][\\\"numberOfElements\\\"], DOMAIN_NAME, FN_NAME)\\n        groups = C_OUTER[\\\"content\\\"]\\n        for i in range(len(groups)):\\n            newrow = incident.addRow(\\\"sep_groups\\\")\\n            newrow.query_execution_date = QUERY_EXECUTION_DATE\\n            for f in DATA_TBL_FIELDS:\\n                try:\\n                    f_base = f.split(\u0027_\u0027)[1]\\n                except:\\n                    f_base = f\\n                if f == \\\"query_execution_time\\\":\\n                    continue\\n                if groups[i][f_base] is not None:\\n                      newrow[f] = groups[i][f_base]\\n\\n            domain = groups[i][\\\"domain\\\"]\\n            if domain is not None:\\n                for d in DATA_TBL_FIELDS_DOM:\\n                    d_base = d.split(\u0027_\u0027)[1]\\n                    newrow[d] = domain[d_base]\\n\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for domain \\\" \\\\\\n                     \\\"\u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, DOMAIN_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"domain_content_results =  workflow.properties.get_domains_results\\ndomain_content = domain_content_results.content\\n\\nfor i in range(len(domain_content)):\\n  if domain_content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    inputs.sep_domain = domain_content[i][\\\"id\\\"]\\n    break\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1sjbew6\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_07x2ixb\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cendEvent id=\"EndEvent_1nbpqxw\"\u003e\u003cincoming\u003eSequenceFlow_07x2ixb\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_07x2ixb\" sourceRef=\"ServiceTask_1fdl7t3\" targetRef=\"EndEvent_1nbpqxw\"/\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_177475l\"\u003e\u003cincoming\u003eSequenceFlow_1auavki\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1sjbew6\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_09uvsaf\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_1auavki\" sourceRef=\"ServiceTask_0wjv59v\" targetRef=\"ExclusiveGateway_177475l\"/\u003e\u003csequenceFlow id=\"SequenceFlow_1sjbew6\" name=\"Domain id exists\" sourceRef=\"ExclusiveGateway_177475l\" targetRef=\"ServiceTask_1fdl7t3\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"script_text\":\"#Enter supplemental script\\n#Variables instantiated in this editor are available\\n#for use in the expression above\",\"final_expression_text\":\"workflow.properties.get(\\\"domid_exists\\\", None) != None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003cendEvent id=\"EndEvent_1elyur7\"\u003e\u003cincoming\u003eSequenceFlow_09uvsaf\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_09uvsaf\" name=\"Domain id does not exist\" sourceRef=\"ExclusiveGateway_177475l\" targetRef=\"EndEvent_1elyur7\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"domid_exists\\\", None) == None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1tuz1dp\"\u003e\u003ctext\u003eGet domain id by name. Input: Domain name selected from activity field.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0mbznxe\" sourceRef=\"ServiceTask_0wjv59v\" targetRef=\"TextAnnotation_1tuz1dp\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1b12v14\"\u003e\u003ctext\u003e\u003c![CDATA[Get group information by domain id.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0jcaxmf\" sourceRef=\"ServiceTask_1fdl7t3\" targetRef=\"TextAnnotation_1b12v14\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0wjv59v\" id=\"ServiceTask_0wjv59v_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"256\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0laeki3\" id=\"SequenceFlow_0laeki3_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"256\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"227\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1fdl7t3\" id=\"ServiceTask_1fdl7t3_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"610\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1nbpqxw\" id=\"EndEvent_1nbpqxw_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"785\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"758\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_07x2ixb\" id=\"SequenceFlow_07x2ixb_di\"\u003e\u003comgdi:waypoint x=\"710\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"785\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"702.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_177475l\" id=\"ExclusiveGateway_177475l_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"450\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"475\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1auavki\" id=\"SequenceFlow_1auavki_di\"\u003e\u003comgdi:waypoint x=\"356\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"450\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"403\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1sjbew6\" id=\"SequenceFlow_1sjbew6_di\"\u003e\u003comgdi:waypoint x=\"500\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"610\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"83\" x=\"514\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1elyur7\" id=\"EndEvent_1elyur7_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"457\" y=\"329\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"475\" y=\"368\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_09uvsaf\" id=\"SequenceFlow_09uvsaf_di\"\u003e\u003comgdi:waypoint x=\"475\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"475\" xsi:type=\"omgdc:Point\" y=\"329\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"79\" x=\"451\" y=\"273\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1tuz1dp\" id=\"TextAnnotation_1tuz1dp_di\"\u003e\u003comgdc:Bounds height=\"62\" width=\"189\" x=\"211\" y=\"61\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0mbznxe\" id=\"Association_0mbznxe_di\"\u003e\u003comgdi:waypoint x=\"306\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"306\" xsi:type=\"omgdc:Point\" y=\"123\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1b12v14\" id=\"TextAnnotation_1b12v14_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"203\" x=\"558\" y=\"62\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0jcaxmf\" id=\"Association_0jcaxmf_di\"\u003e\u003comgdi:waypoint x=\"660\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"660\" xsi:type=\"omgdc:Point\" y=\"92\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Get groups information.",
      "export_key": "wf_sep_get_groups_information",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002337850,
      "name": "Example: SEP - Get Groups information",
      "object_type": "incident",
      "programmatic_name": "wf_sep_get_groups_information",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "a9d9db3a-97cf-4f57-829a-47cc9e60fe69",
      "workflow_id": 413
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_assign_fingerprint_list_to_lockdown_group",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_assign_fingerprint_list_to_lockdown_group\" isExecutable=\"true\" name=\"Example: SEP - Assign Blacklist to lockdown group\"\u003e\u003cdocumentation\u003eAssign a blacklist fingerprint list to a group for system lockdown.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0ntekla\u003c/outgoing\u003e\u003c/startEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0ntekla\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0k7dyaf\"/\u003e\u003cserviceTask id=\"ServiceTask_0k7dyaf\" name=\"SEP - Get Fingerprint List\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"e3e94d0c-e2c9-4f76-9e41-6878e718e8de\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_fingerprint_list script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult:{\u0027inputs\u0027: {u\u0027sep_fingerprintlist_name\u0027: u\u0027Blacklist_2\u0027, u\u0027sep_domainid\u0027: u\u0027908090000946C25D330E919313D23887\u0027}, \\n        \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-28 16:23:05\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \\n                    \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1153}, \\n        \u0027success\u0027: True, \\n        \u0027content\u0027: {u\u0027description\u0027: u\u0027Hash of type Malware MD5 Hash\u0027, u\u0027hashType\u0027: u\u0027MD5\u0027, u\u0027source\u0027: u\u0027WEBSERVICE\u0027, \\n                    u\u0027groupIds\u0027: [u\u00277E4BB119A9FE9DC526EDABFB1EE261B8\u0027], u\u0027data\u0027: [u\u0027482F9B6E0CC4C1DBBD772AAAF088CB3A\u0027], \\n                    u\u0027id\u0027: u\u0027E60B061FDD844EBF9778D4BD2AC3942A\u0027, u\u0027name\u0027: u\u0027Blacklist_2\u0027}, \\n        \u0027raw\u0027: \u0027{\\\"description\\\": \\\"Hash of type Malware MD5 Hash\\\", \\\"hashType\\\": \\\"MD5\\\", \\\"source\\\": \\\"WEBSERVICE\\\", \u0027\\n               \u0027\\\"groupIds\\\": [\\\"7E4BB119A9FE9DC526EDABFB1EE261B8\\\"], \\\"data\\\": [\\\"482F9B6E0CC4C1DBBD772AAAF088CB3A\\\"], \u0027\\n               \u0027\\\"id\\\": \\\"E60B061FDD844EBF9778D4BD2AC3942A\\\", \\\"name\\\": \\\"Blacklist_2\\\"}\u0027, \\n        \u0027reason\u0027: None, \\n        \u0027version\u0027: \u00271.0\u0027\\n }\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_fingerprint_list script\\nFN_NAME = \\\"fn_sep_get_fingerprint_list\\\"\\nWF_NAME = \\\"Assign Fingerprint List to lockdown group\\\"\\nCONTENT = results.content\\nINPUTS = results.inputs\\n\\n# Processing\\n\\n\\ndef main():\\n    note_text = \u0027\u0027\\n\\n    if CONTENT is not None:\\n        if \\\"errorCode\\\" in CONTENT and int(CONTENT[\\\"errorCode\\\"]) == 410:\\n            # The finger print list doesn\u0027t exist.\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The fingerprint list \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; does not exist \\\" \\\\\\n                        \\\"for domain id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format(WF_NAME, INPUTS[\\\"sep_fingerprintlist_name\\\"], INPUTS[\\\"sep_domainid\\\"],\\n                        FN_NAME)\\n    else:\\n        noteText += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned  for \\\" \\\\\\n                    \\\"fingerprint list \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; and domain id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient \\\" \\\\\\n                    \\\"function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, INPUTS[\\\"sep_fingerprintlist_name\\\"],\\n                                                 INPUTS[\\\"sep_domainid\\\"], FN_NAME)\\n    if note_text:\\n        incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_domainid = row.domain_id\\ninputs.sep_fingerprintlist_name = rule.properties.sep_fingerprintlist_name\",\"result_name\":\"get_fingerprintlist_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0ntekla\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0o19zlo\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_1vdzpa9\" name=\"SEP - Assign Fingerprint List to ...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"edb1beff-d01c-4334-aeb6-45d9a65831d4\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_assign_fingerprint_list_to_group ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult:{\u0027inputs\u0027: {u\u0027sep_fingerprintlist_id\u0027: u\u0027E60B061FDD844EBF9778D4BD2AC3942A\u0027, u\u0027sep_groupid\u0027: u\u00277E4BB119A9FE9DC526EDABFB1EE261B8\u0027},\\n        \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-28 17:53:52\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027,\\n                   \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1225},\\n        \u0027success\u0027: True,\\n        \u0027content\u0027: \u0027\u0027,\\n        \u0027raw\u0027: \u0027\\\"\\\"\u0027,\\n        \u0027reason\u0027: None,\\n        \u0027version\u0027: \u00271.0\u0027\\n }\\n\\\"\\\"\\\"\\n#  Globals\\nFN_NAME = \\\"fn_sep_assign_fingerprint_list_to_group\\\"\\nWF_NAME = \\\"Assign Fingerprint List to lockdown group\\\"\\nDATA_TBL_FIELDS = [\\\"domain_name\\\", \\\"list_name\\\", \\\"list_id\\\", \\\"list_description\\\", \\\"hash_values\\\", \\\"hash_type\\\", \\\"group_ids\\\"]\\nCONTENT = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\n\\ndef main():\\n    note_text = \u0027\u0027\\n\\n    if CONTENT is not None:\\n        if \\\"errorCode\\\" in CONTENT and int(CONTENT[\\\"errorCode\\\"]) == 400:\\n            # The finger print list doesn\u0027t exist.\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The fingerprint list \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; does not exist or is invalid \\\" \\\\\\n                        \\\"for domain id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format( WF_NAME, INPUTS[\\\"sep_fingerprintlist_name\\\"], row.domain_id, FN_NAME)\\n        else:\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Successfully assigned fingerprint list  with id \\\" \\\\\\n                        \\\"\u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; to group with id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format(WF_NAME, INPUTS[\\\"sep_fingerprintlist_id\\\"], INPUTS[\\\"sep_groupid\\\"], FN_NAME)\\n\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned \\\" \\\\\\n                     \\\"with fingerprint id \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; and group id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, INPUTS[\\\"sep_fingerprintlist_id\\\"], INPUTS[\\\"sep_groupid\\\"], FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"content = workflow.properties.get_fingerprintlist_results.content\\ninputs.sep_fingerprintlist_id = content[\\\"id\\\"]\\ninputs.sep_groupid = row.group_id\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0o19zlo\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_151camr\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0o19zlo\" sourceRef=\"ServiceTask_0k7dyaf\" targetRef=\"ServiceTask_1vdzpa9\"/\u003e\u003cendEvent id=\"EndEvent_1undvlq\"\u003e\u003cincoming\u003eSequenceFlow_151camr\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_151camr\" sourceRef=\"ServiceTask_1vdzpa9\" targetRef=\"EndEvent_1undvlq\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0exjdgx\"\u003e\u003ctext\u003e\u003c![CDATA[Get fingerprint list id by name for domain by id. Input: Parameter fingerprint list assigned from activity field, domain id from data table row.\u00a0\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_024d5zv\" sourceRef=\"ServiceTask_0k7dyaf\" targetRef=\"TextAnnotation_0exjdgx\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0ld2gpb\"\u003e\u003ctext\u003e\u003c![CDATA[Assign (SEP) fingerprint list by id to group by id. Input: Group parameter assigned from data table row.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0i8njzx\" sourceRef=\"ServiceTask_1vdzpa9\" targetRef=\"TextAnnotation_0ld2gpb\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0ntekla\" id=\"SequenceFlow_0ntekla_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"299\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"203.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0k7dyaf\" id=\"ServiceTask_0k7dyaf_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"299\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1vdzpa9\" id=\"ServiceTask_1vdzpa9_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"571\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0o19zlo\" id=\"SequenceFlow_0o19zlo_di\"\u003e\u003comgdi:waypoint x=\"399\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"571\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"440\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1undvlq\" id=\"EndEvent_1undvlq_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"715\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"688\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_151camr\" id=\"SequenceFlow_151camr_di\"\u003e\u003comgdi:waypoint x=\"671\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"715\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"648\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0exjdgx\" id=\"TextAnnotation_0exjdgx_di\"\u003e\u003comgdc:Bounds height=\"76\" width=\"214\" x=\"242\" y=\"37\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_024d5zv\" id=\"Association_024d5zv_di\"\u003e\u003comgdi:waypoint x=\"349\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"350\" xsi:type=\"omgdc:Point\" y=\"113\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0ld2gpb\" id=\"TextAnnotation_0ld2gpb_di\"\u003e\u003comgdc:Bounds height=\"54\" width=\"297\" x=\"472\" y=\"39\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0i8njzx\" id=\"Association_0i8njzx_di\"\u003e\u003comgdi:waypoint x=\"621\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"621\" xsi:type=\"omgdc:Point\" y=\"93\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Assign a blacklist fingerprint list to a group for system lockdown.",
      "export_key": "wf_sep_assign_fingerprint_list_to_lockdown_group",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002340103,
      "name": "Example: SEP - Assign Blacklist to lockdown group",
      "object_type": "sep_groups",
      "programmatic_name": "wf_sep_assign_fingerprint_list_to_lockdown_group",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "483838fc-fbaa-4207-92df-b1e3f5dbd43a",
      "workflow_id": 416
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_delete_hash_from_fingerprint_list",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_delete_hash_from_fingerprint_list\" isExecutable=\"true\" name=\"Example: SEP - Delete Hash from Blacklist\"\u003e\u003cdocumentation\u003e\u003c![CDATA[Update a blacklist fingerprint list to remove an MD5 hash.\nNote: The fingerprint list will be deleted if only a single MD5 hash is remaining in the list.]]\u003e\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0uc7t2u\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0am1izt\" name=\"SEP - Get Domains\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"a17245e2-ae90-46aa-ae44-cc0d37b8387c\"\u003e{\"inputs\":{},\"post_processing_script\":\"fn_name = \\\"fn_sep_get_domains\\\"\\nwf_name = \\\"Delete Hash from Fingerprint List\\\"\\ncontent = results.content\\ndomainid = None\\nfor i in range(len(content)):\\n  if content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    domainid = content[i][\\\"id\\\"]\\n    break\\nif domainid is not None:\\n    workflow.addProperty(\\\"domid_exists\\\", {})\\nelse:\\n    note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The domain name  \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; was not found \\\" \\\\\\n                u\\\"for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;.\\\".format(wf_name, unicode(rule.properties.sep_domain_name), fn_name)\\n    incident.addNote(helper.createRichText(note_text))\",\"result_name\":\"get_domains_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0uc7t2u\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0ve607k\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0uc7t2u\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0am1izt\"/\u003e\u003cserviceTask id=\"ServiceTask_0giri6n\" name=\"SEP - Get Fingerprint List\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"e3e94d0c-e2c9-4f76-9e41-6878e718e8de\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_fingerprint_list script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult:{\u0027inputs\u0027: {u\u0027sep_fingerprintlist_name\u0027: u\u0027Blacklist_2\u0027, u\u0027sep_domainid\u0027: u\u0027908090000946C25D330E919313D23887\u0027},\\n        \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-28 16:23:05\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                    \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1153},\\n        \u0027success\u0027: True,\\n        \u0027content\u0027: {u\u0027description\u0027: u\u0027Hash of type Malware MD5 Hash\u0027, u\u0027hashType\u0027: u\u0027MD5\u0027, u\u0027source\u0027: u\u0027WEBSERVICE\u0027,\\n                    u\u0027groupIds\u0027: [u\u00277E4BB119A9FE9DC526EDABFB1EE261B8\u0027], u\u0027data\u0027: [u\u0027482F9B6E0CC4C1DBBD772AAAF088CB3A\u0027],\\n                    u\u0027id\u0027: u\u0027E60B061FDD844EBF9778D4BD2AC3942A\u0027, u\u0027name\u0027: u\u0027Blacklist_2\u0027},\\n        \u0027raw\u0027: \u0027{\\\"description\\\": \\\"Hash of type Malware MD5 Hash\\\", \\\"hashType\\\": \\\"MD5\\\", \\\"source\\\": \\\"WEBSERVICE\\\", \u0027\\n               \u0027\\\"groupIds\\\": [\\\"7E4BB119A9FE9DC526EDABFB1EE261B8\\\"], \\\"data\\\": [\\\"482F9B6E0CC4C1DBBD772AAAF088CB3A\\\"], \u0027\\n               \u0027\\\"id\\\": \\\"E60B061FDD844EBF9778D4BD2AC3942A\\\", \\\"name\\\": \\\"Blacklist_2\\\"}\u0027,\\n        \u0027reason\u0027: None,\\n        \u0027version\u0027: \u00271.0\u0027\\n }\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_fingerprint_list script\\nFN_NAME = \\\"fn_get_fingerprint_list\\\"\\nWF_NAME = \\\"Delete Hash from Fingerprint List\\\"\\nCONTENT = results.content\\nINPUTS = results.inputs\\n\\ndef main():\\n    fpl_exists = hash_in_list = last_hash_in_list = False\\n    if CONTENT is not None:\\n        if \\\"errorCode\\\" in CONTENT and CONTENT[\\\"errorCode\\\"] == 410:\\n            # The finger print list doesn\u0027t already exist.\\n            pass\\n        elif \\\"data\\\" in CONTENT:\\n            # Finger print list exists set flag for gateway.\\n            fpl_exists = True\\n            workflow.addProperty(\\\"fpl_exists\\\", {})\\n            # Add property  whcih can be used by delete fingerprint list function if called.\\n            workflow.addProperty(\\\"sep_fingerprintlist_name\\\", {\\\"fingerprintlist_name\\\": INPUTS[\\\"sep_fingerprintlist_name\\\"]})\\n        if \\\"data\\\" in CONTENT and artifact.value.upper() in [d.upper() for d in CONTENT[\\\"data\\\"]]:\\n            # Finger print list exists and hash in list set flag for hash in list.\\n            hash_in_list = True\\n            workflow.addProperty(\\\"hash_in_list\\\", {})\\n            if len(CONTENT[\\\"data\\\"]) == 1:\\n                # This is the last hash value, delete list instead.\\n                last_hash_in_list = True\\n                workflow.addProperty(\\\"last_hash_in_list\\\", {})\\n\\n    if not hash_in_list:\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The hash \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; has not been detected in the \\\" \\\\\\n                    u\\\"fingerprint list \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for domain id \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;.\\\"\\\\\\n            .format(WF_NAME, artifact.value, unicode(INPUTS[\\\"sep_fingerprintlist_name\\\"]),\\n                    INPUTS[\\\"sep_domainid\\\"], FN_NAME)\\n        incident.addNote(helper.createRichText(note_text))\\n\\n    if last_hash_in_list:\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The hash \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; is the only hash in the fingerprint \\\" \\\\\\n                    u\\\"list \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for domain id \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt;.\\\"\\\\\\n            .format(WF_NAME, artifact.value, unicode(INPUTS[\\\"sep_fingerprintlist_name\\\"]),\\n                    INPUTS[\\\"sep_domainid\\\"], FN_NAME)\\n        incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"domain_content_results =  workflow.properties.get_domains_results\\ndomain_content = domain_content_results.content\\n\\nfor i in range(len(domain_content)):\\n  if domain_content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    inputs.sep_domainid = domain_content[i][\\\"id\\\"]\\n    break\\n\\ninputs.sep_fingerprintlist_name = rule.properties.sep_fingerprintlist_name\",\"result_name\":\"fpl_content_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0v2nltq\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_11h8805\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_162hm01\" name=\"SEP - Update Fingerprint List\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"86fbaf45-bb0f-4ba0-a988-cc603d315e49\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_update_fingerprint_list script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_description\u0027: u\u0027Hash of type Malware MD5 Hash\u0027, u\u0027sep_fingerprintlist_name\u0027: u\u0027Blacklist_2\u0027,\\n                   u\u0027sep_hash_value\u0027: u\u00270B26E313ED4A7CA6904B0E9369E5B957,482F9B6E0CC4C1DBBD772AAAF088CB3A\u0027,\\n                   u\u0027sep_domainid\u0027: u\u0027A9B4B7160946C25D24B6AA458EF5557F\u0027,\\n                   u\u0027sep_fingerprintlist_id\u0027: u\u0027D132F4BA85D64E9F941906C2ECBF3F5F\u0027\\n                   },\\n        \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-14 10:48:45\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                    \u0027host\u0027: \u0027myhost.com\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1131\\n                    }, \u0027success\u0027: True,\\n                    \u0027content\u0027: \u0027\u0027,\\n                    \u0027raw\u0027: \u0027\\\"\\\"\u0027,\\n                    \u0027reason\u0027: None,\\n                    \u0027version\u0027: \u00271.0\u0027\\n\\n}\\n\\\"\\\"\\\"\\nFN_NAME = \\\"fn_sep_update_fingerprint_list\\\"\\nWF_NAME = \\\"Delete Hash from Fingerprint List\\\"\\nCONTENT = results.content\\nINPUTS = results.inputs\\n\\ndef main():\\n    if CONTENT is not None:\\n        # If we got here we assume we are successsful, no status messgae is returned by api.\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Successfully removed MD5 hash \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; from fingerprint \\\" \\\\\\n                    u\\\"list \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, artifact.value, unicode(INPUTS[\\\"sep_fingerprintlist_name\\\"]),\\n                    FN_NAME)\\n\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There was \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                     \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"domain_content_results =  workflow.properties.get_domains_results\\nfpl_content_results = workflow.properties.fpl_content_results\\ndomain_content = domain_content_results.content\\nfpl_content = fpl_content_results.content\\n\\ninputs.sep_hash_value = artifact.value\\n\\nfor i in range(len(domain_content)):\\n  if domain_content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    inputs.sep_domainid = domain_content[i][\\\"id\\\"]\\n    break\\n\\nif artifact.description is not None:\\n    inputs.sep_description = artifact.description.content\\nelse:\\n    inputs.sep_description = u\\\"Hash of type {}\\\".format(unicode(artifact.type))\\n    \\nif fpl_content[\\\"name\\\"] ==  rule.properties.sep_fingerprintlist_name:\\n    inputs.sep_fingerprintlist_id = fpl_content[\\\"id\\\"]\\n\\n\\nif fpl_content[\\\"name\\\"] ==  rule.properties.sep_fingerprintlist_name:\\n    inputs.sep_fingerprintlist_id = fpl_content[\\\"id\\\"]\\n    inputs.sep_fingerprintlist_name = fpl_content[\\\"name\\\"]\\n    if fpl_content[\\\"data\\\"] is not None:\\n        inputs.sep_hash_value = \u0027,\u0027.join([hv for hv in fpl_content[\\\"data\\\"] if hv.lower() != artifact.value.lower()])\\n\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1ipha1l\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1dh77nx\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cendEvent id=\"EndEvent_18ctqi5\"\u003e\u003cincoming\u003eSequenceFlow_1dh77nx\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1dh77nx\" sourceRef=\"ServiceTask_162hm01\" targetRef=\"EndEvent_18ctqi5\"/\u003e\u003cendEvent id=\"EndEvent_0v07fj3\"\u003e\u003cincoming\u003eSequenceFlow_01uickx\u003c/incoming\u003e\u003c/endEvent\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_1kxhqy5\"\u003e\u003cincoming\u003eSequenceFlow_11h8805\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1ipha1l\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_01uickx\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_1apinor\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_11h8805\" sourceRef=\"ServiceTask_0giri6n\" targetRef=\"ExclusiveGateway_1kxhqy5\"/\u003e\u003csequenceFlow id=\"SequenceFlow_1ipha1l\" name=\"Fingerprint list exists, hash in list\" sourceRef=\"ExclusiveGateway_1kxhqy5\" targetRef=\"ServiceTask_162hm01\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"hash_in_list\\\", None) != None\",\"language\":\"python\"}},{\"evaluation_id\":2,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"fpl_exists\\\", None) != None\",\"language\":\"python\"}},{\"evaluation_id\":3,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"last_hash_in_list\\\", None) == None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_01uickx\" name=\"Hash not in list\" sourceRef=\"ExclusiveGateway_1kxhqy5\" targetRef=\"EndEvent_0v07fj3\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"hash_in_list\\\", None) == None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003cserviceTask id=\"ServiceTask_1bgeys4\" name=\"SEP - Delete Fingerprint List\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"e710d302-1010-4994-a02c-87377bfde59e\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_delete_fingerprint_list script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_fingerprintlist_id\u0027: u\u00272728515A08A4481B8207623558254F60\u0027},\\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-14 11:49:38\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                    \u0027host\u0027: \u0027myhost.com\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1137\\n                    },\\n         \u0027success\u0027: True,\\n         \u0027content\u0027: \u0027\u0027,\\n         \u0027raw\u0027: \u0027\\\"\\\"\u0027,\\n         \u0027reason\u0027: None,\\n         \u0027version\u0027: \u00271.0\u0027\\n\\n}\\n\\\"\\\"\\\"\\n\\nFN_NAME = \\\"fn_sep_update_fingerprint_list\\\"\\nWF_NAME = \\\"Delete Fingerprint List\\\"\\nCONTENT = results.content\\nFP_LIST_NAME = workflow.properties.get(\\\"sep_fingerprintlist_name\\\", None)[\\\"fingerprintlist_name\\\"]\\n\\ndef main():\\n    if CONTENT is not None:\\n        # If we got here we assume we are successsful, no status messgage is returned by api.\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Successfully deleted fingerprint list \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                    u\\\"for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, unicode(FP_LIST_NAME), FN_NAME)\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There was \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                     \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\\n\",\"pre_processing_script\":\"fpl_content_results = workflow.properties.fpl_content_results\\nfpl_content = fpl_content_results.content\\n    \\nif fpl_content[\\\"name\\\"] ==  rule.properties.sep_fingerprintlist_name:\\n    inputs.sep_fingerprintlist_id = fpl_content[\\\"id\\\"]\\n\\n\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1apinor\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1wzicdx\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1apinor\" name=\"Last hash in list\" sourceRef=\"ExclusiveGateway_1kxhqy5\" targetRef=\"ServiceTask_1bgeys4\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"last_hash_in_list\\\", None) != None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003cendEvent id=\"EndEvent_19hhdbk\"\u003e\u003cincoming\u003eSequenceFlow_1wzicdx\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1wzicdx\" sourceRef=\"ServiceTask_1bgeys4\" targetRef=\"EndEvent_19hhdbk\"/\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_1kzdufb\"\u003e\u003cincoming\u003eSequenceFlow_0ve607k\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0v2nltq\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_0ky6jnv\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_0ve607k\" sourceRef=\"ServiceTask_0am1izt\" targetRef=\"ExclusiveGateway_1kzdufb\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0v2nltq\" name=\"Domain id exists\" sourceRef=\"ExclusiveGateway_1kzdufb\" targetRef=\"ServiceTask_0giri6n\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"domid_exists\\\", None) != None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003cendEvent id=\"EndEvent_0r7d527\"\u003e\u003cincoming\u003eSequenceFlow_0ky6jnv\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0ky6jnv\" name=\"Domain id does not exist\" sourceRef=\"ExclusiveGateway_1kzdufb\" targetRef=\"EndEvent_0r7d527\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"domid_exists\\\", None) == None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0i1qa65\"\u003e\u003ctext\u003eGet domain id by name. Input: Domain name selected from activity field.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0bvlsgi\" sourceRef=\"ServiceTask_0am1izt\" targetRef=\"TextAnnotation_0i1qa65\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_055rsea\"\u003e\u003ctext\u003eGet fingerprint list information by name for domain by id. input: Fingerprint list\u00a0 name selected from\u00a0 activity field.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_14bd1vg\" sourceRef=\"ServiceTask_0giri6n\" targetRef=\"TextAnnotation_055rsea\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1uq5ayd\"\u003e\u003ctext\u003e\u003c![CDATA[Update (delete) hash value from\u00a0 fingerprint list by id for domain by id.\u00a0 Input: Hash value input assigned from artifact value.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_153fcta\" sourceRef=\"ServiceTask_162hm01\" targetRef=\"TextAnnotation_1uq5ayd\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1t5n6ic\"\u003e\u003ctext\u003e\u003c![CDATA[Delete fingerprint\u00a0 list by id .\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0n8h1w6\" sourceRef=\"ServiceTask_1bgeys4\" targetRef=\"TextAnnotation_1t5n6ic\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0am1izt\" id=\"ServiceTask_0am1izt_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"248\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0uc7t2u\" id=\"SequenceFlow_0uc7t2u_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"248\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"223\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0giri6n\" id=\"ServiceTask_0giri6n_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"563\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_162hm01\" id=\"ServiceTask_162hm01_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"696\" y=\"46\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_18ctqi5\" id=\"EndEvent_18ctqi5_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"868\" y=\"68\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"841\" y=\"107\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1dh77nx\" id=\"SequenceFlow_1dh77nx_di\"\u003e\u003comgdi:waypoint x=\"796\" xsi:type=\"omgdc:Point\" y=\"86\"/\u003e\u003comgdi:waypoint x=\"868\" xsi:type=\"omgdc:Point\" y=\"86\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"787\" y=\"64.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0v07fj3\" id=\"EndEvent_0v07fj3_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"868\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"841\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_1kxhqy5\" id=\"ExclusiveGateway_1kxhqy5_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"721\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"701\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_11h8805\" id=\"SequenceFlow_11h8805_di\"\u003e\u003comgdi:waypoint x=\"663\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"721\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"647\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1ipha1l\" id=\"SequenceFlow_1ipha1l_di\"\u003e\u003comgdi:waypoint x=\"746\" xsi:type=\"omgdc:Point\" y=\"181\"/\u003e\u003comgdi:waypoint x=\"746\" xsi:type=\"omgdc:Point\" y=\"149\"/\u003e\u003comgdi:waypoint x=\"746\" xsi:type=\"omgdc:Point\" y=\"149\"/\u003e\u003comgdi:waypoint x=\"746\" xsi:type=\"omgdc:Point\" y=\"126\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"89\" x=\"701.5\" y=\"139.58947368421053\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_01uickx\" id=\"SequenceFlow_01uickx_di\"\u003e\u003comgdi:waypoint x=\"771\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"796\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"796\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"868\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"75\" x=\"744.3231707317074\" y=\"191\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1bgeys4\" id=\"ServiceTask_1bgeys4_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"696\" y=\"278\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1apinor\" id=\"SequenceFlow_1apinor_di\"\u003e\u003comgdi:waypoint x=\"746\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"746\" xsi:type=\"omgdc:Point\" y=\"278\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"78\" x=\"707\" y=\"247.7608695652174\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_19hhdbk\" id=\"EndEvent_19hhdbk_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"868\" y=\"300\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"841\" y=\"339\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1wzicdx\" id=\"SequenceFlow_1wzicdx_di\"\u003e\u003comgdi:waypoint x=\"796\" xsi:type=\"omgdc:Point\" y=\"318\"/\u003e\u003comgdi:waypoint x=\"868\" xsi:type=\"omgdc:Point\" y=\"318\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"787\" y=\"296.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_1kzdufb\" id=\"ExclusiveGateway_1kzdufb_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"405\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"385\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0ve607k\" id=\"SequenceFlow_0ve607k_di\"\u003e\u003comgdi:waypoint x=\"348\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"405\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"331.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0v2nltq\" id=\"SequenceFlow_0v2nltq_di\"\u003e\u003comgdi:waypoint x=\"455\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"563\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"83\" x=\"468.34375\" y=\"185\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0r7d527\" id=\"EndEvent_0r7d527_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"412\" y=\"314\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"385\" y=\"353\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0ky6jnv\" id=\"SequenceFlow_0ky6jnv_di\"\u003e\u003comgdi:waypoint x=\"430\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"430\" xsi:type=\"omgdc:Point\" y=\"272\"/\u003e\u003comgdi:waypoint x=\"430\" xsi:type=\"omgdc:Point\" y=\"272\"/\u003e\u003comgdi:waypoint x=\"430\" xsi:type=\"omgdc:Point\" y=\"314\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"79\" x=\"406\" y=\"241.79012345679013\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0i1qa65\" id=\"TextAnnotation_0i1qa65_di\"\u003e\u003comgdc:Bounds height=\"38\" width=\"200\" x=\"198\" y=\"67\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0bvlsgi\" id=\"Association_0bvlsgi_di\"\u003e\u003comgdi:waypoint x=\"298\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"298\" xsi:type=\"omgdc:Point\" y=\"105\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_055rsea\" id=\"TextAnnotation_055rsea_di\"\u003e\u003comgdc:Bounds height=\"46\" width=\"251\" x=\"413\" y=\"63\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_14bd1vg\" id=\"Association_14bd1vg_di\"\u003e\u003comgdi:waypoint x=\"588\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"552\" xsi:type=\"omgdc:Point\" y=\"109\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1uq5ayd\" id=\"TextAnnotation_1uq5ayd_di\"\u003e\u003comgdc:Bounds height=\"45\" width=\"332\" x=\"1021\" y=\"133\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_153fcta\" id=\"Association_153fcta_di\"\u003e\u003comgdi:waypoint x=\"796\" xsi:type=\"omgdc:Point\" y=\"95\"/\u003e\u003comgdi:waypoint x=\"1044\" xsi:type=\"omgdc:Point\" y=\"133\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1t5n6ic\" id=\"TextAnnotation_1t5n6ic_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"148\" x=\"1027\" y=\"235\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0n8h1w6\" id=\"Association_0n8h1w6_di\"\u003e\u003comgdi:waypoint x=\"796\" xsi:type=\"omgdc:Point\" y=\"309\"/\u003e\u003comgdi:waypoint x=\"1027\" xsi:type=\"omgdc:Point\" y=\"264\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Update a blacklist fingerprint list to remove an MD5 hash.\nNote: The fingerprint list will be deleted if only a single MD5 hash is remaining in the list.",
      "export_key": "wf_sep_delete_hash_from_fingerprint_list",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002341574,
      "name": "Example: SEP - Delete Hash from Blacklist",
      "object_type": "artifact",
      "programmatic_name": "wf_sep_delete_hash_from_fingerprint_list",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "c430f574-c952-462c-a86a-075ce113e126",
      "workflow_id": 418
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_get_endpoints_status_refresh",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_endpoints_status_refresh\" isExecutable=\"true\" name=\"Example: SEP - Get Endpoints status summary (refresh)\"\u003e\u003cdocumentation\u003eGet overall Endpoint status (refresh data table row).\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1upovid\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0vc871h\" name=\"SEP - Get Computers\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"91343444-7a62-4f7f-9812-918531b6bf10\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_computers script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_status\u0027: True},\\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-24 11:06:24\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                    \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1157},\\n         \u0027success\u0027: True,\\n         \u0027content\u0027: {\u0027out_of_date\u0027: 0, \u0027hi_failed\u0027: 1, \u0027disabled\u0027: 0, \u0027up_to_date\u0027: 3, \u0027non_compliant\u0027: 1,\\n                     \u0027total\u0027: 3, \u0027offline\u0027: 0},\\n         \u0027raw\u0027: \u0027{\\\"out_of_date\\\": 0, \\\"hi_failed\\\": 1, \\\"disabled\\\": 0, \\\"up_to_date\\\": 3, \\\"non_compliant\\\": 1,\\n                  \\\"total\\\": 3, \\\"offline\\\": 0}\u0027,\\n         \u0027reason\u0027: None,\\n         \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable for \\\"Get Endpoints status\\\" workflow.\\nDATA_TBL_FIELDS = [\\\"query_execution_date\\\", \\\"non_compliant\\\", \\\"up_to_date\\\", \\\"out_of_date\\\", \\\"total\\\", \\\"disabled\\\",\\n                   \\\"offline\\\",\\\"hi_failed\\\", ]\\nFN_NAME = \\\"fn_sep_get_computers\\\"\\nWF_NAME = \\\"Get Endpoints status\\\"\\nCONTENT = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\n\\ndef main():\\n    note_text = \u0027\u0027\\n    \\n    if CONTENT is not None and CONTENT[\\\"total\\\"] \u0026gt; 0:\\n        if CONTENT[\\\"total\\\"] \u0026gt; 0:\\n          \\n            row.query_execution_date = QUERY_EXECUTION_DATE\\n            for f in DATA_TBL_FIELDS:\\n                if f == \\\"query_execution_date\\\":\\n                    continue\\n                row[f] = CONTENT[f]\\n\\n        if CONTENT[\\\"non_compliant\\\"] \u0026gt; 0:\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; non-compliant endpoints \\\" \\\\\\n                        \\\"detected out of a total of \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format(WF_NAME, CONTENT[\\\"non_compliant\\\"], CONTENT[\\\"total\\\"], FN_NAME)\\n        else:\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; non-compliant endpoints \\\" \\\\\\n                         \\\"detected out of a total of \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\" \\\\\\n                .format(WF_NAME, CONTENT[\\\"total\\\"], FN_NAME)\\n    else:\\n        note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                    \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_status = True\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1upovid\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1pldn24\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1upovid\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0vc871h\"/\u003e\u003cendEvent id=\"EndEvent_02p0kyf\"\u003e\u003cincoming\u003eSequenceFlow_1pldn24\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1pldn24\" sourceRef=\"ServiceTask_0vc871h\" targetRef=\"EndEvent_02p0kyf\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1sjj38v\"\u003e\u003ctext\u003e\u003c![CDATA[Get/refresh overall\u00a0 endpoint status. Input parameter sep_status set to True. Update data table entry with latest results.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1ckcwv1\" sourceRef=\"ServiceTask_0vc871h\" targetRef=\"TextAnnotation_1sjj38v\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0vc871h\" id=\"ServiceTask_0vc871h_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"264\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1upovid\" id=\"SequenceFlow_1upovid_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"264\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"231\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_02p0kyf\" id=\"EndEvent_02p0kyf_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"419\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"437\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1pldn24\" id=\"SequenceFlow_1pldn24_di\"\u003e\u003comgdi:waypoint x=\"364\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"419\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"391.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1sjj38v\" id=\"TextAnnotation_1sjj38v_di\"\u003e\u003comgdc:Bounds height=\"67\" width=\"218\" x=\"204\" y=\"51\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1ckcwv1\" id=\"Association_1ckcwv1_di\"\u003e\u003comgdi:waypoint x=\"314\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"314\" xsi:type=\"omgdc:Point\" y=\"118\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Get overall Endpoint status (refresh data table row).",
      "export_key": "wf_sep_get_endpoints_status_refresh",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002343763,
      "name": "Example: SEP - Get Endpoints status summary (refresh)",
      "object_type": "sep_endpoint_status_summary",
      "programmatic_name": "wf_sep_get_endpoints_status_refresh",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "ff3c182c-5896-40f0-85bd-eedab07b5483",
      "workflow_id": 421
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_initiate_eoc_scan_for_artifact",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_initiate_eoc_scan_for_artifact\" isExecutable=\"true\" name=\"Example: SEP - Initiate EOC Scan for Artifact\"\u003e\u003cdocumentation\u003eInitiate an Evidence of Compromise (EOC) scan on artifacts of type file (name or path) or hash (MD5, SHA1 or SHA256) against all endpoints.  Use returned command id to get the initial command status and information on any matches for each endpoint.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0xb8u6k\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0rzdc39\" name=\"SEP - Get Computers\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"91343444-7a62-4f7f-9812-918531b6bf10\"\u003e{\"inputs\":{},\"pre_processing_script\":\"inputs.sep_matching_endpoint_ids = True\",\"result_name\":\"get_computers_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0xb8u6k\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0h8wmqc\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0xb8u6k\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0rzdc39\"/\u003e\u003cserviceTask id=\"ServiceTask_0pk1dod\" name=\"SEP - Scan Endpoints\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"cc7fd805-db7a-4c37-aa0e-29ffd1752eec\"\u003e{\"inputs\":{\"cb92fbc0-79a0-48fe-b048-8c62ef5ea42f\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"810db651-8a47-4931-a4b4-1e579d08088d\"}},\"5b452d96-e040-46b3-ac15-828c9ffddbfa\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"93b82e92-6f87-431a-9c2a-9f5d0f2c621b\"}}},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_upload_file_to_sepm script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_description\u0027: u\u0027Scan to remediate file based on sha256\u0027, u\u0027sep_computer_ids\u0027: u\u0027D31AA16E0946C25D40C83823C500518B\u0027,\\n                    u\u0027sep_scan_action\u0027: None, u\u0027sep_file_path\u0027: u\u0027C:\\\\\\\\temp\\\\\\\\eicar.zip\u0027, u\u0027sep_group_ids\u0027: u\u0027CAD80F000946C25D6C150831060AA326\u0027,\\n                    u\u0027sep_sha256\u0027: None, u\u0027sep_scan_type\u0027: {u\u0027name\u0027: u\u0027FULL_SCAN\u0027, u\u0027id\u0027: 229}},\\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-04-12 10:49:22\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 12349},\\n         \u0027success\u0027: True, \u0027content\u0027: {u\u0027commandID_computer\u0027: u\u00270F0CBDD7EDFF4634B23FA11F5AB81FFC\u0027, u\u0027commandID_group\u0027: u\u0027BB37F78894DB451B8E8921EC127667A3\u0027},\\n         \u0027raw\u0027: \u0027{\\\"commandID_computer\\\": \\\"0F0CBDD7EDFF4634B23FA11F5AB81FFC\\\", \\\"commandID_group\\\": \\\"BB37F78894DB451B8E8921EC127667A3\\\"}\u0027,\\n         \u0027reason\u0027: None,\\n         \u0027version\u0027: \u00271.0\u0027\\n}\\n\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"scan_commandID\\\"]\\nFN_NAME = \\\"fn_sep_scan_endpoints\\\"\\nWF_NAME = \\\"Initiate EOC Scan for Artifact\\\"\\n# Processing\\nCONTENT = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\nnote_text = \u0027\u0027\\n\\ndef main():\\n    note_text = \u0027\u0027\\n    if CONTENT  is not None:\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Returned command id \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for a \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; \\\" \\\\\\n                    \\\"scan on artifact \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, CONTENT[\\\"commandID_computer\\\"], INPUTS[\\\"sep_scan_type\\\"], unicode(artifact.value), FN_NAME)\\n    else:\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There was \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; command id returned for a \\\" \\\\\\n                    \\\"\u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; scan on artifact \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, INPUTS[\\\"sep_scan_type\\\"], INPUTS[\\\"sep_file_path\\\"], unicode(artifact.value), FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"GET_COMPUTERS_CONTENT = workflow.properties.get_computers_results.content\\nARTIFACT_TYPE = artifact.type\\nARTIFACT_VALUE = artifact.value\\nARTIFACT_DESCRIPTION = artifact.description\\nARTIFACT_TYPE_TO_ROW = {\\n    \\\"File Name\\\": \\\"file_name\\\",\\n    \\\"File Path\\\": \\\"file_path\\\",\\n    \\\"Malware MD5 Hash\\\": \\\"md5\\\",\\n    \\\"Malware SHA-1 Hash\\\": \\\"sha1\\\",\\n    \\\"Malware SHA-256 Hash\\\": \\\"sha256\\\"\\n}\\nARTIFACT_TYPES = [ v for v in sorted(ARTIFACT_TYPE_TO_ROW.values())]\\nCOMPUTER_IDS = []\\n## Processing\\n\\ndef get_computers():\\n    global COMPUTER_IDS\\n    # Get computers to run scan against from previous step.\\n    if GET_COMPUTERS_CONTENT is not None and GET_COMPUTERS_CONTENT[\\\"endpoints_matching_ids\\\"]:\\n        COMPUTER_IDS = GET_COMPUTERS_CONTENT[\\\"endpoints_matching_ids\\\"]\\n\\ndef set_inputs(fn, fp, md5, sha1, sha256):\\n    global COMPUTER_IDS\\n    inputs.sep_file_path = fn if fp is None else fp\\n    inputs.sep_md5 = md5\\n    inputs.sep_sha1 = sha1\\n    inputs.sep_sha256 = sha256\\n    inputs.sep_computer_ids = \u0027,\u0027.join(COMPUTER_IDS)\\n    inputs.sep_scan_type = rule.properties.sep_scan_type\\n    inputs.sep_scan_action = None\\n    if ARTIFACT_DESCRIPTION is not None:\\n        inputs.sep_description = u\\\"Scan eoc for {0}\\\".format(unicode(ARTIFACT_DESCRIPTION[\\\"content\\\"]))\\n    else:\\n        inputs.sep_description = u\\\"Scan eoc for for suspicious hash of type {0} and value {1} in the SEP environment.\\\".format(ARTIFACT_TYPE, ARTIFACT_VALUE)\\n\\ndef main():\\n    get_computers()\\n    # Assign values to correct row based on artifact type\\n    types = [None if t not in ARTIFACT_TYPE_TO_ROW[ARTIFACT_TYPE] else ARTIFACT_VALUE for t in ARTIFACT_TYPES]\\n    set_inputs(*types)\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"result_name\":\"scan_eoc_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0h8wmqc\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_17ndhto\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0h8wmqc\" sourceRef=\"ServiceTask_0rzdc39\" targetRef=\"ServiceTask_0pk1dod\"/\u003e\u003cserviceTask id=\"ServiceTask_0er956h\" name=\"SEP - Get Command Status\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"b29ec053-be35-4311-9d8f-1b6275664c0d\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_command_status script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\\n    \u0027inputs\u0027: {u\u0027sep_commandid\u0027: u\u00272F260501C22842ABBA7EB0805D92EFE0\u0027},\\n    \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-03-01 12:46:27\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027,\\n    \u0027execution_time_ms\u0027: 1085},\\n    \u0027success\u0027: True,\\n    \u0027content\u0027:\\n                {\\n                  \\\"sort\\\": [\\n                    {\\n                      \\\"direction\\\": \\\"ASC\\\",\\n                      \\\"property\\\": \\\"Begintime\\\",\\n                      \\\"ascending\\\": true\\n                    }\\n                  ],\\n                  \\\"number\\\": 0,\\n                  \\\"firstPage\\\": true,\\n                  \\\"content\\\": [\\n                    {\\n                      \\\"computerName\\\": \\\"ep1\\\",\\n                      \\\"subStateId\\\": 0,\\n                      \\\"binaryFileId\\\": null,\\n                      \\\"lastUpdateTime\\\": null,\\n                      \\\"domainName\\\": \\\"Default\\\",\\n                      \\\"hardwareKey\\\": \\\"1771D79454E53469DF4B290C06C104C9\\\",\\n                      \\\"subStateDesc\\\": null,\\n                      \\\"stateId\\\": 0,\\n                      \\\"computerId\\\": \\\"D31AA16E0946C25D40C83823C500518B\\\",\\n                      \\\"computerIp\\\": \\\"9.70.194.93\\\",\\n                      \\\"beginTime\\\": null,\\n                      \\\"currentLoginUserName\\\": \\\"Administrator\\\",\\n                      \\\"resultInXML\\\": null\\n                    },\\n                    {\\n                      \\\"computerName\\\": \\\"ep2\\\",\\n                      \\\"subStateId\\\": 0,\\n                      \\\"binaryFileId\\\": null,\\n                      \\\"lastUpdateTime\\\": null,\\n                      \\\"domainName\\\": \\\"Default\\\",\\n                      \\\"hardwareKey\\\": \\\"DC7D24D6465566D2941F35BC8D17801E\\\",\\n                      \\\"subStateDesc\\\": null,\\n                      \\\"stateId\\\": 0,\\n                      \\\"computerId\\\": \\\"89AD1BBB0946C25D25E6C0984E971D8A\\\",\\n                      \\\"computerIp\\\": \\\"9.70.194.94\\\",\\n                      \\\"beginTime\\\": null,\\n                      \\\"currentLoginUserName\\\": \\\"Administrator\\\",\\n                      \\\"resultInXML\\\": null\\n                    }\\n                  ],\\n                  \\\"lastPage\\\": true,\\n                  \\\"totalPages\\\": 1,\\n                  \\\"size\\\": 20,\\n                  \\\"totalElements\\\": 2,\\n                  \\\"numberOfElements\\\": 2\\n                }\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"scan_result\\\"]\\nFN_NAME = \\\"fn_sep_get_command_status\\\"\\nWF_NAME = \\\"Initiate EOC Scan for Artifact\\\"\\nC_OUTER = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\nCOMMAND_ID = INPUTS[\\\"sep_commandid\\\"]\\nSTATUS_TYPE = \\\"Scan\\\"\\nARTIFACT_TYPE = artifact.type\\nARTIFACT_VALUE = artifact.value\\nARTIFACT_TYPE_TO_ROW = {\\n    \\\"File Name\\\": \\\"file_name\\\",\\n    \\\"File Path\\\": \\\"file_path\\\",\\n    \\\"Malware MD5 Hash\\\": \\\"md5\\\",\\n    \\\"Malware SHA-1 Hash\\\": \\\"sha1\\\",\\n    \\\"Malware SHA-256 Hash\\\": \\\"sha256\\\"\\n}\\nROW_NAMES = [v for v in sorted(ARTIFACT_TYPE_TO_ROW.values())]\\nROW_VALUES = [None if t not in ARTIFACT_TYPE_TO_ROW[ARTIFACT_TYPE] else ARTIFACT_VALUE for t in ROW_NAMES]\\n\\n\\n# Processing\\n\\ndef set_row_artifact_info(thisrow):\\n    for i in range(len(ROW_NAMES)):\\n        if ROW_VALUES[i] is not None:\\n            thisrow[ROW_NAMES[i]] = artifact.value\\n\\n\\ndef add_row(match_type, file_path, hash_value, computer_name, computer_id):\\n    newrow = incident.addRow(\u0027sep_eoc_scan_results\u0027)\\n    newrow.scan_type = rule.properties.sep_scan_type.split(\\\"_\\\")[0]\\n    set_row_artifact_info(newrow)\\n    newrow.artifact_id = artifact.id\\n    newrow.scan_commandid = COMMAND_ID\\n    newrow.scan_command_state = \\\"Completed\\\"\\n    newrow.scan_result = \u0027 \u0027.join(match_type.lower().split(\u0027_\u0027)).capitalize()\\n    newrow.query_execution_date = QUERY_EXECUTION_DATE\\n    newrow.file_path = file_path\\n    newrow.hash_value = hash_value\\n    newrow.computer_name = computer_name\\n    newrow.computer_id = computer_id\\n\\n\\ndef add_empty_row(scan_state):\\n    newrow = incident.addRow(\u0027sep_eoc_scan_results\u0027)\\n    newrow.scan_type = rule.properties.sep_scan_type.split(\\\"_\\\")[0]\\n    newrow.artifact_value = artifact.value\\n    newrow.artifact_type = artifact.type\\n    newrow.artifact_id = artifact.id\\n    newrow.query_execution_date = QUERY_EXECUTION_DATE\\n    newrow.scan_commandid = COMMAND_ID\\n    newrow.scan_command_state = scan_state\\n    newrow.scan_result = \\\"Query\\\"\\n    return newrow\\n\\n\\ndef get_file_name(file_path):\\n    return file_path.split(\\\"\\\\\\\\\\\")[-1] if \u0027\\\\\\\\\u0027 in file_path else file_path.split(\\\"/\\\")[-1]\\n\\n\\n\\ndef main():\\n    match_types = [\\\"HASH_MATCH\\\", \\\"FULL_MATCH\\\", \\\"PARTIAL_MATCH\\\"]\\n    scan_state = C_OUTER[\\\"overall_command_state\\\"]\\n    total_ep_count =  C_OUTER[\\\"total_ep_count\\\"]\\n    total_match_count = C_OUTER[\\\"total_match_count\\\"]\\n    total_not_completed = C_OUTER[\\\"total_not_completed\\\"]\\n    total_completed = total_ep_count - total_not_completed\\n    hits_over_limit = C_OUTER[\\\"scan_eoc_hits_over_limit\\\"]\\n    truncated_count = C_OUTER[\\\"truncated_count\\\"]\\n    att_name = C_OUTER[\\\"att_name\\\"]\\n    ep_match_count = 0\\n    note_text = \u0027\u0027\\n    status_note = \u0027\u0027\\n    if C_OUTER is not None:\\n        status_note =  \\\"The command Completed on \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; of \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; targeted endpoints.\\\".format(total_completed, total_ep_count)\\n        if total_not_completed:\\n            status_note += \\\"\u0026lt;br\u0026gt;Note: There were \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; endpoints on which the command has not completed. Please review console/logs  \\\" \\\\\\n                           \\\"on the Symantec SEPM server for further details if required.\\\".format(total_not_completed)\\n\\n        if hits_over_limit is not None:\\n            newrow = add_empty_row()\\n            newrow.scan_result = \\\"Query: Matches over limit see note/attachment.\\\"\\n            note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : \u0027EOC Scan for artifact\u0027 for artifact \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                        \\\"of type \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; with command id \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; returned \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; matches in truncated \\\" \\\\\\n                        \\\"results out of a total of \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{6}\u0026lt;/b\u0026gt;.\u0026lt;br\u0026gt;Added full result as an attachment. \\\" \\\\\\n                        \\\"Attachment name : \u0026lt;b\u0026gt;{7}\u0026lt;/b\u0026gt;. {8}\\\" \\\\\\n                .format(WF_NAME, unicode(ARTIFACT_VALUE), ARTIFACT_TYPE, COMMAND_ID, truncated_count, total_match_count, FN_NAME,\\n                        att_name, status_note)\\n        else:\\n            note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : \u0027EOC Scan for artifact\u0027 for artifact \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                        \\\"of type \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; with command id \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; returned \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; matches in results for \\\" \\\\\\n                        \\\"Resilient function \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;. {6}\\\" \\\\\\n                .format(WF_NAME, unicode(ARTIFACT_VALUE), ARTIFACT_TYPE, COMMAND_ID, total_match_count, FN_NAME, status_note)\\n        c_inner = C_OUTER[\\\"content\\\"]\\n\\n        for i in range(len(c_inner)):\\n            ep = c_inner[i]\\n            # Process matches if command status is \u0027Completed\u0027\\n            if ep[\\\"command_status_id\\\"] == 3:\\n                computer_name = ep[\\\"computerName\\\"]\\n                computer_id = ep[\\\"computerId\\\"]\\n                if ep[\\\"scan_result\\\"][\\\"MATCH\\\"]:\\n                    ep_match_count += 1\\n                    for match_type in match_types:\\n                        if len(ep[\\\"scan_result\\\"][match_type+\\\"ES\\\"]) \u0026gt; 0:\\n                            if match_type in match_types[1:]: # Full or parttila match\\n                                fms = ep[\\\"scan_result\\\"][match_type+\\\"ES\\\"]\\n                                if fms:\\n                                    hts = [\\\"sha256\\\", \\\"sha1\\\", \\\"md5\\\"]\\n                                    for fm in fms:\\n                                        add_row(match_type, fm.value, fm.hashValue, computer_name, computer_id)\\n                            else: # Hash match\\n                                hms = ep[\\\"scan_result\\\"][\\\"HASH_MATCHES\\\"]\\n                                if hms:\\n                                    for hm in hms:\\n                                        add_row(match_type, hm.value, row.artifact_value, computer_name,\\n                                                computer_id)\\n\\n            if ep_match_count == 0:\\n                newrow = add_empty_row(scan_state)\\n                if scan_state == \\\"Completed\\\":\\n                    newrow.scan_result = \\\"No match found\\\"\\n        else:\\n            add_empty_row(scan_state)\\n\\n    else:\\n        add_empty_row(scan_state)\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : Scan artifact returned \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results for Resilient function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\" \\\\\\n            .format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"scan_eoc_content = workflow.properties.scan_eoc_results.content\\nscan_eoc_metrics = workflow.properties.scan_eoc_results.metrics\\ninputs.sep_incident_id = incident.id\\ninputs.sep_commandid = scan_eoc_content[\\\"commandID_computer\\\"]\\ninputs.sep_status_type = \\\"scan\\\"\\ninputs.sep_scan_date = scan_eoc_metrics[\\\"timestamp\\\"]\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_17ndhto\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0gcrsmt\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_17ndhto\" sourceRef=\"ServiceTask_0pk1dod\" targetRef=\"ServiceTask_0er956h\"/\u003e\u003cendEvent id=\"EndEvent_16izkd3\"\u003e\u003cincoming\u003eSequenceFlow_0gcrsmt\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0gcrsmt\" sourceRef=\"ServiceTask_0er956h\" targetRef=\"EndEvent_16izkd3\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1qu5tmc\"\u003e\u003ctext\u003e\u003c![CDATA[Get all endpoints by endpoint id only\n. Input: Parameter \u0027sep_matching_endpoint_ids\u0027 = True\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1hxj0lh\" sourceRef=\"ServiceTask_0rzdc39\" targetRef=\"TextAnnotation_1qu5tmc\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1j1fvy0\"\u003e\u003ctext\u003eInitiate an EOC scan. Input: Assigned from an artifact value. Target endpoints will be all endpoints by endpoint id. Output: EOC scan commandid.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1anob6m\" sourceRef=\"ServiceTask_0pk1dod\" targetRef=\"TextAnnotation_1j1fvy0\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0rn3jmu\"\u003e\u003ctext\u003e\u003c![CDATA[Get initial command status for Remediate command by eoc scan commandid.Input:\n\u00a0Scan Commandid from step 2\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_08nsrne\" sourceRef=\"ServiceTask_0er956h\" targetRef=\"TextAnnotation_0rn3jmu\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0rzdc39\" id=\"ServiceTask_0rzdc39_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"238\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0xb8u6k\" id=\"SequenceFlow_0xb8u6k_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"238\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"218\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0pk1dod\" id=\"ServiceTask_0pk1dod_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"523\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0h8wmqc\" id=\"SequenceFlow_0h8wmqc_di\"\u003e\u003comgdi:waypoint x=\"338\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"523\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"385.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0er956h\" id=\"ServiceTask_0er956h_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"810\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_17ndhto\" id=\"SequenceFlow_17ndhto_di\"\u003e\u003comgdi:waypoint x=\"623\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"810\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"671.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_16izkd3\" id=\"EndEvent_16izkd3_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"992\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"965\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0gcrsmt\" id=\"SequenceFlow_0gcrsmt_di\"\u003e\u003comgdi:waypoint x=\"910\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"992\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"906\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1qu5tmc\" id=\"TextAnnotation_1qu5tmc_di\"\u003e\u003comgdc:Bounds height=\"72\" width=\"149\" x=\"216\" y=\"42\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1hxj0lh\" id=\"Association_1hxj0lh_di\"\u003e\u003comgdi:waypoint x=\"289\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"290\" xsi:type=\"omgdc:Point\" y=\"114\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1j1fvy0\" id=\"TextAnnotation_1j1fvy0_di\"\u003e\u003comgdc:Bounds height=\"75\" width=\"335\" x=\"407\" y=\"32\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1anob6m\" id=\"Association_1anob6m_di\"\u003e\u003comgdi:waypoint x=\"574\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"574\" xsi:type=\"omgdc:Point\" y=\"107\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0rn3jmu\" id=\"TextAnnotation_0rn3jmu_di\"\u003e\u003comgdc:Bounds height=\"61\" width=\"202\" x=\"759\" y=\"39\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_08nsrne\" id=\"Association_08nsrne_di\"\u003e\u003comgdi:waypoint x=\"860\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"859\" xsi:type=\"omgdc:Point\" y=\"100\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Initiate an Evidence of Compromise (EOC) scan on artifacts of type file (name or path) or hash (MD5, SHA1 or SHA256) against all endpoints.  Use returned command id to get the initial command status and information on any matches for each endpoint.",
      "export_key": "wf_sep_initiate_eoc_scan_for_artifact",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002336333,
      "name": "Example: SEP - Initiate EOC Scan for Artifact",
      "object_type": "artifact",
      "programmatic_name": "wf_sep_initiate_eoc_scan_for_artifact",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "86900745-92cf-47a1-9c67-19f946a76a78",
      "workflow_id": 411
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_delete_fingerprint_list",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_delete_fingerprint_list\" isExecutable=\"true\" name=\"Example: SEP - Delete Blacklist\"\u003e\u003cdocumentation\u003e\u003c![CDATA[Delete an existing blacklist fingerprint list.\nNote: Also removes it from a any group to which it has been assigned.]]\u003e\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0c36cb8\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_03o9n4i\" name=\"SEP - Delete Fingerprint List\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"e710d302-1010-4994-a02c-87377bfde59e\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_delete_fingerprint_list ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult:{\u0027inputs\u0027: {u\u0027sep_fingerprintlist_id\u0027: u\u0027E60B061FDD844EBF9778D4BD2AC3942A\u0027},\\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-29 10:36:53\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027,\\n                     \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1744},\\n         \u0027success\u0027: True,\\n         \u0027content\u0027: \u0027\u0027,\\n         \u0027raw\u0027: \u0027\\\"\\\"\u0027,\\n         \u0027reason\u0027: None,\\n         \u0027version\u0027: \u00271.0\u0027\\n }\\n\\\"\\\"\\\"\\n#  Globals\\nFN_NAME = \\\"fn_sep_delete_fingerprint_list\\\"\\nWF_NAME = \\\"Delete Fingerprint List\\\"\\nCONTENT = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\n\\ndef main():\\n    note_text = \u0027\u0027\\n\\n    if CONTENT is not None:\\n        if \\\"errorCode\\\" in CONTENT and int(CONTENT[\\\"errorCode\\\"]) == 410:\\n            # The finger print list doesn\u0027t exist.\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The fingerprint list \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; does not exist or is invalid \\\" \\\\\\n                        \\\"for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format( WF_NAME, INPUTS[\\\"sep_fingerprintlist_name\\\"], FN_NAME)\\n        else:\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Successfully deleted fingerprint list  with id \\\" \\\\\\n                        \\\"\u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format(WF_NAME, INPUTS[\\\"sep_fingerprintlist_id\\\"], FN_NAME)\\n\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned \\\" \\\\\\n                     \\\"with fingerprint id \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, INPUTS[\\\"sep_fingerprintlist_id\\\"],  FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_fingerprintlist_id = row.list_id\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0c36cb8\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0dwxa2k\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0c36cb8\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_03o9n4i\"/\u003e\u003cendEvent id=\"EndEvent_1olth1h\"\u003e\u003cincoming\u003eSequenceFlow_0dwxa2k\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0dwxa2k\" sourceRef=\"ServiceTask_03o9n4i\" targetRef=\"EndEvent_1olth1h\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0uh5fsj\"\u003e\u003ctext\u003e\u003c![CDATA[Delete fingerprint list by id.\u00a0 Input parameter is assigned from data table row.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0sm2mmz\" sourceRef=\"ServiceTask_03o9n4i\" targetRef=\"TextAnnotation_0uh5fsj\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_03o9n4i\" id=\"ServiceTask_03o9n4i_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"261\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0c36cb8\" id=\"SequenceFlow_0c36cb8_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"261\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"229.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1olth1h\" id=\"EndEvent_1olth1h_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"426\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"444\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0dwxa2k\" id=\"SequenceFlow_0dwxa2k_di\"\u003e\u003comgdi:waypoint x=\"361\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"426\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"393.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0uh5fsj\" id=\"TextAnnotation_0uh5fsj_di\"\u003e\u003comgdc:Bounds height=\"56\" width=\"303\" x=\"159\" y=\"55\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0sm2mmz\" id=\"Association_0sm2mmz_di\"\u003e\u003comgdi:waypoint x=\"311\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"311\" xsi:type=\"omgdc:Point\" y=\"111\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Delete an existing blacklist fingerprint list.\nNote: Also removes it from a any group to which it has been assigned.",
      "export_key": "wf_sep_delete_fingerprint_list",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002348862,
      "name": "Example: SEP - Delete Blacklist",
      "object_type": "sep_fingerprint_lists",
      "programmatic_name": "wf_sep_delete_fingerprint_list",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "c6b60f0a-4de7-4024-a456-fbd9472c6a7c",
      "workflow_id": 428
    },
    {
      "actions": [],
      "content": {
        "version": 2,
        "workflow_id": "wf_sep_get_endpoint_details",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_endpoint_details\" isExecutable=\"true\" name=\"Example: SEP - Get Endpoint Details\"\u003e\u003cdocumentation\u003e\u003c![CDATA[Get endpoint details for Evidence of Compromise (EOC) data table row \"computer_name\" value.]]\u003e\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0x5nwsi\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_192mbob\" name=\"SEP - Get Computers\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"91343444-7a62-4f7f-9812-918531b6bf10\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_computers script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_computername\u0027: u\u0027WIN-4OA0GKJN830\u0027}, \\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-23 18:40:17\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \\n         \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1966}, \\n         \u0027success\u0027: True, \\n         \u0027content\u0027: {u\u0027sort\u0027: [{u\u0027direction\u0027: u\u0027ASC\u0027, u\u0027property\u0027: u\u0027COMPUTER_NAME\u0027, u\u0027ascending\u0027: True}], u\u0027number\u0027: 0, \\n                     u\u0027firstPage\u0027: True, u\u0027content\u0027: [{u\u0027profileVersion\u0027: u\u002714.2.1031\u0027, u\u0027elamOnOff\u0027: 1, \\n                     u\u0027avEngineOnOff\u0027: 1, u\u0027profileChecksum\u0027: None, u\u0027atpDeviceId\u0027: None, \\n                     u\u0027processorType\u0027: u\u0027Intel64 Family 6 Model 15 Stepping 1\u0027, u\u0027oslanguage\u0027: u\u0027en-US\u0027, \\n                     u\u0027licenseId\u0027: None, u\u0027licenseStatus\u0027: -1, \\n                     u\u0027group\u0027: {u\u0027domain\u0027: {u\u0027id\u0027: u\u0027908090000946C25D330E919313D23887\u0027, u\u0027name\u0027: u\u0027Default\u0027}, u\u0027name\u0027: u\u0027My Company\\\\\\\\JP_TEST_GROUP_1\u0027, u\u0027fullPathName\u0027: None, u\u0027externalReferenceId\u0027: None, u\u0027source\u0027: None, u\u0027id\u0027: u\u00278E20F39B0946C25D118925C2E28C2D59\u0027}, \\n                     u\u0027uuid\u0027: u\u0027EA650B42-D10A-7F9F-A1D2-0A58C4F4CEB1\u0027, \\n                     u\u0027groupUpdateProvider\u0027: False, \\n                     u\u0027edrStatus\u0027: 2, u\u0027freeDisk\u0027: 40542507008, u\u0027diskDrive\u0027: u\u0027C:\\\\\\\\\u0027, u\u0027osFunction\u0027: u\u0027Server\u0027, u\u0027processorClock\u0027: 2394, \\n                     u\u0027mobilePhone\u0027: u\u0027\u0027, u\u0027jobTitle\u0027: u\u0027\u0027, u\u0027last\u00e1HeuristicThreatTime\u0027: 0, u\u0027osname\u0027: u\u0027Windows Server 2012\u0027, \\n                     u\u0027winServers\u0027: [u\u00270.0.0.0\u0027, u\u00270.0.0.0\u0027], u\u0027deploymentMessage\u0027: u\u0027\u0027, u\u0027idsSerialNo\u0027: u\u0027\u0027, \\n                     u\u0027employeeNumber\u0027: u\u0027\u0027, u\u0027snacLicenseId\u0027: None, u\u0027lastSiteId\u0027: u\u0027EE75B0850946C25D5287B58B5173A37C\u0027, \\n                     u\u0027uwf\u0027: 2, u\u0027currentClientId\u0027: u\u0027256B2B130946C25D40C83823AA2E5D4C\u0027, u\u0027osbitness\u0027: u\u0027x64\u0027, \\n                     u\u0027lastScanTime\u0027: 1558613245000, u\u0027email\u0027: u\u0027\u0027, u\u0027securityVirtualAppliance\u0027: None, \\n                     u\u0027worstInfectionIdx\u0027: u\u00270\u0027, u\u0027encryptedDevicePassword\u0027: None, u\u0027lastServerId\u0027: u\u00277D6AAA6F0946C25D170B3A2D442500B6\u0027, \\n                     u\u0027kernel\u0027: None, u\u0027lastUpdateTime\u0027: 1558632769514, u\u0027ptpOnOff\u0027: 1, u\u0027majorVersion\u0027: 14, \\n                     u\u0027lastConnectedIpAddr\u0027: u\u00279.70.194.93\u0027, u\u0027agentVersion\u0027: u\u002714.2.1031.0100\u0027, u\u0027deploymentRunningVersion\u0027: u\u002714.2.1031.0100\u0027, \\n                     u\u0027agentTimeStamp\u0027: 1558632769514, u\u0027osminor\u0027: 2, u\u0027osMajor\u0027: 6, u\u0027deploymentTargetVersion\u0027: u\u002714.2.1031.0100\u0027, \\n                     u\u0027osMinor\u0027: 2, u\u0027osFlavorNumber\u0027: 79, u\u0027logicalCpus\u0027: 0, u\u0027deploymentPreVersion\u0027: u\u0027\u0027, u\u0027hypervisorVendorId\u0027: u\u00270\u0027, \\n                     u\u0027fbwf\u0027: 2, u\u0027osversion\u0027: u\u00276.2\u0027, u\u0027dnsServers\u0027: [u\u00279.70.192.29\u0027, u\u0027FEC0:0000:0000:FFFF:0000:0000:0000:0001\u0027], \\n                     u\u0027vsicStatus\u0027: 3, u\u0027deleted\u0027: 0, u\u0027deploymentStatus\u0027: u\u0027302456832\u0027, u\u0027computerTimeStamp\u0027: 1558622386922, u\u0027bwf\u0027: 2, \\n                     u\u0027totalDiskSpace\u0027: 81567, u\u0027homePhone\u0027: u\u0027\u0027, u\u0027daOnOff\u0027: 1, u\u0027computerDescription\u0027: u\u0027\u0027, u\u0027pepOnOff\u0027: 1, \\n                     \u0027timediffLastUpdateTime\u0027: 448.98237204551697, u\u0027bashStatus\u0027: 1, u\u0027agentUsn\u0027: 2545799, u\u0027osName\u0027: u\u0027Windows Server 2012\u0027, \\n                     \u0027readableLastUpdateTime\u0027: \u00272019-05-23 18:32:49\u0027, u\u0027patternIdx\u0027: u\u00274A80266952462523E3E5AC3B816032AE\u0027, \\n                     u\u0027employeeStatus\u0027: u\u0027\u0027, u\u0027tmpDevice\u0027: None, u\u0027rebootRequired\u0027: 0, u\u0027subnetMasks\u0027: [u\u0027255.255.255.0\u0027, u\u002764\u0027], \\n                     u\u0027minorVersion\u0027: 2, u\u0027osservicePack\u0027: u\u0027\u0027, \u0027timediffLastVirusTime\u0027: 5638590.9823720455, u\u0027lastSiteName\u0027: u\u0027My Site\u0027, \\n                     u\u0027cidsEngineVersion\u0027: u\u00270.0.0.0\u0027, u\u0027lastDeploymentTime\u0027: 1550585147000, u\u0027isGrace\u0027: 0, u\u0027computerUsn\u0027: 2544267, \\n                     u\u0027agentId\u0027: u\u00276E5AA5CB0946C25D40C83823BB5107E6\u0027, u\u0027cidsBrowserFfOnOff\u0027: 1, u\u0027domainOrWorkgroup\u0027: u\u0027WORKGROUP\u0027, \\n                     u\u0027svaId\u0027: None, u\u0027loginDomain\u0027: u\u0027LocalComputer\u0027, u\u0027lastServerName\u0027: u\u0027WIN-4OA0GKJN830\u0027, u\u0027contentUpdate\u0027: 1, \\n                     u\u0027writeFiltersStatus\u0027: None, u\u0027infected\u0027: 0, \u0027timediffLastScanTime\u0027: 19972.982372045517, u\u0027memory\u0027: 6441979904, \\n                     u\u0027freeMem\u0027: 3117060096, u\u0027officePhone\u0027: u\u0027\u0027, u\u0027lastVirusTime\u0027: 1552994627000, u\u0027telemetryMid\u0027: u\u0027890E283B-41D3-4340-A397-66F6AFCAF33E\u0027,\\n                     u\u0027idsVersion\u0027: u\u0027\u0027, u\u0027cidsBrowserIeOnOff\u0027: 1, u\u0027publicKey\u0027: u\u0027BgIAAACkAABSU0ExAAgAAAEAAQDfMtYpvbC2ZOrpGFbK76tuyp2MZ7/6EGsFrqAV3ZBMfvMllksVObpPYvDSc5vCjtzthb1301VADLAspayGytsdAj5z8+LLpOnJkHNg9tIunm1lLkBTitevI6G+nNjyKd7uPn3+bxjk1LL8g1exL2C2SMPEXubdUa1N5xwmhhPHp6PSIAjY74QUcNyplfvylMS9QRWoQ70mqNy9tLLef6+qCYWTqGa7QKXS0WUJs8sJMzWfCrpeMVAmU5/s3yEu+OI+9RKgOeSfy7wRzmAWHQTofjHkYGYqwXcwwLX7AbWjdcpYo0Kaecf8e5t2ZvWyR362EaNxn0HYSjpKraY1hLK1\u0027, \\n                     u\u0027quarantineDesc\u0027: u\u0027Host Integrity check passed\\\\n\u0027, u\u0027cidsDrvMulfCode\u0027: 0, u\u0027biosVersion\u0027: u\u0027INTEL  - 6040000 PhoenixBIOS 4.0 Release 6.0\u0027, \\n                     u\u0027rebootReason\u0027: u\u0027\u0027, u\u0027telemetryHwid\u0027: u\u0027A942D8EB-32C3-E42F-FE83-723FDC431F32\u0027, \u0027readableLastVirusTime\u0027: \u00272019-03-19 11:23:47\u0027, \\n                     u\u0027cidsSilentMode\u0027: 0, u\u0027creationTime\u0027: 1550585043812, u\u0027macAddresses\u0027: [u\u002700-50-56-8B-A6-C3\u0027, u\u002700-50-56-8B-A6-C3\u0027], \\n                     u\u0027idsChecksum\u0027: None, u\u0027operatingSystem\u0027: u\u0027Windows Server 2012 \u0027, u\u0027osmajor\u0027: 6, u\u0027virtualizationPlatform\u0027: u\u0027Unknown\u0027, \\n                     u\u0027ipAddresses\u0027: [u\u00279.70.194.93\u0027, u\u0027FE80:0000:0000:0000:FC67:074E:CD22:0188\u0027], u\u0027physicalCpus\u0027: 1, u\u0027osBitness\u0027: u\u0027x64\u0027, \\n                     u\u0027cidsDefsetVersion\u0027: u\u0027190522063\u0027, u\u0027cidsDrvOnOff\u0027: 1, u\u0027computerName\u0027: u\u0027WIN-4OA0GKJN830\u0027, u\u0027logonUserName\u0027: u\u0027Administrator\u0027, \\n                     u\u0027licenseExpiry\u0027: 0, u\u0027osLanguage\u0027: u\u0027en-US\u0027, u\u0027gateways\u0027: [u\u00279.70.194.1\u0027, u\u00279.70.194.1\u0027, u\u00270.0.0.0\u0027, u\u00270.0.0.0\u0027], \\n                     u\u0027uniqueId\u0027: u\u0027D31AA16E0946C25D40C83823C500518B\u0027, u\u0027department\u0027: u\u0027\u0027, u\u0027isNpvdiClient\u0027: 0, u\u0027dhcpServer\u0027: u\u00270.0.0.0\u0027, \\n                     u\u0027readableLastScanTime\u0027: \u00272019-05-23 13:07:25\u0027, u\u0027osfunction\u0027: u\u0027Server\u0027, u\u0027description\u0027: u\u0027\u0027, u\u0027osflavorNumber\u0027: 79, \\n                     u\u0027tpmDevice\u0027: u\u00270\u0027, u\u0027onlineStatus\u0027: 1, u\u0027lastDownloadTime\u0027: 1558356063096, u\u0027apOnOff\u0027: 1, u\u0027timeZone\u0027: 480, u\u0027fullName\u0027: u\u0027\u0027, \\n                     u\u0027osVersion\u0027: u\u00276.2\u0027, u\u0027attributeExtension\u0027: u\u0027\u0027, u\u0027atpServer\u0027: u\u0027https://9.70.194.99:443\u0027, u\u0027tamperOnOff\u0027: 1, u\u0027osServicePack\u0027: u\u0027\u0027, \\n                     u\u0027agentType\u0027: u\u0027105\u0027, u\u0027serialNumber\u0027: u\u0027VMware-42 0b 65 ea 0a d1 9f 7f-a1 d2 0a 58 c4 f4 ce b1\u0027, u\u0027osElamStatus\u0027: 0, u\u0027installType\u0027: u\u00270\u0027, \\n                     u\u0027profileSerialNo\u0027: u\u00278E20-05/08/2019 07:00:23 015\u0027, u\u0027hardwareKey\u0027: u\u00271771D79454E53469DF4B290C06C104C9\u0027, u\u0027firewallOnOff\u0027: 1}], \\n                     u\u0027lastPage\u0027: True, u\u0027totalPages\u0027: 1, u\u0027numberOfElements\u0027: 1, u\u0027totalElements\u0027: 1, u\u0027size\u0027: 20}, \\n\\n         \u0027raw\u0027: \u0027\u0026lt;content_as_string\u0026gt;\u0027\\n         \u0027reason\u0027: None, \\n         \u0027version\u0027: \u00271.0\u0027}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_amp_get_computers script\\nDATA_TBL_FIELDS = [\\\"query_execution_time\\\", \\\"computerName\\\", \\\"uniqueId\\\", \\\"operatingSystem\\\", \\\"ipAddresses\\\",\\n                   \\\"sep_description\\\", \\\"domain_name\\\", \\\"domain_id\\\", \\\"hardwareKey\\\", \\\"group_name\\\", \\\"group_id\\\",\\n                   \\\"infected\\\"]\\nWF_NAME = \\\"Get Endpoint Details\\\"\\nFN_NAME = \\\"fn_sep_get_computers\\\"\\nC_OUTER = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n\\n# Processing\\n\\ndef main():\\n    note_text = \u0027\u0027\\n    if C_OUTER is not None:\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; results returned for computer name \\\" \\\\\\n                    \\\"\u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\" \\\\\\n            .format(WF_NAME, results[\\\"content\\\"][\\\"numberOfElements\\\"], unicode(INPUTS[\\\"sep_computername\\\"]),\\n                    FN_NAME)\\n\\n        eps = C_OUTER[\\\"content\\\"]\\n        for i in range(len(eps)):\\n            ep_osname = eps[i].get(\\\"osname\\\", \\\"\\\")\\n            newrow = incident.addRow(\\\"sep_endpoint_details\\\")\\n            newrow.query_execution_date = QUERY_EXECUTION_DATE\\n            for f in DATA_TBL_FIELDS:\\n                f_base = f.split(\u0027_\u0027)[0]\\n                if f_base == \\\"query_execution_time\\\":\\n                    continue\\n                if eps[i][f_base] is not None:\\n                    if isinstance(eps[i][f_base], unicode) or isinstance(eps[i][f_base], int) \\\\\\n                            or isinstance(eps[i][f_base], long) or len(eps[i][f_base]) == 0:\\n                        if f_base == \\\"onlineStatus\\\":\\n                            if eps[i][f_base]:\\n                                newrow[f] = \\\"Online\\\"\\n                            else:\\n                                newrow[f] = \\\"Offline\\\"\\n                        elif f_base == \\\"infected\\\":\\n                            if eps[i][f_base]:\\n                                newrow[f] = \\\"Yes\\\"\\n                            else:\\n                                newrow[f] = \\\"No\\\"\\n                        else:\\n                            newrow[f] = eps[i][f_base]\\n                    else:\\n                        newrow[f] = \u0027,\u0027.join(eps[i][f_base])\\n\\n            if \\\"windows\\\" in ep_osname.lower():\\n                if (eps[i][\\\"quarantineDesc\\\"].find(\\\"Host Integrity check passed\\\") == -1):\\n                    newrow.endpoint_quarantine_status = \\\"Quarantined\\\"\\n                else:\\n                    newrow.endpoint_quarantine_status = \\\"Un-Quarantined\\\"\\n            else:\\n                newrow.endpoint_quarantine_status = \\\"\\\"\\n\\n            group = eps[i].group\\n            if group is not None:\\n                newrow.group_name = group[\\\"name\\\"]\\n                newrow.group_id = group[\\\"id\\\"]\\n                domain = group[\\\"domain\\\"]\\n                if domain is not None:\\n                    newrow.domain_name = domain[\\\"name\\\"]\\n                    newrow.domain_id = domain[\\\"id\\\"]\\n\\n    else:\\n        note_text += u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for computer \\\" \\\\\\n                     \\\"name \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\" \\\\\\n            .format(WF_NAME, unicode(INPUTS[\\\"sep_computername\\\"]), FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\\n\",\"post_processing_script_language\":\"python\",\"pre_processing_script\":\"inputs.sep_computername = row.computer_name\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0x5nwsi\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1xa1j2n\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0x5nwsi\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_192mbob\"/\u003e\u003cendEvent id=\"EndEvent_1p6qx0z\"\u003e\u003cincoming\u003eSequenceFlow_1xa1j2n\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1xa1j2n\" sourceRef=\"ServiceTask_192mbob\" targetRef=\"EndEvent_1p6qx0z\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1r41qm6\"\u003e\u003ctext\u003e\u003c![CDATA[Get endpoint properties. Input assigned from data table row. Create new entry for data table \u0027Symantec SEP - Endpoint details\n\u0027 with results.]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_07qwp5h\" sourceRef=\"ServiceTask_192mbob\" targetRef=\"TextAnnotation_1r41qm6\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_192mbob\" id=\"ServiceTask_192mbob_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"244\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0x5nwsi\" id=\"SequenceFlow_0x5nwsi_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"244\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"221\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1p6qx0z\" id=\"EndEvent_1p6qx0z_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"389\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"407\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1xa1j2n\" id=\"SequenceFlow_1xa1j2n_di\"\u003e\u003comgdi:waypoint x=\"344\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"389\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"366.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1r41qm6\" id=\"TextAnnotation_1r41qm6_di\"\u003e\u003comgdc:Bounds height=\"58\" width=\"379\" x=\"104\" y=\"35\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_07qwp5h\" id=\"Association_07qwp5h_di\"\u003e\u003comgdi:waypoint x=\"293\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"292\" xsi:type=\"omgdc:Point\" y=\"93\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 2,
      "description": "Get endpoint details for Evidence of Compromise (EOC) data table row \"computer_name\" value.",
      "export_key": "wf_sep_get_endpoint_details",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002633086,
      "name": "Example: SEP - Get Endpoint Details",
      "object_type": "sep_eoc_scan_results",
      "programmatic_name": "wf_sep_get_endpoint_details",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "b11247c4-b7d6-4a96-856f-e6f2d16bde76",
      "workflow_id": 414
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_get_upload_status",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_upload_status\" isExecutable=\"true\" name=\"Example: SEP - Get Upload status\"\u003e\u003cdocumentation\u003eGet the status of an Upload command.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_11a2xy6\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0agmp5w\" name=\"SEP - Get Command Status\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"b29ec053-be35-4311-9d8f-1b6275664c0d\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_command_status script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: { \u0027inputs\u0027: {u\u0027sep_status_type\u0027: u\u0027quarantine\u0027, u\u0027sep_commandid\u0027: u\u00277D3670DDF5A64A99B3721BF8A375B302\u0027},\\n          \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-04-26 15:25:55\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                      \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1256},\\n          \u0027success\u0027: True,\\n          \u0027content\u0027: {u\u0027sort\u0027: [{u\u0027direction\u0027: u\u0027ASC\u0027, u\u0027property\u0027: u\u0027Begintime\u0027, u\u0027ascending\u0027: True}], \u0027command_state\u0027: \u0027Completed\u0027, u\u0027number\u0027: 0, u\u0027firstPage\u0027: True, \u0027: 0, u\u0027content\u0027: [{u\u0027computerName\u0027: u\u0027WIN-N5KGH4CP3N3\u0027, u\u0027subStateId u\u0027binaryFileId\u0027: None, u\u0027lastUpdateTime\u0027:\\n                        u\u00272019-04-26T11:05:27Z\u0027, u\u0027domainName\u0027: u\u0027Default\u0027, u\u0027hardwareKey\u0027: u\u0027DC7D24D6465566D2941F35BC8D17801E\u0027,\\n                        u\u0027subStateDesc\u0027: u\u0027\u0027, u\u0027stateId\u0027: 3, u\u0027computerId\u0027: u\u002789AD1BBB0946C25D25E6C0984E971D8A\u0027, u\u0027computerIp\u0027: u\u00279.70.194.94\u0027, u\u0027beginTime\u0027: u\u00272019-04-26T11:05:27Z\u0027, u\u0027currentLoginUserName\u0027: u\u0027Administrator\u0027, u\u0027resultInXML\u0027: u\u0027\u0027, \u0027command_status_id\u0027: 3}], u\u0027lastPage\u0027: True, u\u0027totalPages\u0027: 1, u\u0027numberOfElements\u0027: 1, u\u0027totalElements\u0027: 1, u\u0027size\u0027: 20},\\n          \u0027raw\u0027: \u0027{\\\"sort\\\": [{\\\"direction\\\": \\\"ASC\\\", \\\"property\\\": \\\"Begintime\\\", \\\"ascending\\\": true}], \\\"command_state\\\": \\\"Completed\\\", \\\"number\\\": 0, \\\"firstPage\\\": true, \\\"content\\\": [{\\\"computerName\\\": \\\"WIN-N5KGH4CP3N3\\\", \\\"subStateId\\\": 0, \\\"binaryFileId\\\": null, \\\"lastUpdateTime\\\": \\\"2019-04-26T11:05:27Z\\\", \\\"domainName\\\": \\\"Default\\\", \\\"hardwareKey\\\": \\\"DC7D24D6465566D2941F35BC8D17801E\\\", \\\"subStateDesc\\\": \\\"\\\", \\\"stateId\\\": 3, \\\"computerId\\\": \\\"89AD1BBB0946C25D25E6C0984E971D8A\\\", \\\"computerIp\\\": \\\"9.70.194.94\\\", \\\"beginTime\\\": \\\"2019-04-26T11:05:27Z\\\", \\\"currentLoginUserName\\\": \\\"Administrator\\\", \\\"resultInXML\\\": \\\"\\\", \\\"command_status_id\\\": 3}], \\\"lastPage\\\": true, \\\"totalPages\\\": 1, \\\"numberOfElements\\\": 1, \\\"totalElements\\\": 1, \\\"size\\\": 20}\u0027, \u0027reason\u0027: None, \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"query_execution_date\\\", \\\"file_upload_status\\\"]\\nFN_NAME = \\\"fn_sep_get_command_status\\\"\\nWF_NAME = \\\"Get Upload status\\\"\\nSTATUS_TYPE = \\\"upload\\\"\\nFINAL_STATUSES = {\\n    0: \\\"Initial / Not received\\\",\\n    1: \\\"Received\\\",\\n    2: \\\"In progress\\\",\\n    3: \\\"Completed\\\".format(STATUS_TYPE.capitalize()),\\n    4: \\\"Rejected\\\".format(STATUS_TYPE.capitalize()),\\n    5: \\\"Canceled\\\".format(STATUS_TYPE.capitalize()),\\n    6: \\\"Failed\\\".format(STATUS_TYPE.capitalize())\\n}\\n\\n# Processing\\nC_OUTER = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\ndef main():\\n    upload_command_state = C_OUTER[\\\"overall_command_state\\\"]\\n    note_text = \u0027\u0027\\n    if C_OUTER is not None and len(C_OUTER[\\\"content\\\"]) \u0026gt; 0:\\n        row.query_execution_date = QUERY_EXECUTION_DATE\\n        computer = C_OUTER[\\\"content\\\"][0]\\n        if upload_command_state == \\\"Completed\\\":\\n            row.file_upload_status = FINAL_STATUSES[computer[\\\"stateId\\\"]]\\n            if computer[\\\"stateId\\\"] == 3:\\n                row.file_id = computer[\\\"binaryFileId\\\"]\\n            if FINAL_STATUSES[computer[\\\"stateId\\\"]] == \\\"Completed\\\":\\n                note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Upload command completed with status \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                            \\\"for command id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for artifact with type \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; and value \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;\\\"\\\\\\n                    .format(WF_NAME, FINAL_STATUSES[computer[\\\"stateId\\\"]], INPUTS[\\\"sep_commandid\\\"], row.artifact_type,\\n                    unicode(row.artifact_value), FN_NAME)\\n            else:\\n                note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Upload command in \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; state for command \\\" \\\\\\n                            \\\"id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for artifact with type \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; and value \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; for Resilient function \\\" \\\\\\n                            \\\"\u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;.\u0026lt;br\u0026gt;Note: Upload only supports executable file types.\\\" \\\\\\n                            \\\"\u0026lt;br\u0026gt;Please review console/logs on the Symantec SEPM server for further details if required.\\\" \\\\\\n                    .format(WF_NAME, FINAL_STATUSES[computer[\\\"stateId\\\"]], INPUTS[\\\"sep_commandid\\\"], row.artifact_type, \\n                        unicode(row.artifact_value), FN_NAME)\\n        else:\\n            note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Upload command in \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; state for command id \\\" \\\\\\n                        \\\"\u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for artifact with type \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; and value \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format(WF_NAME, FINAL_STATUSES[computer[\\\"stateId\\\"]], INPUTS[\\\"sep_commandid\\\"], row.artifact_type,\\n                        unicode(row.artifact_value), FN_NAME)\\n            row.file_upload_status = upload_command_state\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_commandid = row.upload_commandid\\ninputs.sep_status_type = \\\"upload\\\"\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_11a2xy6\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1twrbdf\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_11a2xy6\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0agmp5w\"/\u003e\u003cendEvent id=\"EndEvent_0kvwbk1\"\u003e\u003cincoming\u003eSequenceFlow_1twrbdf\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1twrbdf\" sourceRef=\"ServiceTask_0agmp5w\" targetRef=\"EndEvent_0kvwbk1\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0blt4hp\"\u003e\u003ctext\u003e\u003c![CDATA[Get current command status for upload command by upload commandid. Input: Assigned from data table row.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1p8caxm\" sourceRef=\"ServiceTask_0agmp5w\" targetRef=\"TextAnnotation_0blt4hp\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0agmp5w\" id=\"ServiceTask_0agmp5w_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"241\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_11a2xy6\" id=\"SequenceFlow_11a2xy6_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"241\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"219.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0kvwbk1\" id=\"EndEvent_0kvwbk1_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"409\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"427\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1twrbdf\" id=\"SequenceFlow_1twrbdf_di\"\u003e\u003comgdi:waypoint x=\"341\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"409\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"375\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0blt4hp\" id=\"TextAnnotation_0blt4hp_di\"\u003e\u003comgdc:Bounds height=\"55\" width=\"243\" x=\"169\" y=\"39\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1p8caxm\" id=\"Association_1p8caxm_di\"\u003e\u003comgdi:waypoint x=\"291\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"291\" xsi:type=\"omgdc:Point\" y=\"94\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Get the status of an Upload command.",
      "export_key": "wf_sep_get_upload_status",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002345985,
      "name": "Example: SEP - Get Upload status",
      "object_type": "sep_eoc_scan_results",
      "programmatic_name": "wf_sep_get_upload_status",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "4932c0a2-f9d7-48a7-8634-46b15785a214",
      "workflow_id": 424
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_get_endpoints_status_details",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_endpoints_status_details\" isExecutable=\"true\" name=\"Example: SEP - Get Non-Compliant Endpoints status details\"\u003e\u003cdocumentation\u003eGet further details for Endpoints with non-compliant status.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0mbv4rm\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1riqjtk\" name=\"SEP - Get Computers\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"91343444-7a62-4f7f-9812-918531b6bf10\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_computers script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_status\u0027: True},\\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-24 11:06:24\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                    \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1157},\\n         \u0027success\u0027: True,\\n         \u0027content\u0027: {\u0027out_of_date\u0027: 0, \u0027hi_failed\u0027: 1, \u0027disabled\u0027: 0, \u0027up_to_date\u0027: 3, \u0027non_compliant\u0027: 1,\\n                     \u0027total\u0027: 3, \u0027offline\u0027: 0},\\n         \u0027raw\u0027: \u0027{\\\"out_of_date\\\": 0, \\\"hi_failed\\\": 1, \\\"disabled\\\": 0, \\\"up_to_date\\\": 3, \\\"non_compliant\\\": 1,\\n                  \\\"total\\\": 3, \\\"offline\\\": 0}\u0027,\\n         \u0027reason\u0027: None,\\n         \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable for \\\"Get Endpoints status\\\" workflow.\\nDATA_TBL_FIELDS = [\\\"query_execution_date\\\", \\\"computer_name\\\",\\\"host_integrity_check\\\", \\\"onlineStatus\\\", \\\"readableLastScanTime\\\",\\n                   \\\"readableLastUpdateTime\\\", \\\"apOnOff\\\", \\\"avEngineOnOff\\\", \\\"cidsBrowserFfOnOff\\\", \\\"cidsBrowserIeOnOff\\\", \\n                   \\\"cidsDrvOnOff\\\", \\\"daOnOff\\\", \\\"elamOnOff\\\", \\\"firewallOnOff\\\", \\\"pepOnOff\\\", \\\"ptpOnOff\\\", \\\"tamperOnOff\\\"]\\nFN_NAME = \\\"fn_sep_get_computers\\\"\\nWF_NAME = \\\"Get Non-Compliant Endpoints status details\\\"\\nCONTENT = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\ndef add_rows_non_compliant_computers(eps):\\n    for i in range(len(eps)):\\n        newrow = incident.addRow(\\\"sep_endpoints_non_compliant_details\\\")\\n        newrow.query_execution_date = QUERY_EXECUTION_DATE\\n        for f in DATA_TBL_FIELDS:\\n            if f == \\\"query_execution_date\\\":\\n                continue\\n            newrow[f] = eps[i][f]\\n\\ndef main():\\n    note_text = \u0027\u0027\\n\\n    if CONTENT is not None and CONTENT[\\\"total\\\"] \u0026gt; 0:\\n\\n        if CONTENT[\\\"non_compliant\\\"] \u0026gt; 0:\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; non-compliant endpoints \\\" \\\\\\n                        \\\"detected out of a total of \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format(WF_NAME, CONTENT[\\\"non_compliant\\\"], CONTENT[\\\"total\\\"], FN_NAME)\\n            add_rows_non_compliant_computers(CONTENT[\\\"eps\\\"])\\n        else:\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; non-compliant endpoints \\\" \\\\\\n                         \\\"detected out of a total of \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\" \\\\\\n                .format(WF_NAME, CONTENT[\\\"total\\\"], FN_NAME)\\n    else:\\n        note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                    \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_status_details = True\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0mbv4rm\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1bchq6z\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0mbv4rm\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1riqjtk\"/\u003e\u003cendEvent id=\"EndEvent_1jtsfdp\"\u003e\u003cincoming\u003eSequenceFlow_1bchq6z\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1bchq6z\" sourceRef=\"ServiceTask_1riqjtk\" targetRef=\"EndEvent_1jtsfdp\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0rkf10b\"\u003e\u003ctext\u003e\u003c![CDATA[Get properties form non-compliant endpoints.\n\u00a0Input: Parameter \u0027sep_status_details\u0027 set to True. Create new entry for data table \u0027Symantec SEP - Non-compliant Endpoints status details\u0027 with results.]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1jp6veq\" sourceRef=\"ServiceTask_1riqjtk\" targetRef=\"TextAnnotation_0rkf10b\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1riqjtk\" id=\"ServiceTask_1riqjtk_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"246\" y=\"168\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0mbv4rm\" id=\"SequenceFlow_0mbv4rm_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"246\" xsi:type=\"omgdc:Point\" y=\"207\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"177\" y=\"185\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1jtsfdp\" id=\"EndEvent_1jtsfdp_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"386\" y=\"193\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"359\" y=\"232\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1bchq6z\" id=\"SequenceFlow_1bchq6z_di\"\u003e\u003comgdi:waypoint x=\"346\" xsi:type=\"omgdc:Point\" y=\"209\"/\u003e\u003comgdi:waypoint x=\"386\" xsi:type=\"omgdc:Point\" y=\"210\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"321\" y=\"188\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0rkf10b\" id=\"TextAnnotation_0rkf10b_di\"\u003e\u003comgdc:Bounds height=\"81\" width=\"330\" x=\"131\" y=\"35\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1jp6veq\" id=\"Association_1jp6veq_di\"\u003e\u003comgdi:waypoint x=\"296\" xsi:type=\"omgdc:Point\" y=\"168\"/\u003e\u003comgdi:waypoint x=\"296\" xsi:type=\"omgdc:Point\" y=\"116\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Get further details for Endpoints with non-compliant status.",
      "export_key": "wf_sep_get_endpoints_status_details",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002350129,
      "name": "Example: SEP - Get Non-Compliant Endpoints status details",
      "object_type": "sep_endpoint_status_summary",
      "programmatic_name": "wf_sep_get_endpoints_status_details",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "6e13f304-051a-4056-98a5-468965bcd9ba",
      "workflow_id": 430
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_remediate_artifact_on_endpoint",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_remediate_artifact_on_endpoint\" isExecutable=\"true\" name=\"Example: SEP - Remediate Artifact on Endpoint\"\u003e\u003cdocumentation\u003eInitiate  a file quarantine scan on Symantec Endpoint Protection endpoints and get initial command status. A remediation action quarantines all copies of the selected file on the target endpoint(s) by hash value (SHA256, SHA1 or MD5).\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0mrwl5a\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0t9pxov\" name=\"SEP - Scan Endpoints\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"cc7fd805-db7a-4c37-aa0e-29ffd1752eec\"\u003e{\"inputs\":{\"cb92fbc0-79a0-48fe-b048-8c62ef5ea42f\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"810db651-8a47-4931-a4b4-1e579d08088d\"}},\"5b452d96-e040-46b3-ac15-828c9ffddbfa\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"select_value\":\"93b82e92-6f87-431a-9c2a-9f5d0f2c621b\"}}},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_upload_file_to_sepm script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_description\u0027: u\u0027Scan to remediate file based on sha256\u0027, u\u0027sep_computer_ids\u0027: u\u0027D31AA16E0946C25D40C83823C500518B\u0027, \\n                    u\u0027sep_scan_action\u0027: None, u\u0027sep_file_path\u0027: u\u0027C:\\\\\\\\temp\\\\\\\\eicar.zip\u0027, u\u0027sep_group_ids\u0027: u\u0027CAD80F000946C25D6C150831060AA326\u0027, \\n                    u\u0027sep_sha256\u0027: 8f5cae16ef5cfd3fcd9a4d6d58de14137b92a845ce00f69b64c5b04b6b712a83, u\u0027sep_scan_type\u0027: {u\u0027name\u0027: u\u0027QUICK_SCAN\u0027, u\u0027id\u0027: 229}}, \\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-04-12 10:49:22\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027Johns-MacBook-Pro-2.local\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 12349}, \\n         \u0027success\u0027: True, \u0027content\u0027: {u\u0027commandID_computer\u0027: u\u00270F0CBDD7EDFF4634B23FA11F5AB81FFC\u0027, u\u0027commandID_group\u0027: u\u0027BB37F78894DB451B8E8921EC127667A3\u0027}, \\n         \u0027raw\u0027: \u0027{\\\"commandID_computer\\\": \\\"0F0CBDD7EDFF4634B23FA11F5AB81FFC\\\", \\\"commandID_group\\\": \\\"BB37F78894DB451B8E8921EC127667A3\\\"}\u0027, \\n         \u0027reason\u0027: None, \\n         \u0027version\u0027: \u00271.0\u0027\\n}\\n\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"remediate_commandid\\\"]\\nfn_name = \\\"fn_sep_scan_endpoints\\\"\\nwf_name = \\\"Remediate Artifact on Endpoint \\\"\\ncontent = results.content\\nquery_execution_date = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\n\\nif content is not None:\\n    noteText = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Command executed with id \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for artifact with \\\" \\\\\\n               \\\"type \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; and value \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt;\\\"\\\\\\n        .format(wf_name, content[\\\"commandID_computer\\\"], row.artifact_type, unicode(row.artifact_value), fn_name)\\n    row.query_execution_date = query_execution_date\\n    row.remediation_commandid = content[\\\"commandID_computer\\\"]\\n\\nelse:\\n    noteText += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There was \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(wf_name, fn_name)\\n\\nincident.addNote(helper.createRichText(noteText))\",\"pre_processing_script\":\"##  Symantec Endpoint Protection- fn_sep_scan_endpoints script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {    \u0027inputs\u0027: {u\u0027sep_matching_endpoint_ids\u0027: True, u\u0027sep_commandid\u0027: u\u0027C6B90CB6F344465F9CAC429437618EB0\u0027,\\n                        u\u0027sep_status_type\u0027: u\u0027scan\u0027},\\n             \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-31 11:00:58\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027,\\n                         \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 4785},\\n             \u0027success\u0027: True,\\n             \u0027content\u0027: {\u0027endpoints_matching_ids\u0027: [u\u0027WIN-4OA0GKJN830\u0027, u\u0027WIN-N5KGH4CP3N3\u0027]},\\n             \u0027raw\u0027: \u0027{\\\"endpoints_matching_ids\\\": [\\\"WIN-4OA0GKJN830\\\", \\\"WIN-N5KGH4CP3N3\\\"]}\u0027,\\n             \u0027reason\u0027: None,\\n             \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\nstatus_results =  workflow.properties.get_command_status_results\\nCONTENT = status_results.content\\nINPUTS = status_results.inputs\\nHASH_LENS = [64, 40, 32]\\nHVS = [None if h != len(row.hash_value) else row.hash_value for h in HASH_LENS]\\n\\ndef main():\\n    inputs.sep_computer_ids = row.computer_id\\n    if rule.properties.sep_target_endpoints.lower() == \\\"all matching endpoints\\\":\\n        if CONTENT is not None and CONTENT[\\\"endpoints_matching_ids\\\"]:\\n            inputs.sep_computer_ids = \u0027,\u0027.join(CONTENT[\\\"endpoints_matching_ids\\\"])\\n    else:\\n        inputs.sep_computer_ids = row.computer_id\\n    inputs.sep_sha256 = HVS[0]\\n    inputs.sep_sha1 = HVS[1]\\n    inputs.sep_md5 = HVS[2]\\n    inputs.sep_file_path = row.file_path\\n    inputs.sep_scan_type = row.scan_type+\\\"_SCAN\\\"\\n    inputs.sep_scan_action = \\\"remediate\\\"\\n    inputs.sep_description = u\\\"Remediate endpoint for suspect file \u0027{0}\u0027.\\\".format(unicode(inputs.sep_file_path))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\\n\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_13314yw\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1sez1d0\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_1l3it0d\" name=\"SEP - Get Command Status\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"b29ec053-be35-4311-9d8f-1b6275664c0d\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_command_status script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\\n    \u0027inputs\u0027: {u\u0027sep_commandid\u0027: u\u00272F260501C22842ABBA7EB0805D92EFE0\u0027},\\n    \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-03-01 12:46:27\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027,\\n    \u0027execution_time_ms\u0027: 1085},\\n    \u0027success\u0027: True,\\n    \u0027content\u0027:\\n                {\\n                  \\\"sort\\\": [\\n                    {\\n                      \\\"direction\\\": \\\"ASC\\\",\\n                      \\\"property\\\": \\\"Begintime\\\",\\n                      \\\"ascending\\\": true\\n                    }\\n                  ],\\n                  \\\"number\\\": 0,\\n                  \\\"firstPage\\\": true,\\n                  \\\"content\\\": [\\n                    {\\n                      \\\"computerName\\\": \\\"ep1\\\",\\n                      \\\"subStateId\\\": 0,\\n                      \\\"binaryFileId\\\": null,\\n                      \\\"lastUpdateTime\\\": null,\\n                      \\\"domainName\\\": \\\"Default\\\",\\n                      \\\"hardwareKey\\\": \\\"1771D79454E53469DF4B290C06C104C9\\\",\\n                      \\\"subStateDesc\\\": null,\\n                      \\\"stateId\\\": 0,\\n                      \\\"computerId\\\": \\\"D31AA16E0946C25D40C83823C500518B\\\",\\n                      \\\"computerIp\\\": \\\"192.168.194.93\\\",\\n                      \\\"beginTime\\\": null,\\n                      \\\"currentLoginUserName\\\": \\\"Administrator\\\",\\n                      \\\"resultInXML\\\": null\\n                    },\\n                    {\\n                      \\\"computerName\\\": \\\"ep2\\\",\\n                      \\\"subStateId\\\": 0,\\n                      \\\"binaryFileId\\\": null,\\n                      \\\"lastUpdateTime\\\": null,\\n                      \\\"domainName\\\": \\\"Default\\\",\\n                      \\\"hardwareKey\\\": \\\"DC7D24D6465566D2941F35BC8D17801E\\\",\\n                      \\\"subStateDesc\\\": null,\\n                      \\\"stateId\\\": 0,\\n                      \\\"computerId\\\": \\\"89AD1BBB0946C25D25E6C0984E971D8A\\\",\\n                      \\\"computerIp\\\": \\\"192.168.194.94\\\",\\n                      \\\"beginTime\\\": null,\\n                      \\\"currentLoginUserName\\\": \\\"Administrator\\\",\\n                      \\\"resultInXML\\\": null\\n                    }\\n                  ],\\n                  \\\"lastPage\\\": true,\\n                  \\\"totalPages\\\": 1,\\n                  \\\"size\\\": 20,\\n                  \\\"totalElements\\\": 2,\\n                  \\\"numberOfElements\\\": 2\\n                }\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"query_execution_date\\\", \\\"remediation_status\\\"]\\nFN_NAME = \\\"fn_sep_get_command_status\\\"\\nWF_NAME = \\\"Get Remediation status\\\"\\nSTATUS_TYPE = \\\"remediate\\\"\\nREMEDITATE_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\nC_OUTER = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\n\\ndef main():\\n    remediation_command_state = C_OUTER[\\\"overall_command_state\\\"]\\n    total_remediation_count = C_OUTER[\\\"total_remediation_count\\\"]\\n    total_remediation_ep_count = C_OUTER[\\\"total_remediation_ep_count\\\"]\\n    total_fail_remediation_count = C_OUTER[\\\"total_fail_remediation_count\\\"]\\n    total_ep_count = C_OUTER[\\\"total_ep_count\\\"]\\n    att_name = C_OUTER[\\\"att_name\\\"]\\n\\n    note_text = \u0027\u0027\\n    if C_OUTER is not None and len(C_OUTER[\\\"content\\\"]) \u0026gt; 0:\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Remediate artifact returned \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; remediated \\\" \\\\\\n                    \\\"artifacts on \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; out of a total of \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; endpoints for artifact with type \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; \\\" \\\\\\n                    \\\"and value \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{7}\u0026lt;/b\u0026gt;.\u0026lt;br\u0026gt;Added full result as an attachment. \\\" \\\\\\n                    \\\"Attachment name : \u0026lt;b\u0026gt;{6}\u0026lt;/b\u0026gt;.\\\" \\\\\\n            .format(WF_NAME, total_remediation_count, total_remediation_ep_count, total_ep_count, row.artifact_type,\\n                    unicode(row.artifact_value), att_name, FN_NAME)\\n\\n        if remediation_command_state == \\\"Completed\\\":\\n            if total_fail_remediation_count == 0 and total_remediation_count \u0026gt; 0:\\n                row.remediation_status = u\\\"{0} at {1}.\\\".format(remediation_command_state, REMEDITATE_EXECUTION_DATE)\\n            if total_fail_remediation_count == 0 and total_remediation_count \u0026gt; 0:\\n                row.remediation_status = u\\\"{0} at {1}.\\\".format(remediation_command_state, REMEDITATE_EXECUTION_DATE)\\n            elif total_fail_remediation_count == 0 and total_remediation_count == 0:\\n                row.remediation_status = \\\"Artifact not found\\\"\\n            elif total_fail_remediation_count \u0026gt; 0:\\n                row.remediation_status = \\\"Failed\\\"\\n        else:\\n            row.remediation_status = remediation_command_state\\n    else:\\n        row.remediation_status = remediation_command_state\\n        note_text += u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Remediate artifact returned \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results for \\\" \\\\\\n                     \\\"for artifact with type \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; and value \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, row.artifact_type, unicode(row.artifact_value), FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\\n\",\"pre_processing_script\":\"inputs.sep_incident_id = incident.id\\ninputs.sep_commandid = row.remediation_commandid\\ninputs.sep_status_type = \\\"remediation\\\"\\n\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1sez1d0\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1wubs8p\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1sez1d0\" sourceRef=\"ServiceTask_0t9pxov\" targetRef=\"ServiceTask_1l3it0d\"/\u003e\u003cendEvent id=\"EndEvent_1d7rlau\"\u003e\u003cincoming\u003eSequenceFlow_1wubs8p\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1wubs8p\" sourceRef=\"ServiceTask_1l3it0d\" targetRef=\"EndEvent_1d7rlau\"/\u003e\u003cserviceTask id=\"ServiceTask_0b85o2k\" name=\"SEP - Get Command Status\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"b29ec053-be35-4311-9d8f-1b6275664c0d\"\u003e{\"inputs\":{},\"pre_processing_script\":\"inputs.sep_commandid = row.scan_commandid\\ninputs.sep_status_type = \\\"scan\\\"\\ninputs.sep_matching_endpoint_ids = True\",\"result_name\":\"get_command_status_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0mrwl5a\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_13314yw\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_13314yw\" sourceRef=\"ServiceTask_0b85o2k\" targetRef=\"ServiceTask_0t9pxov\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0mrwl5a\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0b85o2k\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_02xaj10\"\u003e\u003ctext\u003e\u003c![CDATA[Get command status of EOC scan to determine all target endpoints for remediate action. The EOC scan commandid is assigned from a data table entry. Inputs: \u0027sep_matching_endpoint_ids\u0027 is set to True.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0rezdgv\" sourceRef=\"ServiceTask_0b85o2k\" targetRef=\"TextAnnotation_02xaj10\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1466lik\"\u003e\u003ctext\u003e\u003c![CDATA[Initiate an scan with\na remediate action. Inputs: Assigned from data table row apart from target endpoint will either be \u0027all matching endpoints\u0027 from previous step or \u0027selected endpoint\u0027 from data table row. Output:Remediate commandid.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1a68pef\" sourceRef=\"ServiceTask_0t9pxov\" targetRef=\"TextAnnotation_1466lik\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1dl8gf0\"\u003e\u003ctext\u003eGet initial command status for Remediate command by remediate commandid.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0vm26pl\" sourceRef=\"ServiceTask_1l3it0d\" targetRef=\"TextAnnotation_1dl8gf0\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0t9pxov\" id=\"ServiceTask_0t9pxov_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"537\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1l3it0d\" id=\"ServiceTask_1l3it0d_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"738\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1sez1d0\" id=\"SequenceFlow_1sez1d0_di\"\u003e\u003comgdi:waypoint x=\"637\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"738\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"642.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1d7rlau\" id=\"EndEvent_1d7rlau_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"896\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"869\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1wubs8p\" id=\"SequenceFlow_1wubs8p_di\"\u003e\u003comgdi:waypoint x=\"838\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"896\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"822\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0b85o2k\" id=\"ServiceTask_0b85o2k_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"285\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_13314yw\" id=\"SequenceFlow_13314yw_di\"\u003e\u003comgdi:waypoint x=\"385\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"537\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"416\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0mrwl5a\" id=\"SequenceFlow_0mrwl5a_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"285\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"241.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_02xaj10\" id=\"TextAnnotation_02xaj10_di\"\u003e\u003comgdc:Bounds height=\"101\" width=\"223\" x=\"223\" y=\"16\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0rezdgv\" id=\"Association_0rezdgv_di\"\u003e\u003comgdi:waypoint x=\"335\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"335\" xsi:type=\"omgdc:Point\" y=\"117\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1466lik\" id=\"TextAnnotation_1466lik_di\"\u003e\u003comgdc:Bounds height=\"113\" width=\"207\" x=\"483\" y=\"10\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1a68pef\" id=\"Association_1a68pef_di\"\u003e\u003comgdi:waypoint x=\"587\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"587\" xsi:type=\"omgdc:Point\" y=\"123\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1dl8gf0\" id=\"TextAnnotation_1dl8gf0_di\"\u003e\u003comgdc:Bounds height=\"67\" width=\"170\" x=\"703\" y=\"10\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0vm26pl\" id=\"Association_0vm26pl_di\"\u003e\u003comgdi:waypoint x=\"788\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"788\" xsi:type=\"omgdc:Point\" y=\"77\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Initiate  a file quarantine scan on Symantec Endpoint Protection endpoints and get initial command status. A remediation action quarantines all copies of the selected file on the target endpoint(s) by hash value (SHA256, SHA1 or MD5).",
      "export_key": "wf_sep_remediate_artifact_on_endpoint",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002348132,
      "name": "Example: SEP - Remediate Artifact on Endpoint",
      "object_type": "sep_eoc_scan_results",
      "programmatic_name": "wf_sep_remediate_artifact_on_endpoint",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "3ce24dcb-e1d7-47b8-8636-134f5c449be1",
      "workflow_id": 427
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_get_endpoints_status",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_endpoints_status\" isExecutable=\"true\" name=\"Example: SEP - Get Endpoints status summary\"\u003e\u003cdocumentation\u003eGet overall Endpoint status summary.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_17diq7h\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0629w22\" name=\"SEP - Get Computers\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"91343444-7a62-4f7f-9812-918531b6bf10\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_computers script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_status\u0027: True},\\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-24 11:06:24\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                    \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1157},\\n         \u0027success\u0027: True,\\n         \u0027content\u0027: {\u0027out_of_date\u0027: 0, \u0027hi_failed\u0027: 1, \u0027disabled\u0027: 0, \u0027up_to_date\u0027: 3, \u0027non_compliant\u0027: 1,\\n                     \u0027total\u0027: 3, \u0027offline\u0027: 0},\\n         \u0027raw\u0027: \u0027{\\\"out_of_date\\\": 0, \\\"hi_failed\\\": 1, \\\"disabled\\\": 0, \\\"up_to_date\\\": 3, \\\"non_compliant\\\": 1,\\n                  \\\"total\\\": 3, \\\"offline\\\": 0}\u0027,\\n         \u0027reason\u0027: None,\\n         \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable for \\\"Get Endpoints status\\\" workflow.\\nDATA_TBL_FIELDS = [\\\"query_execution_date\\\", \\\"non_compliant\\\", \\\"up_to_date\\\", \\\"out_of_date\\\", \\\"total\\\", \\\"disabled\\\",\\n                   \\\"offline\\\",\\\"hi_failed\\\", ]\\nFN_NAME = \\\"fn_sep_get_computers\\\"\\nWF_NAME = \\\"Get Endpoints status\\\"\\nCONTENT = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\n\\ndef main():\\n    note_text = \u0027\u0027\\n    \\n    new_row = incident.addRow(\\\"sep_endpoint_status_summary\\\")\\n\\n    if CONTENT is not None and CONTENT[\\\"total\\\"] \u0026gt; 0:\\n        if CONTENT[\\\"total\\\"] \u0026gt; 0:\\n          \\n            #newrow = incident.addRow(\\\"sep_endpoint_status_summary\\\")\\n            new_row.query_execution_date = QUERY_EXECUTION_DATE\\n            for f in DATA_TBL_FIELDS:\\n                if f == \\\"query_execution_date\\\":\\n                    continue\\n                new_row[f] = CONTENT[f]\\n\\n        if CONTENT[\\\"non_compliant\\\"] \u0026gt; 0:\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; non-compliant endpoints \\\" \\\\\\n                        \\\"detected out of a total of \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n                .format(WF_NAME, CONTENT[\\\"non_compliant\\\"], CONTENT[\\\"total\\\"], FN_NAME)\\n        else:\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; non-compliant endpoints \\\" \\\\\\n                         \\\"detected out of a total of \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\" \\\\\\n                .format(WF_NAME, CONTENT[\\\"total\\\"], FN_NAME)\\n    else:\\n        note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                    \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_status = True\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_17diq7h\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0d5iax7\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cendEvent id=\"EndEvent_0zs04b4\"\u003e\u003cincoming\u003eSequenceFlow_0d5iax7\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0d5iax7\" sourceRef=\"ServiceTask_0629w22\" targetRef=\"EndEvent_0zs04b4\"/\u003e\u003csequenceFlow id=\"SequenceFlow_17diq7h\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0629w22\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0x9ctm1\"\u003e\u003ctext\u003e\u003c![CDATA[Get/refresh overall\u00a0 endpoint status.\n\u00a0Input parameter\u00a0 \u0027sep_status\u0027 set to True. Create new entry for data table \u0027Symantec SEP - Endpoint status summary\u0027 with status.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1tak0zp\" sourceRef=\"ServiceTask_0629w22\" targetRef=\"TextAnnotation_0x9ctm1\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0629w22\" id=\"ServiceTask_0629w22_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"288\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0zs04b4\" id=\"EndEvent_0zs04b4_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"467\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"440\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0d5iax7\" id=\"SequenceFlow_0d5iax7_di\"\u003e\u003comgdi:waypoint x=\"388\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"467\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"382.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_17diq7h\" id=\"SequenceFlow_17diq7h_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"288\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"243\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0x9ctm1\" id=\"TextAnnotation_0x9ctm1_di\"\u003e\u003comgdc:Bounds height=\"62\" width=\"381\" x=\"147\" y=\"50\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1tak0zp\" id=\"Association_1tak0zp_di\"\u003e\u003comgdi:waypoint x=\"339\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"340\" xsi:type=\"omgdc:Point\" y=\"112\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Get overall Endpoint status summary.",
      "export_key": "wf_sep_get_endpoints_status",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002343017,
      "name": "Example: SEP - Get Endpoints status summary",
      "object_type": "incident",
      "programmatic_name": "wf_sep_get_endpoints_status",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "e5969fb2-8c2c-405a-8650-f2441cfd164a",
      "workflow_id": 420
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_add_fingerprint_list",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_add_fingerprint_list\" isExecutable=\"true\" name=\"Example: SEP - Add Hash to Blacklist\"\u003e\u003cdocumentation\u003e\u003c![CDATA[Create a new blacklist fingerprint list and add an MD5 hash if the fingerprint list doesn\u0027t already exist. Add an MD5 hash to an existing blacklist fingerprint list if it already exists.]]\u003e\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0kq5pev\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1yag4fo\" name=\"SEP - Get Domains\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"a17245e2-ae90-46aa-ae44-cc0d37b8387c\"\u003e{\"inputs\":{},\"post_processing_script\":\"fn_name = \\\"fn_sep_get_domains\\\"\\nwf_name = \\\"Example: SEP - Add Hash to Blacklist\\\"\\ncontent = results.content\\ndomainid = None\\nfor i in range(len(content)):\\n  if content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    domainid = content[i][\\\"id\\\"]\\n    break\\nif domainid is not None:\\n    workflow.addProperty(\\\"domid_exists\\\", {})\\nelse:\\n    note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The domain name  \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; was not found \\\" \\\\\\n                u\\\"for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;.\\\".format(wf_name, unicode(rule.properties.sep_domain_name), fn_name)\\n    incident.addNote(helper.createRichText(note_text))\",\"result_name\":\"get_domains_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0kq5pev\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0biifwi\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0kq5pev\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1yag4fo\"/\u003e\u003cserviceTask id=\"ServiceTask_1ky4b19\" name=\"SEP - Add Fingerprint List\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"d4b5ee5d-10b2-4935-a650-f1516acfc691\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_add_fingerprint_list script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_description\u0027: u\u0027Hash of type Malware MD5 Hash\u0027, \\n                   u\u0027sep_fingerprintlist_name\u0027: u\u0027Blacklist\u0027, \\n                   u\u0027sep_hash_value\u0027: u\u0027482F9B6E0CC4C1DBBD772AAAF088CB3A\u0027, \\n                   u\u0027sep_domainid\u0027: u\u0027A9B4B7160946C25D24B6AA458EF5557F\u0027\\n                   }, \\n        \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-14 12:02:37\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \\n                    \u0027host\u0027: \u0027myhost.ibm.com\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1417\\n                    }, \\n        \u0027success\u0027: True, \\n        \u0027content\u0027: {u\u0027id\u0027: u\u0027AB29BEA5333C488694B9533E65858BF2\u0027}, \\n        \u0027raw\u0027: \u0027{\\\"id\\\": \\\"AB29BEA5333C488694B9533E65858BF2\\\"}\u0027,\\n        \u0027reason\u0027: None, \\n        \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\nFN_NAME = \\\"Add Hash to Fingerprint List\\\"\\nWF_NAME = \\\"fn_sep_add_fingerprint_list\\\"\\nCONTENT = results.content\\nINPUTS = results.inputs\\n\\ndef main():\\n    if CONTENT is not None:\\n        # If we got here we assume we are successsful.\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Successfully added MD5 hash \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; to new fingerprint list \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \\\" \\\\\\n                   \\\"\u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, artifact.value, unicode(INPUTS[\\\"sep_fingerprintlist_name\\\"]), FN_NAME)\\n    \\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There was \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                     \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n    \\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"domain_content_results =  workflow.properties.get_domains_results\\ncontent = domain_content_results.content\\nfor i in range(len(content)):\\n  if content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    inputs.sep_domainid = content[i][\\\"id\\\"]\\n    break\\ninputs.sep_hash_value = artifact.value\\ninputs.sep_fingerprintlist_name = rule.properties.sep_fingerprintlist_name\\ninputs.sep_description = u\\\"Fingerprint list \u0027{}\u0027\\\".format(unicode(inputs.sep_fingerprintlist_name))\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0d2r1uc\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1uotu52\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_00ai6k6\" name=\"SEP - Get Fingerprint List\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"e3e94d0c-e2c9-4f76-9e41-6878e718e8de\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_fingerprint_list script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult:{\u0027inputs\u0027: {u\u0027sep_fingerprintlist_name\u0027: u\u0027Blacklist_2\u0027, u\u0027sep_domainid\u0027: u\u0027908090000946C25D330E919313D23887\u0027},\\n        \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-28 16:23:05\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                    \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1153},\\n        \u0027success\u0027: True,\\n        \u0027content\u0027: {u\u0027description\u0027: u\u0027Hash of type Malware MD5 Hash\u0027, u\u0027hashType\u0027: u\u0027MD5\u0027, u\u0027source\u0027: u\u0027WEBSERVICE\u0027,\\n                    u\u0027groupIds\u0027: [u\u00277E4BB119A9FE9DC526EDABFB1EE261B8\u0027], u\u0027data\u0027: [u\u0027482F9B6E0CC4C1DBBD772AAAF088CB3A\u0027],\\n                    u\u0027id\u0027: u\u0027E60B061FDD844EBF9778D4BD2AC3942A\u0027, u\u0027name\u0027: u\u0027Blacklist_2\u0027},\\n        \u0027raw\u0027: \u0027{\\\"description\\\": \\\"Hash of type Malware MD5 Hash\\\", \\\"hashType\\\": \\\"MD5\\\", \\\"source\\\": \\\"WEBSERVICE\\\", \u0027\\n               \u0027\\\"groupIds\\\": [\\\"7E4BB119A9FE9DC526EDABFB1EE261B8\\\"], \\\"data\\\": [\\\"482F9B6E0CC4C1DBBD772AAAF088CB3A\\\"], \u0027\\n               \u0027\\\"id\\\": \\\"E60B061FDD844EBF9778D4BD2AC3942A\\\", \\\"name\\\": \\\"Blacklist_2\\\"}\u0027,\\n        \u0027reason\u0027: None,\\n        \u0027version\u0027: \u00271.0\u0027\\n }\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_fingerprint_list script\\nDATA_TBL_FIELDS = [\\\"domain_name\\\", \\\"list_name\\\", \\\"list_id\\\", \\\"list_description\\\", \\\"hash_values\\\", \\\"hash_type\\\", \\\"group_ids\\\"]\\nWF_NAME = \\\"Add Hash to Fingerprint List\\\"\\nCONTENT = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\n\\ndef main():\\n    fpl_exists = hash_in_list = False\\n    note_text = \u0027\u0027\\n    if CONTENT is not None:\\n        if \\\"errorCode\\\" in CONTENT and int(CONTENT[\\\"errorCode\\\"]) == 410:\\n            # The finger print list doesn\u0027t already exist.\\n            pass\\n        elif \\\"data\\\" in CONTENT:\\n            # The finger print list exists set flag for gateway.\\n            fpl_exists = True\\n            workflow.addProperty(\\\"fpl_exists\\\", {})\\n        if \\\"data\\\" in CONTENT and artifact.value.upper() in [d.upper() for d in CONTENT[\\\"data\\\"]]:\\n            # Finger print list exists and hash in list set flag for hash in list.\\n            hash_in_list = True\\n            workflow.addProperty(\\\"hash_in_list\\\", {})\\n\\n    if fpl_exists and hash_in_list:\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: The hash \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; has already been added to \\\" \\\\\\n                    u\\\"fingerprint list \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for domain id \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;.\\\"\\\\\\n            .format(WF_NAME, artifact.value, unicode(INPUTS[\\\"sep_fingerprintlist_name\\\"]),\\n                    INPUTS[\\\"sep_domainid\\\"])\\n        incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"domain_content_results =  workflow.properties.get_domains_results\\ndomain_content = domain_content_results.content\\n\\nfor i in range(len(domain_content)):\\n  if domain_content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    inputs.sep_domainid = domain_content[i][\\\"id\\\"]\\n    break\\n\\ninputs.sep_fingerprintlist_name = rule.properties.sep_fingerprintlist_name\\n\",\"result_name\":\"get_fingerprintlist_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0c6p764\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_15jlepx\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_1w8n3y1\" name=\"SEP - Update Fingerprint List\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"86fbaf45-bb0f-4ba0-a988-cc603d315e49\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_update_fingerprint_list script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_description\u0027: u\u0027Hash of type Malware MD5 Hash\u0027, u\u0027sep_fingerprintlist_name\u0027: u\u0027Blacklist_2\u0027,\\n                   u\u0027sep_hash_value\u0027: u\u00270B26E313ED4A7CA6904B0E9369E5B957,482F9B6E0CC4C1DBBD772AAAF088CB3A\u0027,\\n                   u\u0027sep_domainid\u0027: u\u0027A9B4B7160946C25D24B6AA458EF5557F\u0027,\\n                   u\u0027sep_fingerprintlist_id\u0027: u\u0027D132F4BA85D64E9F941906C2ECBF3F5F\u0027\\n                   },\\n        \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-14 10:48:45\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                    \u0027host\u0027: \u0027myhost.com\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1131\\n                    }, \u0027success\u0027: True,\\n                    \u0027content\u0027: \u0027\u0027,\\n                    \u0027raw\u0027: \u0027\\\"\\\"\u0027,\\n                    \u0027reason\u0027: None,\\n                    \u0027version\u0027: \u00271.0\u0027\\n\\n}\\n\\\"\\\"\\\"\\nFN_NAME = \\\"fn_sep_update_fingerprint_list\\\"\\nWF_NAME = \\\"Add Hash to Fingerprint List\\\"\\nCONTENT = results.content\\nINPUTS = results.inputs\\n\\ndef main():\\n    if CONTENT is not None:\\n        # If we got here we assume we are successsful, no status messgae is returned by api.\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Successfully added MD5 hash \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; to fingerprint \\\" \\\\\\n                    \\\"list \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, artifact.value, unicode(INPUTS[\\\"sep_fingerprintlist_name\\\"]),\\n                    FN_NAME)\\n    \\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There was \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                     \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n    \\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"domain_content_results =  workflow.properties.get_domains_results\\nfpl_content_results = workflow.properties.get_fingerprintlist_results\\ndomain_content = domain_content_results.content\\nfpl_content = fpl_content_results.content\\n\\nfor i in range(len(domain_content)):\\n  if domain_content[i][\\\"name\\\"] ==  rule.properties.sep_domain_name:\\n    inputs.sep_domainid = domain_content[i][\\\"id\\\"]\\n    break\\n    \\nif fpl_content[\\\"name\\\"] ==  rule.properties.sep_fingerprintlist_name:\\n    inputs.sep_fingerprintlist_id = fpl_content[\\\"id\\\"]\\n    inputs.sep_fingerprintlist_name = fpl_content[\\\"name\\\"]\\n    if fpl_content[\\\"data\\\"] is not None:\\n        inputs.sep_hash_value = artifact.value + \u0027,\u0027 + \u0027,\u0027.join(fpl_content[\\\"data\\\"])\\n    else:\\n        inputs.sep_hash_value = artifact.value\\n\\ninputs.sep_description = u\\\"Fingerprint list \u0027{}\u0027\\\".format(unicode(inputs.sep_fingerprintlist_name))\\n\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1t3gxmu\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0trk8w1\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cendEvent id=\"EndEvent_1ex9cby\"\u003e\u003cincoming\u003eSequenceFlow_0trk8w1\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0trk8w1\" sourceRef=\"ServiceTask_1w8n3y1\" targetRef=\"EndEvent_1ex9cby\"/\u003e\u003cendEvent id=\"EndEvent_0q07f4q\"\u003e\u003cincoming\u003eSequenceFlow_1uotu52\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1uotu52\" sourceRef=\"ServiceTask_1ky4b19\" targetRef=\"EndEvent_0q07f4q\"/\u003e\u003cendEvent id=\"EndEvent_0e1z6sp\"\u003e\u003cincoming\u003eSequenceFlow_1gh12ii\u003c/incoming\u003e\u003c/endEvent\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_1atgwj2\"\u003e\u003cincoming\u003eSequenceFlow_15jlepx\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1t3gxmu\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_0d2r1uc\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_1gh12ii\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_15jlepx\" sourceRef=\"ServiceTask_00ai6k6\" targetRef=\"ExclusiveGateway_1atgwj2\"/\u003e\u003csequenceFlow id=\"SequenceFlow_1t3gxmu\" name=\"Fingerprint exists, hash not in list\" sourceRef=\"ExclusiveGateway_1atgwj2\" targetRef=\"ServiceTask_1w8n3y1\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"fpl_exists\\\", None)  != None\",\"language\":\"python\"}},{\"evaluation_id\":2,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"hash_in_list\\\", None) == None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_0d2r1uc\" name=\"Fingerprint list doesn\u0027t exist\" sourceRef=\"ExclusiveGateway_1atgwj2\" targetRef=\"ServiceTask_1ky4b19\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"fpl_exists\\\", None) == None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_1gh12ii\" name=\"Fingerprint exists, hash in list\" sourceRef=\"ExclusiveGateway_1atgwj2\" targetRef=\"EndEvent_0e1z6sp\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"fpl_exists\\\", None)  != None\",\"language\":\"python\"}},{\"evaluation_id\":2,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"hash_in_list\\\", None) != None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_0odi5lh\"\u003e\u003cincoming\u003eSequenceFlow_0biifwi\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0c6p764\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_1rgvipb\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_0biifwi\" sourceRef=\"ServiceTask_1yag4fo\" targetRef=\"ExclusiveGateway_0odi5lh\"/\u003e\u003csequenceFlow id=\"SequenceFlow_0c6p764\" name=\"Domain id exists\" sourceRef=\"ExclusiveGateway_0odi5lh\" targetRef=\"ServiceTask_00ai6k6\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"domid_exists\\\", None) != None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003cendEvent id=\"EndEvent_05qh4sr\"\u003e\u003cincoming\u003eSequenceFlow_1rgvipb\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1rgvipb\" name=\"Domain id does not exist\" sourceRef=\"ExclusiveGateway_0odi5lh\" targetRef=\"EndEvent_05qh4sr\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"domid_exists\\\", None) == None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1cpx12i\"\u003e\u003ctext\u003eGet domain id by name. Input: Domain name selected from activity field.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0s0s66c\" sourceRef=\"ServiceTask_1yag4fo\" targetRef=\"TextAnnotation_1cpx12i\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_135ie3b\"\u003e\u003ctext\u003eGet fingerprint id and name by domain id. Input: Fingerprint list\u00a0 name selected from\u00a0 activity field.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0i5n4ot\" sourceRef=\"ServiceTask_00ai6k6\" targetRef=\"TextAnnotation_135ie3b\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_09wgioe\"\u003e\u003ctext\u003eUpdate (add) hash value to\u00a0 fingerprint list by id for domain by id. Input:\u00a0 Hash value input assigned from artifact value.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1ne5lde\" sourceRef=\"ServiceTask_1w8n3y1\" targetRef=\"TextAnnotation_09wgioe\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0wr9qec\"\u003e\u003ctext\u003eCreate new\u00a0 fingerprint list by name for domain by id and add hash.\u00a0 Input: Hash value input assigned from artifact value.\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_18bj1az\" sourceRef=\"ServiceTask_1ky4b19\" targetRef=\"TextAnnotation_0wr9qec\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1yag4fo\" id=\"ServiceTask_1yag4fo_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"271\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0kq5pev\" id=\"SequenceFlow_0kq5pev_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"271\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"189.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1ky4b19\" id=\"ServiceTask_1ky4b19_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"766\" y=\"310\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_00ai6k6\" id=\"ServiceTask_00ai6k6_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"592\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1w8n3y1\" id=\"ServiceTask_1w8n3y1_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"766\" y=\"38\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1ex9cby\" id=\"EndEvent_1ex9cby_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"936\" y=\"60\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"909\" y=\"99\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0trk8w1\" id=\"SequenceFlow_0trk8w1_di\"\u003e\u003comgdi:waypoint x=\"866\" xsi:type=\"omgdc:Point\" y=\"78\"/\u003e\u003comgdi:waypoint x=\"936\" xsi:type=\"omgdc:Point\" y=\"78\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"856\" y=\"56.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0q07f4q\" id=\"EndEvent_0q07f4q_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"936\" y=\"332\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"909\" y=\"371\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1uotu52\" id=\"SequenceFlow_1uotu52_di\"\u003e\u003comgdi:waypoint x=\"866\" xsi:type=\"omgdc:Point\" y=\"350\"/\u003e\u003comgdi:waypoint x=\"901\" xsi:type=\"omgdc:Point\" y=\"350\"/\u003e\u003comgdi:waypoint x=\"901\" xsi:type=\"omgdc:Point\" y=\"350\"/\u003e\u003comgdi:waypoint x=\"936\" xsi:type=\"omgdc:Point\" y=\"350\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"871\" y=\"343.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0e1z6sp\" id=\"EndEvent_0e1z6sp_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"936\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"909\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_1atgwj2\" id=\"ExclusiveGateway_1atgwj2_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"791\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"771\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_15jlepx\" id=\"SequenceFlow_15jlepx_di\"\u003e\u003comgdi:waypoint x=\"692\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"791\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"696.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1t3gxmu\" id=\"SequenceFlow_1t3gxmu_di\"\u003e\u003comgdi:waypoint x=\"816\" xsi:type=\"omgdc:Point\" y=\"181\"/\u003e\u003comgdi:waypoint x=\"816\" xsi:type=\"omgdc:Point\" y=\"118\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"89\" x=\"771\" y=\"141.6716417910448\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0d2r1uc\" id=\"SequenceFlow_0d2r1uc_di\"\u003e\u003comgdi:waypoint x=\"816\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"816\" xsi:type=\"omgdc:Point\" y=\"310\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"72\" x=\"780\" y=\"232.55696202531647\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1gh12ii\" id=\"SequenceFlow_1gh12ii_di\"\u003e\u003comgdi:waypoint x=\"841\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"936\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"89\" x=\"853.1346153846154\" y=\"193\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0odi5lh\" id=\"ExclusiveGateway_0odi5lh_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"441.4895489548955\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"466.4895489548955\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0biifwi\" id=\"SequenceFlow_0biifwi_di\"\u003e\u003comgdi:waypoint x=\"371\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"441\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"406\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0c6p764\" id=\"SequenceFlow_0c6p764_di\"\u003e\u003comgdi:waypoint x=\"491\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"592\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"83\" x=\"500\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_05qh4sr\" id=\"EndEvent_05qh4sr_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"448\" y=\"317.3993399339934\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"466\" y=\"356.3993399339934\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1rgvipb\" id=\"SequenceFlow_1rgvipb_di\"\u003e\u003comgdi:waypoint x=\"466\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"466\" xsi:type=\"omgdc:Point\" y=\"317\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"79\" x=\"442\" y=\"268\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1cpx12i\" id=\"TextAnnotation_1cpx12i_di\"\u003e\u003comgdc:Bounds height=\"49\" width=\"311\" x=\"165\" y=\"53\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0s0s66c\" id=\"Association_0s0s66c_di\"\u003e\u003comgdi:waypoint x=\"321\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"321\" xsi:type=\"omgdc:Point\" y=\"102\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_135ie3b\" id=\"TextAnnotation_135ie3b_di\"\u003e\u003comgdc:Bounds height=\"54\" width=\"218\" x=\"502\" y=\"42\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0i5n4ot\" id=\"Association_0i5n4ot_di\"\u003e\u003comgdi:waypoint x=\"633\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"617\" xsi:type=\"omgdc:Point\" y=\"96\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_09wgioe\" id=\"TextAnnotation_09wgioe_di\"\u003e\u003comgdc:Bounds height=\"46\" width=\"259\" x=\"1085\" y=\"140\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1ne5lde\" id=\"Association_1ne5lde_di\"\u003e\u003comgdi:waypoint x=\"866\" xsi:type=\"omgdc:Point\" y=\"89\"/\u003e\u003comgdi:waypoint x=\"1107\" xsi:type=\"omgdc:Point\" y=\"140\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0wr9qec\" id=\"TextAnnotation_0wr9qec_di\"\u003e\u003comgdc:Bounds height=\"56\" width=\"387\" x=\"1085\" y=\"265\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_18bj1az\" id=\"Association_18bj1az_di\"\u003e\u003comgdi:waypoint x=\"866\" xsi:type=\"omgdc:Point\" y=\"344\"/\u003e\u003comgdi:waypoint x=\"1085\" xsi:type=\"omgdc:Point\" y=\"317\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Create a new blacklist fingerprint list and add an MD5 hash if the fingerprint list doesn\u0027t already exist. Add an MD5 hash to an existing blacklist fingerprint list if it already exists.",
      "export_key": "wf_sep_add_fingerprint_list",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002342293,
      "name": "Example: SEP - Add Hash to Blacklist",
      "object_type": "artifact",
      "programmatic_name": "wf_sep_add_fingerprint_list",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "bfaa58ba-c487-42eb-a055-2f7d339d1932",
      "workflow_id": 419
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_get_file_content_as_base64_string",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_file_content_as_base64_string\" isExecutable=\"true\" name=\"Example: SEP - Get File Content as Base64 string\"\u003e\u003cdocumentation\u003eGet contents of a file uploaded to SEPM server as a Base64 string.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0u06rc6\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0g265cu\" name=\"SEP - Get File Content as Base64\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"d3f9eb5b-969b-45aa-bb88-29c21c85fd04\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_file_content_as_base64 ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_file_id\u0027: u\u0027B9158547A9FE9DC52292A6098528F239\u0027},\\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-29 16:44:07\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027,\\n                     \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1893},\\n         \u0027success\u0027: True,\\n         \u0027content\u0027: \u0027\u0026lt;base64_string\u0026gt;\u0027,\\n         \u0027raw\u0027: \u0027\\\"\u0026lt;base64_string\u0026gt;\\\"\u0027,\\n         \u0027reason\u0027: None,\\n         \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\n#  Globals\\nDATA_TBL_FIELDS = []\\nFN_NAME = \\\"fn_sep_get_file_content_as_base64\\\"\\nWF_NAME = \\\"Get  File Content as Base64 string\\\"\\n# List of fields in datatable fn_amp_get_computers script\\nDATA_TBL_FIELDS = []\\nCONTENT = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n# Processing\\n\\n\\ndef main():\\n    note_text = \u0027\u0027\\n    if CONTENT is not None:\\n        note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Returned Base64 string of size \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; returned \\\" \\\\\\n                    \\\"for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, len(CONTENT), FN_NAME)\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There was \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; result returned for \\\" \\\\\\n                    \\\"Resilient function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_file_id = row.file_id\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0u06rc6\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0vfi4tu\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0u06rc6\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0g265cu\"/\u003e\u003cendEvent id=\"EndEvent_0u9uek2\"\u003e\u003cincoming\u003eSequenceFlow_0vfi4tu\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0vfi4tu\" sourceRef=\"ServiceTask_0g265cu\" targetRef=\"EndEvent_0u9uek2\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0nw6rl8\"\u003e\u003ctext\u003e\u003c![CDATA[Get uploaded file content as Base64 string by file id.\ninput: File id parameter assigned from data table entry.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_146oek5\" sourceRef=\"ServiceTask_0g265cu\" targetRef=\"TextAnnotation_0nw6rl8\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0g265cu\" id=\"ServiceTask_0g265cu_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"248\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0u06rc6\" id=\"SequenceFlow_0u06rc6_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"248\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"223\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0u9uek2\" id=\"EndEvent_0u9uek2_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"396\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"414\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0vfi4tu\" id=\"SequenceFlow_0vfi4tu_di\"\u003e\u003comgdi:waypoint x=\"348\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"396\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"372\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0nw6rl8\" id=\"TextAnnotation_0nw6rl8_di\"\u003e\u003comgdc:Bounds height=\"63\" width=\"214\" x=\"196\" y=\"58\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_146oek5\" id=\"Association_146oek5_di\"\u003e\u003comgdi:waypoint x=\"300\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"302\" xsi:type=\"omgdc:Point\" y=\"121\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Get contents of a file uploaded to SEPM server as a Base64 string.",
      "export_key": "wf_sep_get_file_content_as_base64_string",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002340817,
      "name": "Example: SEP - Get File Content as Base64 string",
      "object_type": "sep_eoc_scan_results",
      "programmatic_name": "wf_sep_get_file_content_as_base64_string",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "20376905-53d7-45a5-846a-aa6da648186c",
      "workflow_id": 417
    },
    {
      "actions": [],
      "content": {
        "version": 2,
        "workflow_id": "wf_sep_quarantine_endpoint",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_quarantine_endpoint\" isExecutable=\"true\" name=\"Example: SEP - Quarantine Endpoint\"\u003e\u003cdocumentation\u003eQuarantine or un-quarantine an endpoint. Add or remove endpoints to or from network quarantine.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_06pked3\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0x2fe5w\" name=\"SEP - Quarantine Endpoints\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"ce358d79-cdf9-49d8-a94c-89d838f51197\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_quarantine_endpoints script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: { \u0027inputs\u0027: {u\u0027sep_undo\u0027: False, u\u0027sep_computer_ids\u0027: u\u002789AD1BBB0946C25D25E6C0984E971D8A\u0027},\\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-14 14:42:09\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                     \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1102\\n                    }, \u0027success\u0027: True,\\n         \u0027content\u0027: {u\u0027commandID_computer\u0027: u\u002779AD5636B73A4C0D828938AE1E5B2C13\u0027},\\n         \u0027raw\u0027: \u0027{\\\"commandID_computer\\\": \\\"79AD5636B73A4C0D828938AE1E5B2C13\\\"}\u0027,\\n         \u0027reason\u0027: None,\\n         \u0027version\u0027: \u00271.0\u0027\\n}\\n\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_quarantine_endpoints script\\nDATA_TBL_FIELDS = [\\\"quarantine_commandid\\\"]\\nfn_name = \\\"fn_sep_quarantine_endpoints\\\"\\nwf_name = \\\"Quarantine Endpoint\\\"\\n# Processing\\ncontent = results.content\\ninputs = results.inputs\\nquery_execution_date = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\nif content  is not None:\\n    note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Executed with command id \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for endpoint \\\" \\\\\\n                \\\"\u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n        .format(wf_name, content[\\\"commandID_computer\\\"], row.computerName, fn_name)\\n    row.query_execution_date = query_execution_date\\n    row.quarantine_commandid = content[\\\"commandID_computer\\\"]\\n\\nelse:\\n    note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There was \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\" \\\\\\n                 .format(wf_name, fn_name)\\n\\nincident.addNote(helper.createRichText(note_text))\\n\",\"pre_processing_script\":\"inputs.sep_computer_ids = row.uniqueId\\nendpoint_quarantine_status = row.endpoint_quarantine_status[\\\"content\\\"]\\n\\n# 2 different rules using - Quarantine or Un-quarantine  based on row value. (w rules using Workflow)\\ninputs.sep_undo = True if endpoint_quarantine_status == \\\"Quarantined\\\" else False\\n\",\"result_name\":\"quarantine_ep_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_06pked3\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0htp49n\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_06pked3\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0x2fe5w\"/\u003e\u003cserviceTask id=\"ServiceTask_0jp94xu\" name=\"SEP - Get Command Status\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"b29ec053-be35-4311-9d8f-1b6275664c0d\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_command_status script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: { \u0027inputs\u0027: {u\u0027sep_status_type\u0027: u\u0027quarantine\u0027, u\u0027sep_commandid\u0027: u\u00277D3670DDF5A64A99B3721BF8A375B302\u0027},\\n          \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-04-26 15:25:55\u0027, \u0027package_version\u0027: \u00271.0.0\u0027,\\n                      \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1256},\\n          \u0027success\u0027: True,\\n          \u0027content\u0027: {u\u0027sort\u0027: [{u\u0027direction\u0027: u\u0027ASC\u0027, u\u0027property\u0027: u\u0027Begintime\u0027, u\u0027ascending\u0027: True}], \u0027command_state\u0027: \u0027Completed\u0027, u\u0027number\u0027: 0, u\u0027firstPage\u0027: True, \u0027: 0, u\u0027content\u0027: [{u\u0027computerName\u0027: u\u0027WIN-N5KGH4CP3N3\u0027, u\u0027subStateId u\u0027binaryFileId\u0027: None, u\u0027lastUpdateTime\u0027:\\n                        u\u00272019-04-26T11:05:27Z\u0027, u\u0027domainName\u0027: u\u0027Default\u0027, u\u0027hardwareKey\u0027: u\u0027DC7D24D6465566D2941F35BC8D17801E\u0027,\\n                        u\u0027subStateDesc\u0027: u\u0027\u0027, u\u0027stateId\u0027: 3, u\u0027computerId\u0027: u\u002789AD1BBB0946C25D25E6C0984E971D8A\u0027, u\u0027computerIp\u0027: u\u00279.70.194.94\u0027, u\u0027beginTime\u0027: u\u00272019-04-26T11:05:27Z\u0027, u\u0027currentLoginUserName\u0027: u\u0027Administrator\u0027, u\u0027resultInXML\u0027: u\u0027\u0027, \u0027command_status_id\u0027: 3}], u\u0027lastPage\u0027: True, u\u0027totalPages\u0027: 1, u\u0027numberOfElements\u0027: 1, u\u0027totalElements\u0027: 1, u\u0027size\u0027: 20},\\n          \u0027raw\u0027: \u0027{\\\"sort\\\": [{\\\"direction\\\": \\\"ASC\\\", \\\"property\\\": \\\"Begintime\\\", \\\"ascending\\\": true}], \\\"command_state\\\": \\\"Completed\\\", \\\"number\\\": 0, \\\"firstPage\\\": true, \\\"content\\\": [{\\\"computerName\\\": \\\"WIN-N5KGH4CP3N3\\\", \\\"subStateId\\\": 0, \\\"binaryFileId\\\": null, \\\"lastUpdateTime\\\": \\\"2019-04-26T11:05:27Z\\\", \\\"domainName\\\": \\\"Default\\\", \\\"hardwareKey\\\": \\\"DC7D24D6465566D2941F35BC8D17801E\\\", \\\"subStateDesc\\\": \\\"\\\", \\\"stateId\\\": 3, \\\"computerId\\\": \\\"89AD1BBB0946C25D25E6C0984E971D8A\\\", \\\"computerIp\\\": \\\"9.70.194.94\\\", \\\"beginTime\\\": \\\"2019-04-26T11:05:27Z\\\", \\\"currentLoginUserName\\\": \\\"Administrator\\\", \\\"resultInXML\\\": \\\"\\\", \\\"command_status_id\\\": 3}], \\\"lastPage\\\": true, \\\"totalPages\\\": 1, \\\"numberOfElements\\\": 1, \\\"totalElements\\\": 1, \\\"size\\\": 20}\u0027, \u0027reason\u0027: None, \u0027version\u0027: \u00271.0\u0027\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"quarantine_status\\\", \\\"quarantine_command_state\\\", \\\"endpoint_quarantine_status\\\"]\\nFN_NAME = \\\"fn_sep_get_command_status\\\"\\nWF_NAME = \\\"Quarantine Endpoint\\\"\\nSTATUS_TYPE = \\\"quarantine\\\"\\nFINAL_STATUSES = {\\n    0: \\\"Not received\\\",\\n    1: \\\"Received\\\",\\n    2: \\\"In progress\\\",\\n    3: \\\"Completed\\\",\\n    4: \\\"Rejected\\\",\\n    5: \\\"Canceled\\\",\\n    6: \\\"Failed\\\"\\n}\\n\\nC_OUTER = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n# Processing\\n\\ndef main():\\n\\n    endpoint_quarantine_status = row.endpoint_quarantine_status[\\\"content\\\"]\\n    status_msg = \\\"Un-quarantine\\\" if endpoint_quarantine_status == \\\"Quarantined\\\" else \\\"Quarantine\\\"\\n    note_text = \u0027\u0027\\n    quarantine_command_state = C_OUTER[\\\"overall_command_state\\\"]\\n\\n    if C_OUTER is not None and len(C_OUTER[\\\"content\\\"]) \u0026gt; 0:\\n        row.quarantine_command_state = quarantine_command_state\\n        row.query_execution_date = QUERY_EXECUTION_DATE\\n        computer = C_OUTER[\\\"content\\\"][0]\\n        note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; command status for command id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; \\\" \\\\\\n                    \\\"for computer \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; was \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, status_msg, row.quarantine_commandid, row.computerName, FINAL_STATUSES[computer[\\\"stateId\\\"]], FN_NAME)\\n        if quarantine_command_state == \\\"Completed\\\":\\n            row.quarantine_command_state = FINAL_STATUSES[computer[\\\"stateId\\\"]]\\n        else:\\n            row.quarantine_command_state = quarantine_command_state\\n\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\" \\\\\\n            .format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"quarantine_ep_content = workflow.properties.quarantine_ep_results.content\\ninputs.sep_incident_id = incident.id\\ninputs.sep_commandid = quarantine_ep_content[\\\"commandID_computer\\\"]\\ninputs.sep_status_type = \\\"quarantine\\\"\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0htp49n\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1hbt9xj\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0htp49n\" sourceRef=\"ServiceTask_0x2fe5w\" targetRef=\"ServiceTask_0jp94xu\"/\u003e\u003cserviceTask id=\"ServiceTask_0redefa\" name=\"SEP - Get Computers\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"91343444-7a62-4f7f-9812-918531b6bf10\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_computers script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\\n      \\\"input_params\\\": {\\\"sep_computername\\\": \\\"myhostname\\\", \\\"sep_domain\\\": null, \\\"sep_lastupdate\\\": null, \\\"sep_order: null,\\n      \\\"sep_os\\\": null, \\\"sep_pageindex\\\": null, \\\"sep_pageindex\\\": null, \\\"sep_sort\\\": null},\\n      \\\"query_execution_time\\\": \\\"2018-08-09 12:34:15\\\",\\n      \\\"content\\\"\\n                {\\n                  \\\"sort\\\": [\\n                    {\\n                      \\\"direction\\\": \\\"ASC\\\",\\n                      \\\"property\\\": \\\"COMPUTER_NAME\\\",\\n                      \\\"ascending\\\": true\\n                    }\\n                  ],\\n                  \\\"number\\\": 0,\\n                  \\\"firstPage\\\": true,\\n                  \\\"content\\\": [\\n                    {\\n                      \\\"profileVersion\\\": \\\"14.2.1031\\\",\\n                      \\\"elamOnOff\\\": 1,\\n                      \\\"avEngineOnOff\\\": 1,\\n                      \\\"profileChecksum\\\": null,\\n                      \\\"atpDeviceId\\\": null,\\n                      \\\"processorType\\\": \\\"Intel64 Family 6 Model 15 Stepping 1\\\",\\n                      \\\"oslanguage\\\": \\\"en-US\\\",\\n                      \\\"licenseId\\\": null,\\n                      \\\"licenseStatus\\\": -1,\\n                      \\\"group\\\": {\\n                        \\\"domain\\\": {\\n                          \\\"id\\\": \\\"908090000946C25D330E919313D23887\\\",\\n                          \\\"name\\\": \\\"Default\\\"\\n                        },\\n                        \\\"name\\\": \\\"My Company\\\",\\n                        \\\"fullPathName\\\": null,\\n                        \\\"externalReferenceId\\\": null,\\n                        \\\"source\\\": null,\\n                        \\\"id\\\": \\\"CAD80F000946C25D6C150831060AA326\\\"\\n                      },\\n                      \\\"uuid\\\": \\\"EA650B42-D10A-7F9F-A1D2-0A58C4F4CEB1\\\",\\n                      \\\"groupUpdateProvider\\\": false,\\n                      \\\"edrStatus\\\": 0,\\n                      \\\"freeDisk\\\": 56538476544,\\n                      \\\"diskDrive\\\": \\\"C:\\\\\\\\\\\",\\n                      \\\"osFunction\\\": \\\"Server\\\",\\n                      \\\"processorClock\\\": 2394,\\n                      \\\"mobilePhone\\\": \\\"\\\",\\n                      \\\"jobTitle\\\": \\\"\\\",\\n                      \\\"lastHeuristicThreatTime\\\": 0,\\n                      \\\"osname\\\": \\\"Windows Server 2012\\\",\\n                      \\\"winServers\\\": [\\n                        \\\"0.0.0.0\\\",\\n                        \\\"0.0.0.0\\\"\\n                      ],\\n                      \\\"deploymentMessage\\\": \\\"\\\",\\n                      \\\"idsSerialNo\\\": \\\"\\\",\\n                      \\\"employeeNumber\\\": \\\"\\\",\\n                      \\\"snacLicenseId\\\": null,\\n                      \\\"lastSiteId\\\": \\\"EE75B0850946C25D5287B58B5173A37C\\\",\\n                      \\\"uwf\\\": 2,\\n                      \\\"currentClientId\\\": \\\"256B2B130946C25D40C83823AA2E5D4C\\\",\\n                      \\\"osbitness\\\": \\\"x64\\\",\\n                      \\\"lastScanTime\\\": 1550825941000,\\n                      \\\"email\\\": \\\"\\\",\\n                      \\\"securityVirtualAppliance\\\": null,\\n                      \\\"worstInfectionIdx\\\": \\\"0\\\",\\n                      \\\"encryptedDevicePassword\\\": null,\\n                      \\\"lastServerId\\\": \\\"7D6AAA6F0946C25D170B3A2D442500B6\\\",\\n                      \\\"kernel\\\": null,\\n                      \\\"lastUpdateTime\\\": 1550835481557,\\n                      \\\"ptpOnOff\\\": 1,\\n                      \\\"majorVersion\\\": 14,\\n                      \\\"lastConnectedIpAddr\\\": \\\"9.70.194.93\\\",\\n                      \\\"agentVersion\\\": \\\"14.2.1031.0100\\\",\\n                      \\\"deploymentRunningVersion\\\": \\\"14.2.1031.0100\\\",\\n                      \\\"agentTimeStamp\\\": 1550835481557,\\n                      \\\"osminor\\\": 2,\\n                      \\\"osMajor\\\": 6,\\n                      \\\"deploymentTargetVersion\\\": \\\"14.2.1031.0100\\\",\\n                      \\\"osMinor\\\": 2,\\n                      \\\"osFlavorNumber\\\": 79,\\n                      \\\"logicalCpus\\\": 0,\\n                      \\\"deploymentPreVersion\\\": \\\"\\\",\\n                      \\\"hypervisorVendorId\\\": \\\"0\\\",\\n                      \\\"fbwf\\\": 2,\\n                      \\\"osversion\\\": \\\"6.2\\\",\\n                      \\\"dnsServers\\\": [\\n                        \\\"9.70.192.29\\\",\\n                        \\\"FEC0:0000:0000:FFFF:0000:0000:0000:0001\\\"\\n                      ],\\n                      \\\"vsicStatus\\\": 3,\\n                      \\\"deleted\\\": 0,\\n                      \\\"deploymentStatus\\\": \\\"302456832\\\",\\n                      \\\"computerTimeStamp\\\": 1550758769451,\\n                      \\\"bwf\\\": 2,\\n                      \\\"totalDiskSpace\\\": 81567,\\n                      \\\"homePhone\\\": \\\"\\\",\\n                      \\\"daOnOff\\\": 1,\\n                      \\\"computerDescription\\\": \\\"\\\",\\n                      \\\"pepOnOff\\\": 1,\\n                      \\\"bashStatus\\\": 1,\\n                      \\\"agentUsn\\\": 525374,\\n                      \\\"osName\\\": \\\"Windows Server 2012\\\",\\n                      \\\"patternIdx\\\": \\\"F592051A3024B9BD77C1FC9EE1D1ADC9\\\",\\n                      \\\"employeeStatus\\\": \\\"\\\",\\n                      \\\"tmpDevice\\\": null,\\n                      \\\"rebootRequired\\\": 0,\\n                      \\\"subnetMasks\\\": [\\n                        \\\"255.255.255.0\\\",\\n                        \\\"64\\\"\\n                      ],\\n                      \\\"minorVersion\\\": 2,\\n                      \\\"osservicePack\\\": \\\"\\\",\\n                      \\\"lastSiteName\\\": \\\"My Site\\\",\\n                      \\\"cidsEngineVersion\\\": \\\"0.0.0.0\\\",\\n                      \\\"lastDeploymentTime\\\": 1550585147000,\\n                      \\\"isGrace\\\": 0,\\n                      \\\"computerUsn\\\": 501645,\\n                      \\\"agentId\\\": \\\"6E5AA5CB0946C25D40C83823BB5107E6\\\",\\n                      \\\"cidsBrowserFfOnOff\\\": 1,\\n                      \\\"domainOrWorkgroup\\\": \\\"WORKGROUP\\\",\\n                      \\\"svaId\\\": null,\\n                      \\\"loginDomain\\\": \\\"LocalComputer\\\",\\n                      \\\"lastServerName\\\": \\\"WIN-4OA0GKJN830\\\",\\n                      \\\"contentUpdate\\\": 1,\\n                      \\\"writeFiltersStatus\\\": null,\\n                      \\\"infected\\\": 0,\\n                      \\\"memory\\\": 6441979904,\\n                      \\\"freeMem\\\": 2910998528,\\n                      \\\"officePhone\\\": \\\"\\\",\\n                      \\\"lastVirusTime\\\": 1550597487000,\\n                      \\\"telemetryMid\\\": \\\"890E283B-41D3-4340-A397-66F6AFCAF33E\\\",\\n                      \\\"idsVersion\\\": \\\"\\\",\\n                      \\\"cidsBrowserIeOnOff\\\": 1,\\n                      \\\"publicKey\\\": \\\"BgIAAACkAABSU0ExAAgAAAEAAQDfMtYpvbC2ZOrpGFbK76tuyp2MZ7/6EGsFrqAV3ZBMfvMllksVObpPYvDSc5vCjtzthb1301VADLAspayGytsdAj5z8+LLpOnJkHNg9tIunm1lLkBTitevI6G+nNjyKd7uPn3+bxjk1LL8g1exL2C2SMPEXubdUa1N5xwmhhPHp6PSIAjY74QUcNyplfvylMS9QRWoQ70mqNy9tLLef6+qCYWTqGa7QKXS0WUJs8sJMzWfCrpeMVAmU5/s3yEu+OI+9RKgOeSfy7wRzmAWHQTofjHkYGYqwXcwwLX7AbWjdcpYo0Kaecf8e5t2ZvWyR362EaNxn0HYSjpKraY1hLK1\\\",\\n                      \\\"quarantineDesc\\\": \\\"Host Integrity check is disabled.\\\\n Host Integrity policy has been disabled by the administrator.\\\",\\n                      \\\"cidsDrvMulfCode\\\": 0,\\n                      \\\"biosVersion\\\": \\\"INTEL  - 6040000 PhoenixBIOS 4.0 Release 6.0\\\",\\n                      \\\"rebootReason\\\": \\\"\\\",\\n                      \\\"telemetryHwid\\\": \\\"A942D8EB-32C3-E42F-FE83-723FDC431F32\\\",\\n                      \\\"cidsSilentMode\\\": 0,\\n                      \\\"creationTime\\\": 1550585043812,\\n                      \\\"macAddresses\\\": [\\n                        \\\"00-50-56-8B-A6-C3\\\",\\n                        \\\"00-50-56-8B-A6-C3\\\"\\n                      ],\\n                      \\\"idsChecksum\\\": null,\\n                      \\\"operatingSystem\\\": \\\"Windows Server 2012 \\\",\\n                      \\\"osmajor\\\": 6,\\n                      \\\"virtualizationPlatform\\\": \\\"Unknown\\\",\\n                      \\\"ipAddresses\\\": [\\n                        \\\"9.70.194.93\\\",\\n                        \\\"FE80:0000:0000:0000:FC67:074E:CD22:0188\\\"\\n                      ],\\n                      \\\"physicalCpus\\\": 1,\\n                      \\\"osBitness\\\": \\\"x64\\\",\\n                      \\\"cidsDefsetVersion\\\": \\\"190220061\\\",\\n                      \\\"cidsDrvOnOff\\\": 1,\\n                      \\\"computerName\\\": \\\"WIN-4OA0GKJN830\\\",\\n                      \\\"logonUserName\\\": \\\"Administrator\\\",\\n                      \\\"licenseExpiry\\\": 0,\\n                      \\\"osLanguage\\\": \\\"en-US\\\",\\n                      \\\"gateways\\\": [\\n                        \\\"9.70.194.1\\\",\\n                        \\\"9.70.194.1\\\",\\n                        \\\"0.0.0.0\\\",\\n                        \\\"0.0.0.0\\\"\\n                      ],\\n                      \\\"uniqueId\\\": \\\"D31AA16E0946C25D40C83823C500518B\\\",\\n                      \\\"department\\\": \\\"\\\",\\n                      \\\"isNpvdiClient\\\": 0,\\n                      \\\"dhcpServer\\\": \\\"0.0.0.0\\\",\\n                      \\\"osfunction\\\": \\\"Server\\\",\\n                      \\\"description\\\": \\\"\\\",\\n                      \\\"osflavorNumber\\\": 79,\\n                      \\\"tpmDevice\\\": \\\"0\\\",\\n                      \\\"onlineStatus\\\": 1,\\n                      \\\"lastDownloadTime\\\": 1550585418144,\\n                      \\\"apOnOff\\\": 1,\\n                      \\\"timeZone\\\": 480,\\n                      \\\"fullName\\\": \\\"\\\",\\n                      \\\"osVersion\\\": \\\"6.2\\\",\\n                      \\\"attributeExtension\\\": \\\"\\\",\\n                      \\\"atpServer\\\": \\\"\\\",\\n                      \\\"tamperOnOff\\\": 1,\\n                      \\\"osServicePack\\\": \\\"\\\",\\n                      \\\"agentType\\\": \\\"105\\\",\\n                      \\\"serialNumber\\\": \\\"VMware-42 0b 65 ea 0a d1 9f 7f-a1 d2 0a 58 c4 f4 ce b1\\\",\\n                      \\\"osElamStatus\\\": 0,\\n                      \\\"installType\\\": \\\"0\\\",\\n                      \\\"profileSerialNo\\\": \\\"CAD8-01/26/2019 08:00:11 062\\\",\\n                      \\\"hardwareKey\\\": \\\"1771D79454E53469DF4B290C06C104C9\\\",\\n                      \\\"firewallOnOff\\\": 1\\n                    }\\n                  ],\\n                  \\\"lastPage\\\": true,\\n                  \\\"totalPages\\\": 1,\\n                  \\\"size\\\": 20,\\n                  \\\"totalElements\\\": 2,\\n                  \\\"numberOfElements\\\": 2\\n                }\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_amp_get_computers script\\nDATA_TBL_FIELDS = [\\\"query_execution_date\\\", \\\"endpoint_quarantine_status\\\"]\\nFN_NAME = \\\"fn_sep_get_computers\\\"\\nWF_NAME = \\\"Quarantine Endpoint\\\"\\nC_OUTER = results.content\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n\\n# Processing\\ndef main():\\n    note_text = \u0027\u0027\\n    if C_OUTER is not None and len(C_OUTER[\\\"content\\\"]) \u0026gt; 0:\\n        row.query_execution_date = QUERY_EXECUTION_DATE\\n        computer = C_OUTER[\\\"content\\\"][0]\\n        ep_name = computer[\\\"computerName\\\"]\\n        ep_osname = computer.get(\\\"osname\\\", \\\"\\\")\\n        if \\\"windows\\\" in ep_osname.lower():\\n            if \\\"host integrity check passed\\\" not in computer[\\\"quarantineDesc\\\"].lower():\\n                row.endpoint_quarantine_status = \\\"Quarantined\\\"\\n            else:\\n                row.endpoint_quarantine_status = \\\"Un-Quarantined\\\"\\n            note_text = \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: Quarantine status of endpoint \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; is \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, ep_name, row.endpoint_quarantine_status, FN_NAME)\\n        else:\\n            newrow.endpoint_quarantine_status = \\\"\\\"\\n\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, FN_NAME)\\n    if len(note_text) \u0026gt; 0:\\n        incident.addNote(helper.createRichText(note_text))\\n    \\nif __name__ == \\\"__main__\\\":\\n    main()\",\"post_processing_script_language\":\"python\",\"pre_processing_script\":\"inputs.sep_computername = row.computer_name\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1hbt9xj\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1kk7m3v\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1hbt9xj\" sourceRef=\"ServiceTask_0jp94xu\" targetRef=\"ServiceTask_0redefa\"/\u003e\u003cendEvent id=\"EndEvent_0n9ktln\"\u003e\u003cincoming\u003eSequenceFlow_1kk7m3v\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1kk7m3v\" sourceRef=\"ServiceTask_0redefa\" targetRef=\"EndEvent_0n9ktln\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0ijawub\"\u003e\u003ctext\u003e\u003c![CDATA[Initiate a quarantine or undo quarantine action. Inputs:\u00a0 Data table row. The value of\u00a0 \u0027Endpoint status\u0027 which can be \u0027Available\u0027 or \u0027Quarantined\u0027, will determine whether a \u0027Quarantine\u0027 or \u0027Un-quarantine\u0027 action be initiated. Output: Quarantine commandid.]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0c52qrd\" sourceRef=\"ServiceTask_0x2fe5w\" targetRef=\"TextAnnotation_0ijawub\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_12bt23g\"\u003e\u003ctext\u003e\u003c![CDATA[Get initial command status for quarantine command by quarantine commandid. Output: Quarantine commandid\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0z8shi7\" sourceRef=\"ServiceTask_0jp94xu\" targetRef=\"TextAnnotation_12bt23g\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1r2oxnf\"\u003e\u003ctext\u003e\u003c![CDATA[Refresh data table row for the \u0027Endpoint status\u0027 property current status.]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1pnsrre\" sourceRef=\"ServiceTask_0redefa\" targetRef=\"TextAnnotation_1r2oxnf\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0x2fe5w\" id=\"ServiceTask_0x2fe5w_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"262\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_06pked3\" id=\"SequenceFlow_06pked3_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"262\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"230\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0jp94xu\" id=\"ServiceTask_0jp94xu_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"509\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0htp49n\" id=\"SequenceFlow_0htp49n_di\"\u003e\u003comgdi:waypoint x=\"362\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"509\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"390.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0redefa\" id=\"ServiceTask_0redefa_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"724\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1hbt9xj\" id=\"SequenceFlow_1hbt9xj_di\"\u003e\u003comgdi:waypoint x=\"609\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"724\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"621.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0n9ktln\" id=\"EndEvent_0n9ktln_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"859\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"832\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1kk7m3v\" id=\"SequenceFlow_1kk7m3v_di\"\u003e\u003comgdi:waypoint x=\"824\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"859\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"796.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0ijawub\" id=\"TextAnnotation_0ijawub_di\"\u003e\u003comgdc:Bounds height=\"103\" width=\"328\" x=\"142\" y=\"9\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0c52qrd\" id=\"Association_0c52qrd_di\"\u003e\u003comgdi:waypoint x=\"311\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"311\" xsi:type=\"omgdc:Point\" y=\"112\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_12bt23g\" id=\"TextAnnotation_12bt23g_di\"\u003e\u003comgdc:Bounds height=\"64\" width=\"174\" x=\"472\" y=\"6\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0z8shi7\" id=\"Association_0z8shi7_di\"\u003e\u003comgdi:waypoint x=\"559\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"560\" xsi:type=\"omgdc:Point\" y=\"70\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1r2oxnf\" id=\"TextAnnotation_1r2oxnf_di\"\u003e\u003comgdc:Bounds height=\"39\" width=\"203\" x=\"672\" y=\"18\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1pnsrre\" id=\"Association_1pnsrre_di\"\u003e\u003comgdi:waypoint x=\"774\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"774\" xsi:type=\"omgdc:Point\" y=\"57\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 2,
      "description": "Quarantine or un-quarantine an endpoint. Add or remove endpoints to or from network quarantine.",
      "export_key": "wf_sep_quarantine_endpoint",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668004041471,
      "name": "Example: SEP - Quarantine Endpoint",
      "object_type": "sep_endpoint_details",
      "programmatic_name": "wf_sep_quarantine_endpoint",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "a457878a-30ac-408d-8ba7-2bdbc0a8b16a",
      "workflow_id": 412
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_move_endpoint",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_move_endpoint\" isExecutable=\"true\" name=\"Example: SEP - Move Endpoint\"\u003e\u003cdocumentation\u003eMove an endpoint to a different group.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1ltof15\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0x4lh8y\" name=\"SEP - Get Groups\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"da72c4a8-45c1-4633-9d18-9ef6bd03dae9\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_groups script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\\n         \u0027content\u0027: {\\n                      \\\"sort\\\": [\\n                        {\\n                          \\\"direction\\\": \\\"ASC\\\",\\n                          \\\"property\\\": \\\"NAME\\\",\\n                          \\\"ascending\\\": true\\n                        }\\n                      ],\\n                      \\\"number\\\": 0,\\n                      \\\"firstPage\\\": true,\\n                      \\\"content\\\": [\\n                        {\\n                          \\\"policyDate\\\": 1548489611062,\\n                          \\\"domain\\\": {\\n                            \\\"id\\\": \\\"908090000946C25D330E919313D23887\\\",\\n                            \\\"name\\\": \\\"Default\\\"\\n                          },\\n                          \\\"numberOfRegisteredUsers\\\": 1,\\n                          \\\"description\\\": \\\"\\\",\\n                          \\\"created\\\": 1548481072007,\\n                          \\\"policySerialNumber\\\": \\\"4CBD-01/26/2019 08:00:11 062\\\",\\n                          \\\"lastModified\\\": 1548481072007,\\n                          \\\"fullPathName\\\": \\\"My Company\\\\\\\\Default Group\\\",\\n                          \\\"createdBy\\\": \\\"AF3C39A10A320801000000DBF200C60A\\\",\\n                          \\\"numberOfPhysicalComputers\\\": 1,\\n                          \\\"customIpsNumber\\\": \\\"\\\",\\n                          \\\"id\\\": \\\"4CBD63EE0946C25D1011DB1872A1736A\\\",\\n                          \\\"policyInheritanceEnabled\\\": true,\\n                          \\\"name\\\": \\\"Default Group\\\"\\n                        },\\n                        {\\n                          \\\"policyDate\\\": 1548489611062,\\n                          \\\"domain\\\": {\\n                            \\\"id\\\": \\\"908090000946C25D330E919313D23887\\\",\\n                            \\\"name\\\": \\\"Default\\\"\\n                          },\\n                          \\\"numberOfRegisteredUsers\\\": 1,\\n                          \\\"description\\\": \\\"\\\",\\n                          \\\"created\\\": 1548481072007,\\n                          \\\"policySerialNumber\\\": \\\"CAD8-01/26/2019 08:00:11 062\\\",\\n                          \\\"lastModified\\\": 1548481072007,\\n                          \\\"fullPathName\\\": \\\"My Company\\\",\\n                          \\\"createdBy\\\": \\\"AF3C39A10A320801000000DBF200C60A\\\",\\n                          \\\"number OfPhysicalComputers\\\": 1,\\n                          \\\"customIpsNumber\\\": \\\"\\\",\\n                          \\\"id\\\": \\\"CAD80F000946C25D6C150831060AA326\\\",\\n                          \\\"policyInheritanceEnabled\\\": false,\\n                          \\\"name\\\": \\\"My Company\\\"\\n                        }\\n                      ],\\n                      \\\"lastPage\\\": true,\\n                      \\\"totalPages\\\": 1,\\n                      \\\"size\\\": 25,\\n                      \\\"totalElements\\\": 2,\\n                      \\\"numberOfElements\\\": 2\\n                     }\\n\\n}\\n\\\"\\\"\\\"\\n\\ncontent = results.content\\nfn_name = \\\"fn_symc_sep_get_groups\\\"\\nwf_name = \\\"Move Endpoint\\\"\\nnote_text = \u0027\u0027\\n\\nif content is not None and len(content[\\\"content\\\"]) \u0026gt; 0:\\n    groups = content[\\\"content\\\"]\\n    if len(groups) \u0026gt; 1:\\n        note_text = \\\"Symantec SEP Integration: Workflow: \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : There were too many results \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; returned \\\" \\\\\\n                    \\\"for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\".format(wf_name, len(groups), fn_name)\\n    else:\\n        workflow.addProperty(\\\"single_group\\\", {})\\n        workflow.addProperty(\\\"sep_oldpathname\\\", {\\\"oldPathName\\\": row.group_name})\\n        workflow.addProperty(\\\"sep_fullpathname\\\", {\\\"fullPathName\\\": groups[0][\\\"fullPathName\\\"]})\\nelse:\\n    note_text += \\\"Symantec SEP Integration: Workflow: \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for Resilient \\\" \\\\\\n                 \\\"function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(wf_name, fn_name)\\nif note_text:\\n    incident.addNote(helper.createRichText(note_text))\\n\\n\",\"pre_processing_script\":\"inputs.sep_fullpathname = rule.properties.sep_fullpathname\\ninputs.sep_domain = row.domain_id\\n\",\"result_name\":\"get_groups_results\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1ltof15\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1revjlo\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cserviceTask id=\"ServiceTask_1eys2xb\" name=\"SEP - Move endpoint\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"eda382b3-ec2c-4c42-ba90-643cd22349dc\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_move_client script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_hardwarekey\u0027: u\u0027B791D1DF2BB8AA77D19B10E3BB395B81\u0027, u\u0027sep_groupid\u0027: u\u0027CC00A6170946C25D35BD115E41F2F92C\u0027}, \\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-29 12:17:17\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027, \\n                     \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1782}, \\n         \u0027success\u0027: True, \\n         \u0027content\u0027: [{u\u0027responseMessage\u0027: u\u0027OK\u0027, u\u0027responseCode\u0027: u\u0027200\u0027}], \\n         \u0027raw\u0027: \u0027[{\\\"responseMessage\\\": \\\"OK\\\", \\\"responseCode\\\": \\\"200\\\"}]\u0027, \\n         \u0027reason\u0027: None, \\n         \u0027version\u0027: \u00271.0\u0027\\n }\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_amp_get_computers script\\nFN_NAME = \\\"fn_set_move_client\\\"\\nWF_NAME = \\\"Move Endpoint\\\"\\nCONTENT = results.content\\nHW_KEY = results[\\\"inputs\\\"][\\\"sep_hardwarekey\\\"]\\nGROUP_ID = results[\\\"inputs\\\"][\\\"sep_groupid\\\"]\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n# Processing\\n\\ndef main():\\n    note_text = \u0027\u0027\\n    if CONTENT is not None:\\n        response_msg = CONTENT[0][\\\"responseMessage\\\"]\\n        if response_msg == \\\"OK\\\":\\n            oldfullpath = workflow.properties.get(\\\"sep_oldpathname\\\", None)[\\\"oldPathName\\\"]\\n            fullpathname = workflow.properties.get(\\\"sep_fullpathname\\\", None)[\\\"fullPathName\\\"]\\n            note_text = \\\"Symantec SEP Integration: Workflow: \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : Successfully moved computer \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                       \\\"from group \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; to group \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt;.\\\"\\\\\\n                .format(WF_NAME, row.computerName, oldfullpath, fullpathname, FN_NAME)\\n            row.group_id = GROUP_ID\\n            if fullpathname is not None:\\n              row.group_name = fullpathname\\n        else:\\n            note_text = \\\"Symantec SEP Integration: Workflow: \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : Unsuccessful move of computer \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                       \\\"to group with id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;. Received response \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt;.\\\"\\\\\\n                .format(WF_NAME, row.computerName, GROUP_ID, response_msg, FN_NAME)\\n    else:\\n      noteText = \\\"Symantec SEP Integration: Workflow: \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : Move unsuccessful for computer with hardware id \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                 \\\"to group with id \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;.\\\"\\\\\\n          .format(WF_NAME, HW_KEY, GROUP_ID, FN_NAME)\\n    \\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"content =  workflow.properties.get_groups_results.content\\nfull_path_name = content[\\\"content\\\"][0][\\\"fullPathName\\\"]\\ninputs.sep_hardwarekey = row.hardwareKey\\ninputs.sep_groupid = content[\\\"content\\\"][0][\\\"id\\\"]\\n\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0gz9g4a\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1vc6i99\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003cexclusiveGateway id=\"ExclusiveGateway_0ylj03b\"\u003e\u003cincoming\u003eSequenceFlow_1revjlo\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0aukmqa\u003c/outgoing\u003e\u003coutgoing\u003eSequenceFlow_0gz9g4a\u003c/outgoing\u003e\u003c/exclusiveGateway\u003e\u003csequenceFlow id=\"SequenceFlow_1revjlo\" sourceRef=\"ServiceTask_0x4lh8y\" targetRef=\"ExclusiveGateway_0ylj03b\"/\u003e\u003cendEvent id=\"EndEvent_1tx2im5\"\u003e\u003cincoming\u003eSequenceFlow_0aukmqa\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0aukmqa\" name=\"Multiple or no group selected.\" sourceRef=\"ExclusiveGateway_0ylj03b\" targetRef=\"EndEvent_1tx2im5\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"single_group\\\", None)  == None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003csequenceFlow id=\"SequenceFlow_0gz9g4a\" name=\"Single group selected.\" sourceRef=\"ExclusiveGateway_0ylj03b\" targetRef=\"ServiceTask_1eys2xb\"\u003e\u003cconditionExpression language=\"resilient-conditions\" xsi:type=\"tFormalExpression\"\u003e\u003c![CDATA[{\"conditions\":[{\"evaluation_id\":1,\"field_name\":null,\"method\":\"script\",\"type\":null,\"value\":{\"final_expression_text\":\"workflow.properties.get(\\\"single_group\\\", None)  != None\",\"language\":\"python\"}}],\"custom_condition\":\"\",\"logic_type\":\"all\",\"script_language\":null}]]\u003e\u003c/conditionExpression\u003e\u003c/sequenceFlow\u003e\u003cendEvent id=\"EndEvent_0ztglj4\"\u003e\u003cincoming\u003eSequenceFlow_1vc6i99\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1vc6i99\" sourceRef=\"ServiceTask_1eys2xb\" targetRef=\"EndEvent_0ztglj4\"/\u003e\u003csequenceFlow id=\"SequenceFlow_1ltof15\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0x4lh8y\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1uwawb8\"\u003e\u003ctext\u003e\u003c![CDATA[Get group id by fullpath name for domain id. Inputs: Group name selected for activity field, domain id from data table entry.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0pnctck\" sourceRef=\"ServiceTask_0x4lh8y\" targetRef=\"TextAnnotation_1uwawb8\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1mmk6x5\"\u003e\u003ctext\u003e\u003c![CDATA[Move computer by hardware key from\u00a0 to group by id. Inputs:\u00a0 Group id from step1, hardware key from data table row.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0k0smc8\" sourceRef=\"ServiceTask_1eys2xb\" targetRef=\"TextAnnotation_1mmk6x5\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0x4lh8y\" id=\"ServiceTask_0x4lh8y_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"274\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1eys2xb\" id=\"ServiceTask_1eys2xb_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"436\" y=\"332\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ExclusiveGateway_0ylj03b\" id=\"ExclusiveGateway_0ylj03b_di\" isMarkerVisible=\"true\"\u003e\u003comgdc:Bounds height=\"50\" width=\"50\" x=\"470\" y=\"181\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"450\" y=\"234\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1revjlo\" id=\"SequenceFlow_1revjlo_di\"\u003e\u003comgdi:waypoint x=\"374\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"470\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"377\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1tx2im5\" id=\"EndEvent_1tx2im5_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"681\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"654\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0aukmqa\" id=\"SequenceFlow_0aukmqa_di\"\u003e\u003comgdi:waypoint x=\"520\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"681\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"78\" x=\"560.6526315789474\" y=\"175\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0gz9g4a\" id=\"SequenceFlow_0gz9g4a_di\"\u003e\u003comgdi:waypoint x=\"495\" xsi:type=\"omgdc:Point\" y=\"231\"/\u003e\u003comgdi:waypoint x=\"495\" xsi:type=\"omgdc:Point\" y=\"282\"/\u003e\u003comgdi:waypoint x=\"495\" xsi:type=\"omgdc:Point\" y=\"282\"/\u003e\u003comgdi:waypoint x=\"495\" xsi:type=\"omgdc:Point\" y=\"332\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"64\" x=\"474\" y=\"253.0625\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0ztglj4\" id=\"EndEvent_0ztglj4_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"681\" y=\"354\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"654\" y=\"393\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1vc6i99\" id=\"SequenceFlow_1vc6i99_di\"\u003e\u003comgdi:waypoint x=\"536\" xsi:type=\"omgdc:Point\" y=\"372\"/\u003e\u003comgdi:waypoint x=\"681\" xsi:type=\"omgdc:Point\" y=\"372\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"563.5\" y=\"350.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1ltof15\" id=\"SequenceFlow_1ltof15_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"274\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"191\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1uwawb8\" id=\"TextAnnotation_1uwawb8_di\"\u003e\u003comgdc:Bounds height=\"73\" width=\"191\" x=\"228\" y=\"18\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0pnctck\" id=\"Association_0pnctck_di\"\u003e\u003comgdi:waypoint x=\"324\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"324\" xsi:type=\"omgdc:Point\" y=\"91\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1mmk6x5\" id=\"TextAnnotation_1mmk6x5_di\"\u003e\u003comgdc:Bounds height=\"90\" width=\"138\" x=\"213\" y=\"327\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0k0smc8\" id=\"Association_0k0smc8_di\"\u003e\u003comgdi:waypoint x=\"436\" xsi:type=\"omgdc:Point\" y=\"372\"/\u003e\u003comgdi:waypoint x=\"351\" xsi:type=\"omgdc:Point\" y=\"373\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Move an endpoint to a different group.",
      "export_key": "wf_sep_move_endpoint",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002339347,
      "name": "Example: SEP - Move Endpoint",
      "object_type": "sep_endpoint_details",
      "programmatic_name": "wf_sep_move_endpoint",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "32cefcd8-d19e-4b31-8e8d-eccc4e2b281f",
      "workflow_id": 415
    },
    {
      "actions": [],
      "content": {
        "version": 2,
        "workflow_id": "wf_sep_get_endpoint_details_for_artifact",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_endpoint_details_for_artifact\" isExecutable=\"true\" name=\"Example: SEP - Get Endpoint Details for artifact\"\u003e\u003cdocumentation\u003e\u003c![CDATA[Get endpoint details for artifact value. Artifact value will be \"DNS name\" or \"System name\"]]\u003e\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0te25gx\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1ko5njg\" name=\"SEP - Get Computers\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"91343444-7a62-4f7f-9812-918531b6bf10\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_computers script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\u0027inputs\u0027: {u\u0027sep_computername\u0027: u\u0027WIN-4OA0GKJN830\u0027}, \\n         \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-05-23 18:40:17\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \\n         \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027, \u0027execution_time_ms\u0027: 1966}, \\n         \u0027success\u0027: True, \\n         \u0027content\u0027: {u\u0027sort\u0027: [{u\u0027direction\u0027: u\u0027ASC\u0027, u\u0027property\u0027: u\u0027COMPUTER_NAME\u0027, u\u0027ascending\u0027: True}], u\u0027number\u0027: 0, \\n                     u\u0027firstPage\u0027: True, u\u0027content\u0027: [{u\u0027profileVersion\u0027: u\u002714.2.1031\u0027, u\u0027elamOnOff\u0027: 1, \\n                     u\u0027avEngineOnOff\u0027: 1, u\u0027profileChecksum\u0027: None, u\u0027atpDeviceId\u0027: None, \\n                     u\u0027processorType\u0027: u\u0027Intel64 Family 6 Model 15 Stepping 1\u0027, u\u0027oslanguage\u0027: u\u0027en-US\u0027, \\n                     u\u0027licenseId\u0027: None, u\u0027licenseStatus\u0027: -1, \\n                     u\u0027group\u0027: {u\u0027domain\u0027: {u\u0027id\u0027: u\u0027908090000946C25D330E919313D23887\u0027, u\u0027name\u0027: u\u0027Default\u0027}, u\u0027name\u0027: u\u0027My Company\\\\\\\\JP_TEST_GROUP_1\u0027, u\u0027fullPathName\u0027: None, u\u0027externalReferenceId\u0027: None, u\u0027source\u0027: None, u\u0027id\u0027: u\u00278E20F39B0946C25D118925C2E28C2D59\u0027}, \\n                     u\u0027uuid\u0027: u\u0027EA650B42-D10A-7F9F-A1D2-0A58C4F4CEB1\u0027, \\n                     u\u0027groupUpdateProvider\u0027: False, \\n                     u\u0027edrStatus\u0027: 2, u\u0027freeDisk\u0027: 40542507008, u\u0027diskDrive\u0027: u\u0027C:\\\\\\\\\u0027, u\u0027osFunction\u0027: u\u0027Server\u0027, u\u0027processorClock\u0027: 2394, \\n                     u\u0027mobilePhone\u0027: u\u0027\u0027, u\u0027jobTitle\u0027: u\u0027\u0027, u\u0027lastHeuristicThreatTime\u0027: 0, u\u0027osname\u0027: u\u0027Windows Server 2012\u0027, \\n                     u\u0027winServers\u0027: [u\u00270.0.0.0\u0027, u\u00270.0.0.0\u0027], u\u0027deploymentMessage\u0027: u\u0027\u0027, u\u0027idsSerialNo\u0027: u\u0027\u0027, \\n                     u\u0027employeeNumber\u0027: u\u0027\u0027, u\u0027snacLicenseId\u0027: None, u\u0027lastSiteId\u0027: u\u0027EE75B0850946C25D5287B58B5173A37C\u0027, \\n                     u\u0027uwf\u0027: 2, u\u0027currentClientId\u0027: u\u0027256B2B130946C25D40C83823AA2E5D4C\u0027, u\u0027osbitness\u0027: u\u0027x64\u0027, \\n                     u\u0027lastScanTime\u0027: 1558613245000, u\u0027email\u0027: u\u0027\u0027, u\u0027securityVirtualAppliance\u0027: None, \\n                     u\u0027worstInfectionIdx\u0027: u\u00270\u0027, u\u0027encryptedDevicePassword\u0027: None, u\u0027lastServerId\u0027: u\u00277D6AAA6F0946C25D170B3A2D442500B6\u0027, \\n                     u\u0027kernel\u0027: None, u\u0027lastUpdateTime\u0027: 1558632769514, u\u0027ptpOnOff\u0027: 1, u\u0027majorVersion\u0027: 14, \\n                     u\u0027lastConnectedIpAddr\u0027: u\u00279.70.194.93\u0027, u\u0027agentVersion\u0027: u\u002714.2.1031.0100\u0027, u\u0027deploymentRunningVersion\u0027: u\u002714.2.1031.0100\u0027, \\n                     u\u0027agentTimeStamp\u0027: 1558632769514, u\u0027osminor\u0027: 2, u\u0027osMajor\u0027: 6, u\u0027deploymentTargetVersion\u0027: u\u002714.2.1031.0100\u0027, \\n                     u\u0027osMinor\u0027: 2, u\u0027osFlavorNumber\u0027: 79, u\u0027logicalCpus\u0027: 0, u\u0027deploymentPreVersion\u0027: u\u0027\u0027, u\u0027hypervisorVendorId\u0027: u\u00270\u0027, \\n                     u\u0027fbwf\u0027: 2, u\u0027osversion\u0027: u\u00276.2\u0027, u\u0027dnsServers\u0027: [u\u00279.70.192.29\u0027, u\u0027FEC0:0000:0000:FFFF:0000:0000:0000:0001\u0027], \\n                     u\u0027vsicStatus\u0027: 3, u\u0027deleted\u0027: 0, u\u0027deploymentStatus\u0027: u\u0027302456832\u0027, u\u0027computerTimeStamp\u0027: 1558622386922, u\u0027bwf\u0027: 2, \\n                     u\u0027totalDiskSpace\u0027: 81567, u\u0027homePhone\u0027: u\u0027\u0027, u\u0027daOnOff\u0027: 1, u\u0027computerDescription\u0027: u\u0027\u0027, u\u0027pepOnOff\u0027: 1, \\n                     \u0027timediffLastUpdateTime\u0027: 448.98237204551697, u\u0027bashStatus\u0027: 1, u\u0027agentUsn\u0027: 2545799, u\u0027osName\u0027: u\u0027Windows Server 2012\u0027, \\n                     \u0027readableLastUpdateTime\u0027: \u00272019-05-23 18:32:49\u0027, u\u0027patternIdx\u0027: u\u00274A80266952462523E3E5AC3B816032AE\u0027, \\n                     u\u0027employeeStatus\u0027: u\u0027\u0027, u\u0027tmpDevice\u0027: None, u\u0027rebootRequired\u0027: 0, u\u0027subnetMasks\u0027: [u\u0027255.255.255.0\u0027, u\u002764\u0027], \\n                     u\u0027minorVersion\u0027: 2, u\u0027osservicePack\u0027: u\u0027\u0027, \u0027timediffLastVirusTime\u0027: 5638590.9823720455, u\u0027lastSiteName\u0027: u\u0027My Site\u0027, \\n                     u\u0027cidsEngineVersion\u0027: u\u00270.0.0.0\u0027, u\u0027lastDeploymentTime\u0027: 1550585147000, u\u0027isGrace\u0027: 0, u\u0027computerUsn\u0027: 2544267, \\n                     u\u0027agentId\u0027: u\u00276E5AA5CB0946C25D40C83823BB5107E6\u0027, u\u0027cidsBrowserFfOnOff\u0027: 1, u\u0027domainOrWorkgroup\u0027: u\u0027WORKGROUP\u0027, \\n                     u\u0027svaId\u0027: None, u\u0027loginDomain\u0027: u\u0027LocalComputer\u0027, u\u0027lastServerName\u0027: u\u0027WIN-4OA0GKJN830\u0027, u\u0027contentUpdate\u0027: 1, \\n                     u\u0027writeFiltersStatus\u0027: None, u\u0027infected\u0027: 0, \u0027timediffLastScanTime\u0027: 19972.982372045517, u\u0027memory\u0027: 6441979904, \\n                     u\u0027freeMem\u0027: 3117060096, u\u0027officePhone\u0027: u\u0027\u0027, u\u0027lastVirusTime\u0027: 1552994627000, u\u0027telemetryMid\u0027: u\u0027890E283B-41D3-4340-A397-66F6AFCAF33E\u0027,\\n                     u\u0027idsVersion\u0027: u\u0027\u0027, u\u0027cidsBrowserIeOnOff\u0027: 1, u\u0027publicKey\u0027: u\u0027BgIAAACkAABSU0ExAAgAAAEAAQDfMtYpvbC2ZOrpGFbK76tuyp2MZ7/6EGsFrqAV3ZBMfvMllksVObpPYvDSc5vCjtzthb1301VADLAspayGytsdAj5z8+LLpOnJkHNg9tIunm1lLkBTitevI6G+nNjyKd7uPn3+bxjk1LL8g1exL2C2SMPEXubdUa1N5xwmhhPHp6PSIAjY74QUcNyplfvylMS9QRWoQ70mqNy9tLLef6+qCYWTqGa7QKXS0WUJs8sJMzWfCrpeMVAmU5/s3yEu+OI+9RKgOeSfy7wRzmAWHQTofjHkYGYqwXcwwLX7AbWjdcpYo0Kaecf8e5t2ZvWyR362EaNxn0HYSjpKraY1hLK1\u0027, \\n                     u\u0027quarantineDesc\u0027: u\u0027Host Integrity check passed\\\\n\u0027, u\u0027cidsDrvMulfCode\u0027: 0, u\u0027biosVersion\u0027: u\u0027INTEL  - 6040000 PhoenixBIOS 4.0 Release 6.0\u0027, \\n                     u\u0027rebootReason\u0027: u\u0027\u0027, u\u0027telemetryHwid\u0027: u\u0027A942D8EB-32C3-E42F-FE83-723FDC431F32\u0027, \u0027readableLastVirusTime\u0027: \u00272019-03-19 11:23:47\u0027, \\n                     u\u0027cidsSilentMode\u0027: 0, u\u0027creationTime\u0027: 1550585043812, u\u0027macAddresses\u0027: [u\u002700-50-56-8B-A6-C3\u0027, u\u002700-50-56-8B-A6-C3\u0027], \\n                     u\u0027idsChecksum\u0027: None, u\u0027operatingSystem\u0027: u\u0027Windows Server 2012 \u0027, u\u0027osmajor\u0027: 6, u\u0027virtualizationPlatform\u0027: u\u0027Unknown\u0027, \\n                     u\u0027ipAddresses\u0027: [u\u00279.70.194.93\u0027, u\u0027FE80:0000:0000:0000:FC67:074E:CD22:0188\u0027], u\u0027physicalCpus\u0027: 1, u\u0027osBitness\u0027: u\u0027x64\u0027, \\n                     u\u0027cidsDefsetVersion\u0027: u\u0027190522063\u0027, u\u0027cidsDrvOnOff\u0027: 1, u\u0027computerName\u0027: u\u0027WIN-4OA0GKJN830\u0027, u\u0027logonUserName\u0027: u\u0027Administrator\u0027, \\n                     u\u0027licenseExpiry\u0027: 0, u\u0027osLanguage\u0027: u\u0027en-US\u0027, u\u0027gateways\u0027: [u\u00279.70.194.1\u0027, u\u00279.70.194.1\u0027, u\u00270.0.0.0\u0027, u\u00270.0.0.0\u0027], \\n                     u\u0027uniqueId\u0027: u\u0027D31AA16E0946C25D40C83823C500518B\u0027, u\u0027department\u0027: u\u0027\u0027, u\u0027isNpvdiClient\u0027: 0, u\u0027dhcpServer\u0027: u\u00270.0.0.0\u0027, \\n                     u\u0027readableLastScanTime\u0027: \u00272019-05-23 13:07:25\u0027, u\u0027osfunction\u0027: u\u0027Server\u0027, u\u0027description\u0027: u\u0027\u0027, u\u0027osflavorNumber\u0027: 79, \\n                     u\u0027tpmDevice\u0027: u\u00270\u0027, u\u0027onlineStatus\u0027: 1, u\u0027lastDownloadTime\u0027: 1558356063096, u\u0027apOnOff\u0027: 1, u\u0027timeZone\u0027: 480, u\u0027fullName\u0027: u\u0027\u0027, \\n                     u\u0027osVersion\u0027: u\u00276.2\u0027, u\u0027attributeExtension\u0027: u\u0027\u0027, u\u0027atpServer\u0027: u\u0027https://9.70.194.99:443\u0027, u\u0027tamperOnOff\u0027: 1, u\u0027osServicePack\u0027: u\u0027\u0027, \\n                     u\u0027agentType\u0027: u\u0027105\u0027, u\u0027serialNumber\u0027: u\u0027VMware-42 0b 65 ea 0a d1 9f 7f-a1 d2 0a 58 c4 f4 ce b1\u0027, u\u0027osElamStatus\u0027: 0, u\u0027installType\u0027: u\u00270\u0027, \\n                     u\u0027profileSerialNo\u0027: u\u00278E20-05/08/2019 07:00:23 015\u0027, u\u0027hardwareKey\u0027: u\u00271771D79454E53469DF4B290C06C104C9\u0027, u\u0027firewallOnOff\u0027: 1}], \\n                     u\u0027lastPage\u0027: True, u\u0027totalPages\u0027: 1, u\u0027numberOfElements\u0027: 1, u\u0027totalElements\u0027: 1, u\u0027size\u0027: 20}, \\n                    \\n         \u0027raw\u0027: \u0027\u0026lt;content_as_string\u0026gt;\u0027\\n         \u0027reason\u0027: None, \\n         \u0027version\u0027: \u00271.0\u0027}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_amp_get_computers script\\nDATA_TBL_FIELDS = [\\\"query_execution_time\\\", \\\"computerName\\\", \\\"uniqueId\\\", \\\"operatingSystem\\\", \\\"ipAddresses\\\",\\n                   \\\"sep_description\\\", \\\"domain_name\\\", \\\"domain_id\\\", \\\"hardwareKey\\\", \\\"group_name\\\", \\\"group_id\\\",\\n                   \\\"infected\\\"]\\nWF_NAME = \\\"Get Endpoint Details\\\"\\nFN_NAME = \\\"fn_sep_get_computers\\\"\\nC_OUTER = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\n\\n# Processing\\n\\ndef main():\\n    note_text = \u0027\u0027\\n    if C_OUTER is not None:\\n        note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; results returned for computer name \\\" \\\\\\n                   \\\"\u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, results[\\\"content\\\"][\\\"numberOfElements\\\"], unicode(INPUTS[\\\"sep_computername\\\"]),\\n                    FN_NAME)\\n\\n        eps = C_OUTER[\\\"content\\\"]\\n        for i in range(len(eps)):\\n            ep_osname = eps[i].get(\\\"osname\\\", \\\"\\\")\\n            newrow = incident.addRow(\\\"sep_endpoint_details\\\")\\n            newrow.query_execution_date = QUERY_EXECUTION_DATE\\n            for f in DATA_TBL_FIELDS:\\n                f_base = f.split(\u0027_\u0027)[0]\\n                if f_base == \\\"query_execution_time\\\":\\n                    continue\\n                if eps[i][f_base] is not None:\\n                    if isinstance(eps[i][f_base], unicode) or isinstance(eps[i][f_base], int) \\\\\\n                            or isinstance(eps[i][f_base], long) or len(eps[i][f_base]) == 0:\\n                        if f_base == \\\"onlineStatus\\\":\\n                            if eps[i][f_base]:\\n                                newrow[f] = \\\"Online\\\"\\n                            else:\\n                                newrow[f] = \\\"Offline\\\"\\n                        elif f_base == \\\"infected\\\":\\n                            if eps[i][f_base]:\\n                                newrow[f] = \\\"Yes\\\"\\n                            else:\\n                                newrow[f] = \\\"No\\\"\\n                        else:\\n                            newrow[f] = eps[i][f_base]\\n                    else:\\n                        newrow[f] = \u0027,\u0027.join(eps[i][f_base])\\n\\n            if \\\"windows\\\" in ep_osname.lower():\\n                if (eps[i][\\\"quarantineDesc\\\"].find(\\\"Host Integrity check passed\\\") == -1):\\n                    newrow.endpoint_quarantine_status = \\\"Quarantined\\\"\\n                else:\\n                    newrow.endpoint_quarantine_status = \\\"Un-Quarantined\\\"\\n            else:\\n                newrow.endpoint_quarantine_status = \\\"\\\"\\n\\n\\n            group = eps[i].group\\n            if group is not None:\\n                newrow.group_name = group[\\\"name\\\"]\\n                newrow.group_id = group[\\\"id\\\"]\\n                domain = group[\\\"domain\\\"]\\n                if domain is not None:\\n                    newrow.domain_name = domain[\\\"name\\\"]\\n                    newrow.domain_id = domain[\\\"id\\\"]\\n\\n    else:\\n        note_text += u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt;: There were \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results returned for computer \\\" \\\\\\n                     \\\"name \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt;\\\"\\\\\\n            .format(WF_NAME, unicode(INPUTS[\\\"sep_computername\\\"]), FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"post_processing_script_language\":\"python\",\"pre_processing_script\":\"inputs.sep_computername = artifact.value\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0te25gx\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1u4fpe2\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0te25gx\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1ko5njg\"/\u003e\u003cendEvent id=\"EndEvent_1ahwylo\"\u003e\u003cincoming\u003eSequenceFlow_1u4fpe2\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1u4fpe2\" sourceRef=\"ServiceTask_1ko5njg\" targetRef=\"EndEvent_1ahwylo\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0z43ebe\"\u003e\u003ctext\u003e\u003c![CDATA[Get endpoint properties. Input: Assigned from artifact value. Create new entry for data table \u0027Symantec SEP - Endpoint details\n\u0027 with results.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1is4p7g\" sourceRef=\"ServiceTask_1ko5njg\" targetRef=\"TextAnnotation_0z43ebe\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1ko5njg\" id=\"ServiceTask_1ko5njg_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"242\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0te25gx\" id=\"SequenceFlow_0te25gx_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"242\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"220\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1ahwylo\" id=\"EndEvent_1ahwylo_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"392\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"410\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1u4fpe2\" id=\"SequenceFlow_1u4fpe2_di\"\u003e\u003comgdi:waypoint x=\"342\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"392\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"367\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0z43ebe\" id=\"TextAnnotation_0z43ebe_di\"\u003e\u003comgdc:Bounds height=\"56\" width=\"307\" x=\"141\" y=\"58\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1is4p7g\" id=\"Association_1is4p7g_di\"\u003e\u003comgdi:waypoint x=\"293\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"294\" xsi:type=\"omgdc:Point\" y=\"114\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 2,
      "description": "Get endpoint details for artifact value. Artifact value will be \"DNS name\" or \"System name\"",
      "export_key": "wf_sep_get_endpoint_details_for_artifact",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002696677,
      "name": "Example: SEP - Get Endpoint Details for artifact",
      "object_type": "artifact",
      "programmatic_name": "wf_sep_get_endpoint_details_for_artifact",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "d0526b57-0bb9-42e5-b121-a0ad918e8778",
      "workflow_id": 425
    },
    {
      "actions": [],
      "content": {
        "version": 1,
        "workflow_id": "wf_sep_get_scan_results",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"wf_sep_get_scan_results\" isExecutable=\"true\" name=\"Example: SEP - Get Scan results\"\u003e\u003cdocumentation\u003eGet the results of a scan EOC command.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0ognbui\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_10dn449\" name=\"SEP - Get Command Status\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"b29ec053-be35-4311-9d8f-1b6275664c0d\"\u003e{\"inputs\":{},\"post_processing_script\":\"##  Symantec Endpoint Protection  - fn_sep_get_command_status script ##\\n# Example result:\\n\\\"\\\"\\\"\\nResult: {\\n    \u0027inputs\u0027: {u\u0027sep_commandid\u0027: u\u00272F260501C22842ABBA7EB0805D92EFE0\u0027},\\n    \u0027metrics\u0027: {\u0027package\u0027: \u0027fn-sep\u0027, \u0027timestamp\u0027: \u00272019-03-01 12:46:27\u0027, \u0027package_version\u0027: \u00271.0.0\u0027, \u0027host\u0027: \u0027myhost\u0027, \u0027version\u0027: \u00271.0\u0027,\\n    \u0027execution_time_ms\u0027: 1085},\\n    \u0027success\u0027: True,\\n    \u0027content\u0027:\\n                {\\n                  \\\"sort\\\": [\\n                    {\\n                      \\\"direction\\\": \\\"ASC\\\",\\n                      \\\"property\\\": \\\"Begintime\\\",\\n                      \\\"ascending\\\": true\\n                    }\\n                  ],\\n                  \\\"number\\\": 0,\\n                  \\\"firstPage\\\": true,\\n                  \\\"content\\\": [\\n                    {\\n                      \\\"computerName\\\": \\\"ep1\\\",\\n                      \\\"subStateId\\\": 0,\\n                      \\\"binaryFileId\\\": null,\\n                      \\\"lastUpdateTime\\\": null,\\n                      \\\"domainName\\\": \\\"Default\\\",\\n                      \\\"hardwareKey\\\": \\\"1771D79454E53469DF4B290C06C104C9\\\",\\n                      \\\"subStateDesc\\\": null,\\n                      \\\"stateId\\\": 0,\\n                      \\\"computerId\\\": \\\"D31AA16E0946C25D40C83823C500518B\\\",\\n                      \\\"computerIp\\\": \\\"192.168.194.93\\\",\\n                      \\\"beginTime\\\": null,\\n                      \\\"currentLoginUserName\\\": \\\"Administrator\\\",\\n                      \\\"resultInXML\\\": null\\n                    },\\n                    {\\n                      \\\"computerName\\\": \\\"ep2\\\",\\n                      \\\"subStateId\\\": 0,\\n                      \\\"binaryFileId\\\": null,\\n                      \\\"lastUpdateTime\\\": null,\\n                      \\\"domainName\\\": \\\"Default\\\",\\n                      \\\"hardwareKey\\\": \\\"DC7D24D6465566D2941F35BC8D17801E\\\",\\n                      \\\"subStateDesc\\\": null,\\n                      \\\"stateId\\\": 0,\\n                      \\\"computerId\\\": \\\"89AD1BBB0946C25D25E6C0984E971D8A\\\",\\n                      \\\"computerIp\\\": \\\"192.168.194.94\\\",\\n                      \\\"beginTime\\\": null,\\n                      \\\"currentLoginUserName\\\": \\\"Administrator\\\",\\n                      \\\"resultInXML\\\": null\\n                    }\\n                  ],\\n                  \\\"lastPage\\\": true,\\n                  \\\"totalPages\\\": 1,\\n                  \\\"size\\\": 20,\\n                  \\\"totalElements\\\": 2,\\n                  \\\"numberOfElements\\\": 2\\n                }\\n}\\n\\\"\\\"\\\"\\n#  Globals\\n# List of fields in datatable fn_sep_get_command_status script\\nDATA_TBL_FIELDS = [\\\"scan_result\\\"]\\nFN_NAME = \\\"fn_sep_get_command_status\\\"\\nWF_NAME = \\\"Get Scan results\\\"\\nC_OUTER = results.content\\nINPUTS = results.inputs\\nQUERY_EXECUTION_DATE = results[\\\"metrics\\\"][\\\"timestamp\\\"]\\nCOMMAND_ID = INPUTS[\\\"sep_commandid\\\"]\\nUPDATED_ROWS = 0\\nSTATUS_TYPE = \\\"Scan\\\"\\nARTIFACT_TYPE = row.artifact_type\\nARTIFACT_VALUE = row.artifact_value\\nARTIFACT_ID = row.artifact_id\\n\\n# Processing\\n\\ndef add_new_row(match_type, state, file_path, hash_value, computer_name, computer_id):\\n    global UPDATED_ROWS\\n    newrow = incident.addRow(\u0027sep_eoc_scan_results\u0027)\\n    newrow.scan_type = row.scan_type\\n    newrow.artifact_type = ARTIFACT_TYPE\\n    newrow.artifact_value = ARTIFACT_VALUE\\n    newrow.artifact_id = ARTIFACT_ID\\n    newrow.scan_commandid = row.scan_commandid\\n    newrow.scan_command_state = \\\"Completed\\\"\\n    newrow.scan_result = \u0027 \u0027.join(match_type.lower().split(\u0027_\u0027)).capitalize()\\n    newrow.query_execution_date = QUERY_EXECUTION_DATE\\n    newrow.file_path = file_path\\n    newrow.hash_value = hash_value\\n    newrow.computer_name = computer_name\\n    newrow.computer_id = computer_id\\n    UPDATED_ROWS += 1\\n\\n\\ndef update_row(match_type, file_path, hash_value, computer_name, computer_id):\\n    global UPDATED_ROWS\\n    row.query_execution_date = QUERY_EXECUTION_DATE\\n    row.scan_result = match_type\\n    row.file_path = file_path\\n    row.hash_value = hash_value\\n    row.computer_name = computer_name\\n    row.computer_id = computer_id\\n    UPDATED_ROWS += 1\\n\\n\\ndef get_file_name(file_path):\\n    return file_path.split(\\\"\\\\\\\\\\\")[-1] if \u0027\\\\\\\\\u0027 in file_path else file_path.split(\\\"/\\\")[-1]\\n\\n\\ndef main():\\n    global UPDATED_ROWS\\n    match_types = [\\\"HASH_MATCH\\\", \\\"FULL_MATCH\\\", \\\"PARTIAL_MATCH\\\"]\\n    total_ep_count =  C_OUTER[\\\"total_ep_count\\\"]\\n    scan_state = C_OUTER[\\\"overall_command_state\\\"]\\n    total_match_count = C_OUTER[\\\"total_match_count\\\"]\\n    total_not_completed = C_OUTER[\\\"total_not_completed\\\"]\\n    total_completed = total_ep_count - total_not_completed\\n    hits_over_limit = C_OUTER[\\\"scan_eoc_hits_over_limit\\\"]\\n    truncated_count = C_OUTER[\\\"truncated_count\\\"]\\n    att_name = C_OUTER[\\\"att_name\\\"]\\n    ep_match_count = 0\\n    note_text = \u0027\u0027\\n    status_note = \u0027\u0027\\n    if C_OUTER is not None:\\n        status_note =  \\\"\u0026lt;br\u0026gt;The command Completed on \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; of \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; targeted endpoints.\\\".format(total_completed, total_ep_count)\\n        if total_not_completed:\\n            status_note += \\\"\u0026lt;br\u0026gt;Note: There were \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; endpoints on which the command has not completed. Please review console/logs  \\\" \\\\\\n                           \\\"on the Symantec SEPM server for further details if required.\\\".format(total_not_completed)\\n        if hits_over_limit is not None:\\n            row.scan_result = \\\"Query: Matches over results limit see note/attachment.\\\"\\n            note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : \u0027EOC Scan for artifact\u0027 for artifact \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                        \\\"of type \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; with command id \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; returned \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; matches in truncated \\\" \\\\\\n                        \\\"results out of a total of \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt; for Resilient function \u0026lt;b\u0026gt;{6}\u0026lt;/b\u0026gt;. Added full result as an attachment. \\\" \\\\\\n                        \\\"Attachment name : \u0026lt;b\u0026gt;{7}\u0026lt;/b\u0026gt;. {8}\\\"\\\\\\n                .format(WF_NAME, unicode(ARTIFACT_VALUE), ARTIFACT_TYPE, COMMAND_ID, truncated_count, total_match_count, FN_NAME,\\n                        att_name, status_note)\\n        else:\\n            note_text = u\\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : \u0027EOC Scan for artifact\u0027 for artifact \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt; \\\" \\\\\\n                        \\\"of type \u0026lt;b\u0026gt;{2}\u0026lt;/b\u0026gt; with command id \u0026lt;b\u0026gt;{3}\u0026lt;/b\u0026gt; returned \u0026lt;b\u0026gt;{4}\u0026lt;/b\u0026gt; matches in results for \\\" \\\\\\n                        \\\"Resilient function \u0026lt;b\u0026gt;{5}\u0026lt;/b\u0026gt;. {6}\\\"\\\\\\n                .format(WF_NAME, unicode(ARTIFACT_VALUE), ARTIFACT_TYPE, COMMAND_ID, total_match_count, FN_NAME, status_note)\\n\\n        computers = C_OUTER[\\\"content\\\"]\\n        row.scan_command_state = scan_state\\n\\n        for i in range(len(computers)):\\n            ep = computers[i]\\n            # Process matches if command status is \u0027Completed\u0027\\n            if ep[\\\"stateId\\\"] == 3:\\n                computer_name = ep[\\\"computerName\\\"]\\n                computer_id = ep[\\\"computerId\\\"]\\n                if computers[i][\\\"scan_result\\\"][\\\"MATCH\\\"]:\\n                    ep_match_count += 1\\n                    for match_type in match_types:\\n                        if ep[\\\"scan_result\\\"][match_type + \\\"ES\\\"]:\\n                            if match_type in match_types[1:]:  # Full or partial match\\n                                for fm in ep[\\\"scan_result\\\"][match_type + \\\"ES\\\"]:\\n                                    if fm[\\\"result\\\"] == match_type:\\n                                        # Set the correct hash value.\\n                                        add_new_row(match_type, \\\"Completed\\\", fm.value, fm.hashValue, computer_name, computer_id)\\n                            else:\\n                                for hm in ep[\\\"scan_result\\\"][match_type + \\\"ES\\\"]:\\n                                    if hm[\\\"result\\\"] == match_type:\\n                                        add_new_row(match_type, \\\"Completed\\\", hm.value, row.artifact_value, computer_name, computer_id)\\n    else:\\n        note_text += \\\"Symantec SEP Integration: Workflow \u0026lt;b\u0026gt;{0}\u0026lt;/b\u0026gt; : EOC Scan for artifact returned \u0026lt;b\u0026gt;no\u0026lt;/b\u0026gt; results \\\" \\\\\\n                     \\\"for Resilient function \u0026lt;b\u0026gt;{1}\u0026lt;/b\u0026gt;\\\".format(WF_NAME, FN_NAME)\\n\\n    incident.addNote(helper.createRichText(note_text))\\n\\nif __name__ == \\\"__main__\\\":\\n    main()\",\"pre_processing_script\":\"inputs.sep_scan_date = row.query_execution_date\\ninputs.sep_incident_id = incident.id\\ninputs.sep_commandid = row.scan_commandid\\ninputs.sep_status_type = \\\"scan\\\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0ognbui\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1c2cetj\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0ognbui\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_10dn449\"/\u003e\u003cendEvent id=\"EndEvent_08zuzd7\"\u003e\u003cincoming\u003eSequenceFlow_1c2cetj\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1c2cetj\" sourceRef=\"ServiceTask_10dn449\" targetRef=\"EndEvent_08zuzd7\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_04thwt5\"\u003e\u003ctext\u003e\u003c![CDATA[Get current command status for EOC scan command by scan commandid.\u00a0 Inputs: Incident id assigned from current incident id, others assigned from data table row.\nUpdate data table with latest status. Create new data table rows for any matches discovered. All matches added as attachment if over results limit.\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1xk9ri7\" sourceRef=\"ServiceTask_10dn449\" targetRef=\"TextAnnotation_04thwt5\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_10dn449\" id=\"ServiceTask_10dn449_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"325\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0ognbui\" id=\"SequenceFlow_0ognbui_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"325\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"216.5\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_08zuzd7\" id=\"EndEvent_08zuzd7_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"453\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"426\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1c2cetj\" id=\"SequenceFlow_1c2cetj_di\"\u003e\u003comgdi:waypoint x=\"425\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"453\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"394\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_04thwt5\" id=\"TextAnnotation_04thwt5_di\"\u003e\u003comgdc:Bounds height=\"70\" width=\"525\" x=\"112\" y=\"52\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1xk9ri7\" id=\"Association_1xk9ri7_di\"\u003e\u003comgdi:waypoint x=\"375\" xsi:type=\"omgdc:Point\" y=\"166\"/\u003e\u003comgdi:waypoint x=\"377\" xsi:type=\"omgdc:Point\" y=\"122\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 1,
      "description": "Get the results of a scan EOC command.",
      "export_key": "wf_sep_get_scan_results",
      "last_modified_by": "a@example.com",
      "last_modified_time": 1668002349578,
      "name": "Example: SEP - Get Scan results",
      "object_type": "sep_eoc_scan_results",
      "programmatic_name": "wf_sep_get_scan_results",
      "tags": [
        {
          "tag_handle": "fn_sep",
          "value": null
        }
      ],
      "uuid": "7616f2b9-c48b-44b8-8e0b-b8086f3b04d3",
      "workflow_id": 429
    }
  ],
  "workspaces": []
}
