<!--
    DO NOT MANUALLY EDIT THIS FILE
    THIS FILE IS AUTOMATICALLY GENERATED WITH resilient-sdk codegen
-->

# Example: Qradar - Update this Reference Table Item DT

## Function - QRadar Reference Table Update Item

### API Name
`qradar_reference_table_update_item`

### Output Name
``

### Message Destination
`fn_qradar_integration`

### Pre-Processing Script
```python
inputs.qradar_label = row["qradar_server"]
inputs.qradar_reference_table_name = row.table
inputs.qradar_reference_table_item_outer_key = row.outer_key
inputs.qradar_reference_table_item_inner_key = row.inner_key

if rule.properties.qradar_ref_table_update:
  inputs.qradar_reference_table_item_value = rule.properties.qradar_ref_table_update
else:
  inputs.qradar_reference_table_item_value = "This is an example"
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
    incident.addNote(u"Successful updated\n{}".format(note))
    row['status'] = 'updated'
    row['value'] = results.inputs.qradar_reference_table_item_value
else:
    incident.addNote(u"Failure to updated item: {}\n{}".format(results['reason'], note))
```

---

