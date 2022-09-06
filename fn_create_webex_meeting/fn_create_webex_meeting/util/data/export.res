{
  "action_order": [],
  "actions": [
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Example: Create WebEx Meeting: Incident",
      "id": 86,
      "logic_type": "all",
      "message_destinations": [],
      "name": "Example: Create WebEx Meeting: Incident",
      "object_type": "incident",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "fb84dedc-c05a-4003-8a35-c6262e20520d",
      "view_items": [
        {
          "content": "4e514df5-880e-4255-b9f3-8179cbdb2600",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9e635549-f5f6-4817-ad48-a9f9c0beca7c",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "222ce2a2-58c8-44ff-ad02-f53ffc7fb85c",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "528de451-32db-41eb-818e-360d379ebf3a",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "example_create_webex_meeting"
      ]
    }
  ],
  "automatic_tasks": [],
  "export_date": 1612537460890,
  "export_format_version": 2,
  "extensions": [],
  "fields": [
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/webex_meeting_password",
      "hide_notification": false,
      "id": 421,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "webex_meeting_password",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "webex_meeting_password",
      "tooltip": "Meeting password",
      "type_id": 11,
      "uuid": "03dd1531-acbb-4db8-9950-53520eabbb5c",
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
      "export_key": "__function/webex_meeting_agenda",
      "hide_notification": false,
      "id": 419,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "webex_meeting_agenda",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "webex_meeting_agenda",
      "tooltip": "Meeting agenda",
      "type_id": 11,
      "uuid": "4b179897-3cfc-4a98-8864-d9c09e685d5a",
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
      "export_key": "__function/webex_meeting_name",
      "hide_notification": false,
      "id": 418,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "webex_meeting_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "webex_meeting_name",
      "tooltip": "Meeting name",
      "type_id": 11,
      "uuid": "14438dc7-4874-4971-9aa7-5596b13276a1",
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
      "export_key": "__function/webex_meeting_end_time",
      "hide_notification": false,
      "id": 422,
      "input_type": "datetimepicker",
      "internal": false,
      "is_tracked": false,
      "name": "webex_meeting_end_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "webex_meeting_end_time",
      "tooltip": "",
      "type_id": 11,
      "uuid": "9d368a2f-edf4-4353-a8ba-37f86c5a84e7",
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
      "export_key": "__function/webex_meeting_start_time",
      "hide_notification": false,
      "id": 420,
      "input_type": "datetimepicker",
      "internal": false,
      "is_tracked": false,
      "name": "webex_meeting_start_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "webex_meeting_start_time",
      "tooltip": "",
      "type_id": 11,
      "uuid": "5706ac62-97ee-4b54-9807-9f4b124ececc",
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
      "export_key": "actioninvocation/webex_meeting_agenda",
      "hide_notification": false,
      "id": 423,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "webex_meeting_agenda",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "WebEx Meeting Agenda",
      "tooltip": "",
      "type_id": 6,
      "uuid": "222ce2a2-58c8-44ff-ad02-f53ffc7fb85c",
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
      "export_key": "actioninvocation/webex_meeting_end_time",
      "hide_notification": false,
      "id": 427,
      "input_type": "datetimepicker",
      "internal": false,
      "is_tracked": false,
      "name": "webex_meeting_end_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "WebEx Meeting End Time",
      "tooltip": "",
      "type_id": 6,
      "uuid": "9e635549-f5f6-4817-ad48-a9f9c0beca7c",
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
      "export_key": "actioninvocation/webex_meeting_start_time",
      "hide_notification": false,
      "id": 424,
      "input_type": "datetimepicker",
      "internal": false,
      "is_tracked": false,
      "name": "webex_meeting_start_time",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "WebEx Meeting Start Time",
      "tooltip": "",
      "type_id": 6,
      "uuid": "4e514df5-880e-4255-b9f3-8179cbdb2600",
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
      "export_key": "actioninvocation/webex_meeting_password",
      "hide_notification": false,
      "id": 426,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "webex_meeting_password",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "WebEx Meeting Password",
      "tooltip": "",
      "type_id": 6,
      "uuid": "528de451-32db-41eb-818e-360d379ebf3a",
      "values": []
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
      "creator": {
        "display_name": "Resilient Sysadmin",
        "id": 3,
        "name": "a@a.com",
        "type": "user"
      },
      "description": {
        "content": "Creates a webex meeting and returns the Host URL and Attendee URL.",
        "format": "text"
      },
      "destination_handle": "fn_create_webex_meeting",
      "display_name": "Create WebEx Meeting",
      "export_key": "fn_create_webex_meeting",
      "id": 46,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 3,
        "name": "a@a.com",
        "type": "user"
      },
      "last_modified_time": 1612476209576,
      "name": "fn_create_webex_meeting",
      "tags": [],
      "uuid": "ab9bd63a-728e-4c80-aa36-27e288813c34",
      "version": 2,
      "view_items": [
        {
          "content": "14438dc7-4874-4971-9aa7-5596b13276a1",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "4b179897-3cfc-4a98-8864-d9c09e685d5a",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "03dd1531-acbb-4db8-9950-53520eabbb5c",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "5706ac62-97ee-4b54-9807-9f4b124ececc",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "9d368a2f-edf4-4353-a8ba-37f86c5a84e7",
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
          "name": "Example: Create WebEx Meeting: Incident",
          "object_type": "incident",
          "programmatic_name": "example_create_webex_meeting",
          "tags": [],
          "uuid": null,
          "workflow_id": 62
        }
      ]
    }
  ],
  "geos": null,
  "groups": null,
  "id": 166,
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1630356657085,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1630356657085,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ],
  "industries": null,
  "layouts": [],
  "locale": null,
  "message_destinations": [
    {
      "api_keys": [],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "fn_create_webex_meeting",
      "name": "fn_create_webex_meeting",
      "programmatic_name": "fn_create_webex_meeting",
      "tags": [],
      "users": [
        "a@a.com"
      ],
      "uuid": "97cb32ec-8bbf-4ddb-a3ad-4ecb466436d1"
    }
  ],
  "notifications": null,
  "overrides": [],
  "phases": [],
  "regulators": null,
  "roles": [],
  "scripts": [],
  "server_version": {
    "build_number": 0,
    "major": 40,
    "minor": 0,
    "version": "40.0.0"
  },
  "tags": [],
  "task_order": [],
  "timeframes": null,
  "types": [],
  "workflows": [
    {
      "actions": [],
      "content": {
        "version": 22,
        "workflow_id": "example_create_webex_meeting",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"example_create_webex_meeting\" isExecutable=\"true\" name=\"Example: Create WebEx Meeting: Incident\"\u003e\u003cdocumentation\u003e\u003c![CDATA[An example workflow that creates a Cisco WebEx meeting based on incident properties.\nThe Webex meeting URLs are written to an incident note.]]\u003e\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0xzyoki\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0b0ouwd\" name=\"Create WebEx Meeting\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"ab9bd63a-728e-4c80-aa36-27e288813c34\"\u003e{\"inputs\":{\"03dd1531-acbb-4db8-9950-53520eabbb5c\":{\"input_type\":\"static\",\"static_input\":{\"multiselect_value\":[],\"text_value\":\"abcxyzABC!!!\"}},\"5706ac62-97ee-4b54-9807-9f4b124ececc\":{\"input_type\":\"static\",\"static_input\":{\"date_value\":1612478364000,\"multiselect_value\":[]}},\"9d368a2f-edf4-4353-a8ba-37f86c5a84e7\":{\"input_type\":\"static\",\"static_input\":{\"date_value\":1612479024000,\"multiselect_value\":[]}}},\"post_processing_script\":\"content = results.get(\\\"content\\\")\\n\\nif not results.success:\\n  text = u\\\"Unable to create Cisco WebEx Meeting\\\"\\n\\n  fail_reason = content.get(\\\"fail_reason\\\")\\n  if fail_reason:\\n    text = u\\\"{0}:\\\\n\\\\tFailure reason: {1}\\\".format(text, fail_reason)\\nelse:\\n\\n  host_url = content.get(\\\"host_url\\\")\\n  attendee_url = content.get(\\\"attendee_url\\\")\\n\\n  if host_url is None:\\n    host_url = \\\"\\\"\\n\\n  if attendee_url is None:\\n    attendee_url = \\\"\\\"\\n    \\n  ref_html_host = u\\\"\\\"\\\"\u0026lt;a href=\u0027{0}\u0027\u0026gt;Link\u0026lt;/a\u0026gt;\\\"\\\"\\\".format(host_url)\\n  ref_html_attendee = u\\\"\\\"\\\"\u0026lt;a href=\u0027{0}\u0027\u0026gt;Link\u0026lt;/a\u0026gt;\\\"\\\"\\\".format(attendee_url)\\n\\n  text = u\\\"\u0026lt;b\u0026gt;Cisco WebEx Meeting Links:\u0026lt;/b\u0026gt;\u0026lt;br /\u0026gt;Host URL: {0}\u0026lt;br /\u0026gt;Attendee URL: {1}\\\".format(ref_html_host, ref_html_attendee)\\n  \\nnote = helper.createRichText(text)\\nincident.addNote(note)\",\"pre_processing_script\":\"# To set meeting name to the workflow inputs, uncomment the following lines\\ninputs.webex_meeting_name = incident.name\\n\\ninputs.webex_meeting_start_time = inputs.webex_meeting_start_time if rule.properties.webex_meeting_start_time is None else rule.properties.webex_meeting_start_time\\ninputs.webex_meeting_end_time = inputs.webex_meeting_end_time if rule.properties.webex_meeting_end_time is None else rule.properties.webex_meeting_end_time\\n\\n# Get the agenda from the activity field or the incident description\\nif rule.properties.webex_meeting_agenda is None:\\n  if incident.description is not None and incident.description.content is not None:\\n    inputs.webex_meeting_agenda = incident.description.content\\n  else:\\n    inputs.webex_meeting_agenda = \\\"\\\"\\nelse:\\n  inputs.webex_meeting_agenda = rule.properties.webex_meeting_agenda\\n\\ninputs.webex_meeting_password = inputs.webex_meeting_password if rule.properties.webex_meeting_password is None else rule.properties.webex_meeting_password\\n  \",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0xzyoki\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0klrcn9\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0xzyoki\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0b0ouwd\"/\u003e\u003cendEvent id=\"EndEvent_0run4lx\"\u003e\u003cincoming\u003eSequenceFlow_0klrcn9\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0klrcn9\" sourceRef=\"ServiceTask_0b0ouwd\" targetRef=\"EndEvent_0run4lx\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1o8mdxo\"\u003e\u003ctext\u003eInputs:\u00a0webex_meeting_name, webex_meeting_agenda, and webex_meeting_password\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0f30qox\" sourceRef=\"ServiceTask_0b0ouwd\" targetRef=\"TextAnnotation_1o8mdxo\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0e7dqsz\"\u003e\u003ctext\u003eOutputs: host_url and attendee_url written to incident note\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_173k5vn\" sourceRef=\"ServiceTask_0b0ouwd\" targetRef=\"TextAnnotation_0e7dqsz\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0b0ouwd\" id=\"ServiceTask_0b0ouwd_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"454\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0xzyoki\" id=\"SequenceFlow_0xzyoki_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"454\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"281\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0run4lx\" id=\"EndEvent_0run4lx_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"854\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"827\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0klrcn9\" id=\"SequenceFlow_0klrcn9_di\"\u003e\u003comgdi:waypoint x=\"554\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"854\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"90\" x=\"659\" y=\"184.5\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1o8mdxo\" id=\"TextAnnotation_1o8mdxo_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"426\" x=\"129\" y=\"34\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0f30qox\" id=\"Association_0f30qox_di\"\u003e\u003comgdi:waypoint x=\"463\" xsi:type=\"omgdc:Point\" y=\"167\"/\u003e\u003comgdi:waypoint x=\"358\" xsi:type=\"omgdc:Point\" y=\"64\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0e7dqsz\" id=\"TextAnnotation_0e7dqsz_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"336\" x=\"618\" y=\"34\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_173k5vn\" id=\"Association_173k5vn_di\"\u003e\u003comgdi:waypoint x=\"554\" xsi:type=\"omgdc:Point\" y=\"176\"/\u003e\u003comgdi:waypoint x=\"735\" xsi:type=\"omgdc:Point\" y=\"64\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 22,
      "creator_id": "a@a.com",
      "description": "An example workflow that creates a Cisco WebEx meeting based on incident properties.\nThe Webex meeting URLs are written to an incident note.",
      "export_key": "example_create_webex_meeting",
      "last_modified_by": "a@a.com",
      "last_modified_time": 1612535250618,
      "name": "Example: Create WebEx Meeting: Incident",
      "object_type": "incident",
      "programmatic_name": "example_create_webex_meeting",
      "tags": [],
      "uuid": "4c5b7eb3-1c2b-411f-bd83-b4a11e06f801",
      "workflow_id": 62
    }
  ],
  "workspaces": []
}
