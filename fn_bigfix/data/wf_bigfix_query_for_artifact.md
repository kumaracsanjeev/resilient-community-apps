<!--
    DO NOT MANUALLY EDIT THIS FILE
    THIS FILE IS AUTOMATICALLY GENERATED WITH resilient-sdk codegen
-->

# Example: BigFix Query for Artifact

## Function - BigFix Artifact

### API Name
`fn_bigfix_artifact`

### Output Name
`None`

### Message Destination
`fn_bigfix`

### Pre-Processing Script
```python
inputs.bigfix_artifact_id = artifact.id
inputs.bigfix_artifact_value = artifact.value
inputs.bigfix_artifact_type = artifact.type
if artifact.properties:
  inputs.bigfix_artifact_properties_name = artifact.properties[0]["name"]
  inputs.bigfix_artifact_properties_value = artifact.properties[0]["value"]
inputs.bigfix_incident_id = incident.id
inputs.bigfix_incident_plan_status = incident.plan_status
```

### Post-Processing Script
```python
noteText = u"BigFix Integration: Ran query for artifact id {} of type {} and value {}.".format(artifact.id, artifact.type, artifact.value)

if results.get("content"):
  content = results.get("content")
  endpoint_hits = content.get("endpoint_hits")
  hits_count = content.get("hits_count")
  query_execution_date = content.get("query_execution_date")
  hits_over_limit = content.get("hits_over_limit")
  att_name = content.get("att_name")
  if hits_over_limit:
    noteText += "There were {} hits found. Added as an attachment. Attachment name: {}".format(hits_count, att_name)
  elif endpoint_hits:
    noteText += "There were {} hits found.".format(hits_count)
    for eh in endpoint_hits:
      newrow = incident.addRow('res_bigfix_query_results')
      newrow["res_query_execution_date"] = query_execution_date
      newrow["res_remediation_status"] = "None"
      newrow["res_artifact_type"] = artifact.type
      newrow["res_artifact_value"] = artifact.value
      newrow["res_bigfix_computer_id"] = eh.get("computer_id")
      newrow["res_bigfix_computer_name"] = eh.get("computer_name")
else:
  noteText += "There were no hits found."

incident.addNote(noteText)
```

---

