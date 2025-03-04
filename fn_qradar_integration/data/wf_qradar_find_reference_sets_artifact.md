<!--
    DO NOT MANUALLY EDIT THIS FILE
    THIS FILE IS AUTOMATICALLY GENERATED WITH resilient-sdk codegen
-->

# Example of finding all QRadar reference sets for artifact

## Function - QRadar Find Reference Sets

### API Name
`qradar_find_reference_sets`

### Output Name
``

### Message Destination
`fn_qradar_integration`

### Pre-Processing Script
```python
inputs.qradar_reference_set_item_value = artifact.value
inputs.qradar_label = rule.properties.qradar_server
```

### Post-Processing Script
```python
if results.reference_items:
  for item in results.reference_items:
    item_row = incident.addRow("qradar_reference_set")
    item_row["qradar_server"] = results.inputs["qradar_label"]
    item_row["reference_set"] = item["name"]
    item_row["item_value"] = item["data"][0]["value"]
    item_row["source"] = item["data"][0]["source"]
else:
  incident.addNote("No reference sets contain artifact: {} on QRadar server: {}".format(artifact.value, results.inputs["qradar_label"]))
```

---

