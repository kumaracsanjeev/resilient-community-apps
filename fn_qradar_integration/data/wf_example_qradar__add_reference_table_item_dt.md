<!--
    DO NOT MANUALLY EDIT THIS FILE
    THIS FILE IS AUTOMATICALLY GENERATED WITH resilient-sdk codegen
-->

# Example: QRadar - Add Reference Table Item DT

## Function - QRadar Reference Table Add Item

### API Name
`qradar_reference_table_add_item`

### Output Name
`None`

### Message Destination
`fn_qradar_integration`

### Pre-Processing Script
```python
inputs.qradar_label = row["qradar_server"]
inputs.qradar_reference_table_name = row.reference_table
inputs.qradar_reference_table_item_outer_key = rule.properties.qradar_ref_table_outer_key or "1"
inputs.qradar_reference_table_item_inner_key = rule.properties.qradar_ref_table_inner_key or "city"
inputs.qradar_reference_table_item_value = rule.properties.qradar_ref_table_update
```

### Post-Processing Script
```python
note = u"""Outer key: {}
Inner key: {}
Entry: {}
Reference table: {}
QRadar Server: {}""".format(results.inputs.qradar_reference_table_item_outer_key,
                              results.inputs.qradar_reference_table_item_inner_key,
                              results.inputs.qradar_reference_table_item_value, 
                              results.inputs.qradar_reference_table_name,
                              row["qradar_server"])
if results.success:
    incident.addNote(u"Successful added\n{}".format(note))
    row.number_of_elements = str(results["content"]["content"]["number_of_elements"])
else:
    incident.addNote(u"Failure to add item: {}\n{}".format(results['reason'], note))
```

---

