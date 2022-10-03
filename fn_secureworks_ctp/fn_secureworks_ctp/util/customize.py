# -*- coding: utf-8 -*-

"""Generate the Resilient customizations required for fn_secureworks_ctp"""

try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition


def codegen_reload_data():
    """
    Parameters required reload codegen for the fn_secureworks_ctp package
    """
    return {
        "package": u"fn_secureworks_ctp",
        "message_destinations": [u"fn_secureworks_ctp"],
        "functions": [u"secureworks_ctp_close_ticket"],
        "workflows": [u"example_secureworks_close_ticket"],
        "actions": [u"Secureworks CTP Close Ticket"],
        "incident_fields": [u"scwx_ctp_status", u"scwx_ctp_category_type", u"scwx_ctp_contact_name", u"scwx_ctp_request_type", u"scwx_ctp_priority", u"scwx_ctp_ticket_type", u"scwx_ctp_category", u"scwx_ctp_close_code", u"scwx_ctp_category_item", u"scwx_ctp_source", u"scwx_ctp_date_created", u"scwx_ctp_category_class", u"scwx_ctp_contact_id", u"scwx_ctp_grouping_type", u"scwx_ctp_ticket_id"],
        "incident_artifact_types": [],
        "datatables": [],
        "automatic_tasks": [],
        "scripts": []
    }


def customization_data(client=None):
    """
    Returns a Generator of ImportDefinitions (Customizations).
    Install them using `resilient-circuits customize`

    Contents:
    - Message Destinations:
        - fn_secureworks_ctp
    - Functions:
        - secureworks_ctp_close_ticket
    - Workflows:
        - example_secureworks_close_ticket
    - Rules:
        - Secureworks CTP Close Ticket
    - Incident Fields:
        - scwx_ctp_status
        - scwx_ctp_category_type
        - scwx_ctp_contact_name
        - scwx_ctp_request_type
        - scwx_ctp_priority
        - scwx_ctp_ticket_type
        - scwx_ctp_category
        - scwx_ctp_close_code
        - scwx_ctp_category_item
        - scwx_ctp_source
        - scwx_ctp_date_created
        - scwx_ctp_category_class
        - scwx_ctp_contact_id
        - scwx_ctp_grouping_type
        - scwx_ctp_ticket_id
    """

    yield ImportDefinition(u"""
eyJhY3Rpb25fb3JkZXIiOiBbXSwgImFjdGlvbnMiOiBbeyJhdXRvbWF0aW9ucyI6IFtdLCAiY29u
ZGl0aW9ucyI6IFt7ImV2YWx1YXRpb25faWQiOiBudWxsLCAiZmllbGRfbmFtZSI6ICJpbmNpZGVu
dC5wcm9wZXJ0aWVzLnNjd3hfY3RwX3N0YXR1cyIsICJtZXRob2QiOiAibm90X2VxdWFscyIsICJ0
eXBlIjogbnVsbCwgInZhbHVlIjogIkNsb3NlZCJ9LCB7ImV2YWx1YXRpb25faWQiOiBudWxsLCAi
ZmllbGRfbmFtZSI6ICJpbmNpZGVudC5wcm9wZXJ0aWVzLnNjd3hfY3RwX3RpY2tldF9pZCIsICJt
ZXRob2QiOiAiaGFzX2FfdmFsdWUiLCAidHlwZSI6IG51bGwsICJ2YWx1ZSI6IG51bGx9LCB7ImV2
YWx1YXRpb25faWQiOiBudWxsLCAiZmllbGRfbmFtZSI6ICJpbmNpZGVudC5wbGFuX3N0YXR1cyIs
ICJtZXRob2QiOiAiY2hhbmdlZF90byIsICJ0eXBlIjogbnVsbCwgInZhbHVlIjogIkNsb3NlZCJ9
LCB7ImV2YWx1YXRpb25faWQiOiBudWxsLCAiZmllbGRfbmFtZSI6ICJpbmNpZGVudC5wcm9wZXJ0
aWVzLnNjd3hfY3RwX3N0YXR1cyIsICJtZXRob2QiOiAibm90X2VxdWFscyIsICJ0eXBlIjogbnVs
bCwgInZhbHVlIjogIlJlc29sdmVkIn1dLCAiZW5hYmxlZCI6IHRydWUsICJleHBvcnRfa2V5Ijog
IlNlY3VyZXdvcmtzIENUUCBDbG9zZSBUaWNrZXQiLCAiaWQiOiAzMCwgImxvZ2ljX3R5cGUiOiAi
YWxsIiwgIm1lc3NhZ2VfZGVzdGluYXRpb25zIjogW10sICJuYW1lIjogIlNlY3VyZXdvcmtzIENU
UCBDbG9zZSBUaWNrZXQiLCAib2JqZWN0X3R5cGUiOiAiaW5jaWRlbnQiLCAidGFncyI6IFtdLCAi
dGltZW91dF9zZWNvbmRzIjogODY0MDAsICJ0eXBlIjogMCwgInV1aWQiOiAiY2RkZGIwMzEtMjFh
Yi00YzY1LTk1YWQtYTQxMzU5ZGZiNmQwIiwgInZpZXdfaXRlbXMiOiBbXSwgIndvcmtmbG93cyI6
IFsiZXhhbXBsZV9zZWN1cmV3b3Jrc19jbG9zZV90aWNrZXQiXX1dLCAiYXV0b21hdGljX3Rhc2tz
IjogW10sICJleHBvcnRfZGF0ZSI6IDE1OTY3NDc5NzIyMDAsICJleHBvcnRfZm9ybWF0X3ZlcnNp
b24iOiAyLCAiZmllbGRzIjogW3siYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiYmxhbmtf
b3B0aW9uIjogZmFsc2UsICJjYWxjdWxhdGVkIjogZmFsc2UsICJjaGFuZ2VhYmxlIjogdHJ1ZSwg
ImNob3NlbiI6IGZhbHNlLCAiZGVmYXVsdF9jaG9zZW5fYnlfc2VydmVyIjogZmFsc2UsICJkZXBy
ZWNhdGVkIjogZmFsc2UsICJleHBvcnRfa2V5IjogIl9fZnVuY3Rpb24vaW5jaWRlbnRfaWQiLCAi
aGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImlkIjogMjI2LCAiaW5wdXRfdHlwZSI6ICJudW1i
ZXIiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlzX3RyYWNrZWQiOiBmYWxzZSwgIm5hbWUiOiAiaW5j
aWRlbnRfaWQiLCAib3BlcmF0aW9uX3Blcm1zIjoge30sICJvcGVyYXRpb25zIjogW10sICJwbGFj
ZWhvbGRlciI6ICIiLCAicHJlZml4IjogbnVsbCwgInJlYWRfb25seSI6IGZhbHNlLCAicmVxdWly
ZWQiOiAiYWx3YXlzIiwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6IFtdLCAidGVtcGxhdGVz
IjogW10sICJ0ZXh0IjogImluY2lkZW50X2lkIiwgInRvb2x0aXAiOiAiIiwgInR5cGVfaWQiOiAx
MSwgInV1aWQiOiAiMGRkMWMyZTEtOTVjOS00NDRjLTg2ODgtMjY5ZGVhNmZiN2YxIiwgInZhbHVl
cyI6IFtdfSwgeyJhbGxvd19kZWZhdWx0X3ZhbHVlIjogZmFsc2UsICJibGFua19vcHRpb24iOiBm
YWxzZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgImNoYW5nZWFibGUiOiB0cnVlLCAiY2hvc2VuIjog
ZmFsc2UsICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImRlcHJlY2F0ZWQiOiBm
YWxzZSwgImV4cG9ydF9rZXkiOiAiaW5jaWRlbnQvc2N3eF9jdHBfY29udGFjdF9uYW1lIiwgImhp
ZGVfbm90aWZpY2F0aW9uIjogZmFsc2UsICJpZCI6IDI1OSwgImlucHV0X3R5cGUiOiAidGV4dCIs
ICJpbnRlcm5hbCI6IGZhbHNlLCAiaXNfdHJhY2tlZCI6IGZhbHNlLCAibmFtZSI6ICJzY3d4X2N0
cF9jb250YWN0X25hbWUiLCAib3BlcmF0aW9uX3Blcm1zIjoge30sICJvcGVyYXRpb25zIjogW10s
ICJwbGFjZWhvbGRlciI6ICIiLCAicHJlZml4IjogInByb3BlcnRpZXMiLCAicmVhZF9vbmx5Ijog
ZmFsc2UsICJyaWNoX3RleHQiOiBmYWxzZSwgInRhZ3MiOiBbXSwgInRlbXBsYXRlcyI6IFtdLCAi
dGV4dCI6ICJTZWN1cmV3b3JrcyBDVFAgY29udGFjdCBuYW1lIiwgInRvb2x0aXAiOiAiIiwgInR5
cGVfaWQiOiAwLCAidXVpZCI6ICI4NjQ4NDgwYS02NTI4LTQxNjItODExNS00ZWU4MzY4YzEwYWQi
LCAidmFsdWVzIjogW119LCB7ImFsbG93X2RlZmF1bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29w
dGlvbiI6IGZhbHNlLCAiY2FsY3VsYXRlZCI6IGZhbHNlLCAiY2hhbmdlYWJsZSI6IHRydWUsICJj
aG9zZW4iOiBmYWxzZSwgImRlZmF1bHRfY2hvc2VuX2J5X3NlcnZlciI6IGZhbHNlLCAiZGVwcmVj
YXRlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJpbmNpZGVudC9zY3d4X2N0cF90aWNrZXRfaWQi
LCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImlkIjogMjU0LCAiaW5wdXRfdHlwZSI6ICJ0
ZXh0IiwgImludGVybmFsIjogZmFsc2UsICJpc190cmFja2VkIjogZmFsc2UsICJuYW1lIjogInNj
d3hfY3RwX3RpY2tldF9pZCIsICJvcGVyYXRpb25fcGVybXMiOiB7fSwgIm9wZXJhdGlvbnMiOiBb
XSwgInBsYWNlaG9sZGVyIjogIiIsICJwcmVmaXgiOiAicHJvcGVydGllcyIsICJyZWFkX29ubHki
OiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6IFtdLCAidGVtcGxhdGVzIjogW10s
ICJ0ZXh0IjogIlNlY3VyZXdvcmtzIENUUCB0aWNrZXRJZCIsICJ0b29sdGlwIjogIiIsICJ0eXBl
X2lkIjogMCwgInV1aWQiOiAiNWZlOGI2MmQtMGFlNS00OTk5LWJiZGMtNTQxYTczZmM5ZWNlIiwg
InZhbHVlcyI6IFtdfSwgeyJhbGxvd19kZWZhdWx0X3ZhbHVlIjogZmFsc2UsICJibGFua19vcHRp
b24iOiBmYWxzZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgImNoYW5nZWFibGUiOiB0cnVlLCAiY2hv
c2VuIjogZmFsc2UsICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImRlcHJlY2F0
ZWQiOiBmYWxzZSwgImV4cG9ydF9rZXkiOiAiaW5jaWRlbnQvc2N3eF9jdHBfdGlja2V0X3R5cGUi
LCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImlkIjogMjUyLCAiaW5wdXRfdHlwZSI6ICJ0
ZXh0IiwgImludGVybmFsIjogZmFsc2UsICJpc190cmFja2VkIjogZmFsc2UsICJuYW1lIjogInNj
d3hfY3RwX3RpY2tldF90eXBlIiwgIm9wZXJhdGlvbl9wZXJtcyI6IHt9LCAib3BlcmF0aW9ucyI6
IFtdLCAicGxhY2Vob2xkZXIiOiAiIiwgInByZWZpeCI6ICJwcm9wZXJ0aWVzIiwgInJlYWRfb25s
eSI6IGZhbHNlLCAicmljaF90ZXh0IjogZmFsc2UsICJ0YWdzIjogW10sICJ0ZW1wbGF0ZXMiOiBb
XSwgInRleHQiOiAiU2VjdXJld29ya3MgQ1RQIHRpY2tldFR5cGUiLCAidG9vbHRpcCI6ICIiLCAi
dHlwZV9pZCI6IDAsICJ1dWlkIjogImUwZWM5N2ZlLTQ2ZTgtNGM5OS1iMzNiLWRlMjgwN2I3NWZm
MSIsICJ2YWx1ZXMiOiBbXX0sIHsiYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiYmxhbmtf
b3B0aW9uIjogZmFsc2UsICJjYWxjdWxhdGVkIjogZmFsc2UsICJjaGFuZ2VhYmxlIjogdHJ1ZSwg
ImNob3NlbiI6IGZhbHNlLCAiZGVmYXVsdF9jaG9zZW5fYnlfc2VydmVyIjogZmFsc2UsICJkZXBy
ZWNhdGVkIjogZmFsc2UsICJleHBvcnRfa2V5IjogImluY2lkZW50L3Njd3hfY3RwX2NhdGVnb3J5
X2l0ZW0iLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImlkIjogMjYwLCAiaW5wdXRfdHlw
ZSI6ICJ0ZXh0IiwgImludGVybmFsIjogZmFsc2UsICJpc190cmFja2VkIjogZmFsc2UsICJuYW1l
IjogInNjd3hfY3RwX2NhdGVnb3J5X2l0ZW0iLCAib3BlcmF0aW9uX3Blcm1zIjoge30sICJvcGVy
YXRpb25zIjogW10sICJwbGFjZWhvbGRlciI6ICIiLCAicHJlZml4IjogInByb3BlcnRpZXMiLCAi
cmVhZF9vbmx5IjogZmFsc2UsICJyaWNoX3RleHQiOiBmYWxzZSwgInRhZ3MiOiBbXSwgInRlbXBs
YXRlcyI6IFtdLCAidGV4dCI6ICJTZWN1cmV3b3JrcyBDVFAgY2F0ZWdvcnlJdGVtIiwgInRvb2x0
aXAiOiAiIiwgInR5cGVfaWQiOiAwLCAidXVpZCI6ICJhOTYyMmJlYy01NWU1LTQyZmYtODMwMC1m
ZWNlYjlkMTFiNzQiLCAidmFsdWVzIjogW119LCB7ImFsbG93X2RlZmF1bHRfdmFsdWUiOiBmYWxz
ZSwgImJsYW5rX29wdGlvbiI6IGZhbHNlLCAiY2FsY3VsYXRlZCI6IGZhbHNlLCAiY2hhbmdlYWJs
ZSI6IHRydWUsICJjaG9zZW4iOiBmYWxzZSwgImRlZmF1bHRfY2hvc2VuX2J5X3NlcnZlciI6IGZh
bHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJpbmNpZGVudC9zY3d4X2N0
cF9jYXRlZ29yeSIsICJoaWRlX25vdGlmaWNhdGlvbiI6IGZhbHNlLCAiaWQiOiAyNTEsICJpbnB1
dF90eXBlIjogInRleHQiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlzX3RyYWNrZWQiOiBmYWxzZSwg
Im5hbWUiOiAic2N3eF9jdHBfY2F0ZWdvcnkiLCAib3BlcmF0aW9uX3Blcm1zIjoge30sICJvcGVy
YXRpb25zIjogW10sICJwbGFjZWhvbGRlciI6ICIiLCAicHJlZml4IjogInByb3BlcnRpZXMiLCAi
cmVhZF9vbmx5IjogZmFsc2UsICJyaWNoX3RleHQiOiBmYWxzZSwgInRhZ3MiOiBbXSwgInRlbXBs
YXRlcyI6IFtdLCAidGV4dCI6ICJTZWN1cmV3b3JrcyBDVFAgY2F0ZWdvcnkiLCAidG9vbHRpcCI6
ICIiLCAidHlwZV9pZCI6IDAsICJ1dWlkIjogIjA4ZjIyNjEzLTZiNDctNDg0ZC04MDA1LTVlMDAx
YmY2MDg0YyIsICJ2YWx1ZXMiOiBbXX0sIHsiYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAi
Ymxhbmtfb3B0aW9uIjogZmFsc2UsICJjYWxjdWxhdGVkIjogZmFsc2UsICJjaGFuZ2VhYmxlIjog
dHJ1ZSwgImNob3NlbiI6IGZhbHNlLCAiZGVmYXVsdF9jaG9zZW5fYnlfc2VydmVyIjogZmFsc2Us
ICJkZXByZWNhdGVkIjogZmFsc2UsICJleHBvcnRfa2V5IjogImluY2lkZW50L3Njd3hfY3RwX3By
aW9yaXR5IiwgImhpZGVfbm90aWZpY2F0aW9uIjogZmFsc2UsICJpZCI6IDI1NiwgImlucHV0X3R5
cGUiOiAidGV4dCIsICJpbnRlcm5hbCI6IGZhbHNlLCAiaXNfdHJhY2tlZCI6IGZhbHNlLCAibmFt
ZSI6ICJzY3d4X2N0cF9wcmlvcml0eSIsICJvcGVyYXRpb25fcGVybXMiOiB7fSwgIm9wZXJhdGlv
bnMiOiBbXSwgInBsYWNlaG9sZGVyIjogIiIsICJwcmVmaXgiOiAicHJvcGVydGllcyIsICJyZWFk
X29ubHkiOiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6IFtdLCAidGVtcGxhdGVz
IjogW10sICJ0ZXh0IjogIlNlY3VyZXdvcmtzIENUUCBwcmlvcml0eSIsICJ0b29sdGlwIjogIiIs
ICJ0eXBlX2lkIjogMCwgInV1aWQiOiAiZGFjMWUwMTYtNGUzMS00OWI1LWE0MTYtN2EyZmI0YzE0
MDRmIiwgInZhbHVlcyI6IFtdfSwgeyJhbGxvd19kZWZhdWx0X3ZhbHVlIjogZmFsc2UsICJibGFu
a19vcHRpb24iOiBmYWxzZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgImNoYW5nZWFibGUiOiB0cnVl
LCAiY2hvc2VuIjogZmFsc2UsICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImRl
cHJlY2F0ZWQiOiBmYWxzZSwgImV4cG9ydF9rZXkiOiAiaW5jaWRlbnQvc2N3eF9jdHBfY2F0ZWdv
cnlfdHlwZSIsICJoaWRlX25vdGlmaWNhdGlvbiI6IGZhbHNlLCAiaWQiOiAyNTMsICJpbnB1dF90
eXBlIjogInRleHQiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlzX3RyYWNrZWQiOiBmYWxzZSwgIm5h
bWUiOiAic2N3eF9jdHBfY2F0ZWdvcnlfdHlwZSIsICJvcGVyYXRpb25fcGVybXMiOiB7fSwgIm9w
ZXJhdGlvbnMiOiBbXSwgInBsYWNlaG9sZGVyIjogIiIsICJwcmVmaXgiOiAicHJvcGVydGllcyIs
ICJyZWFkX29ubHkiOiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6IFtdLCAidGVt
cGxhdGVzIjogW10sICJ0ZXh0IjogIlNlY3VyZXdvcmtzIENUUCBjYXRlZ29yeVR5cGUiLCAidG9v
bHRpcCI6ICIiLCAidHlwZV9pZCI6IDAsICJ1dWlkIjogImY3MTZkODFkLTk4MzItNGMzOS05MTEz
LTJhYmNmMTYzODI3NCIsICJ2YWx1ZXMiOiBbXX0sIHsiYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZh
bHNlLCAiYmxhbmtfb3B0aW9uIjogZmFsc2UsICJjYWxjdWxhdGVkIjogZmFsc2UsICJjaGFuZ2Vh
YmxlIjogdHJ1ZSwgImNob3NlbiI6IGZhbHNlLCAiZGVmYXVsdF9jaG9zZW5fYnlfc2VydmVyIjog
ZmFsc2UsICJkZXByZWNhdGVkIjogZmFsc2UsICJleHBvcnRfa2V5IjogImluY2lkZW50L3Njd3hf
Y3RwX2NhdGVnb3J5X2NsYXNzIiwgImhpZGVfbm90aWZpY2F0aW9uIjogZmFsc2UsICJpZCI6IDI1
MCwgImlucHV0X3R5cGUiOiAidGV4dCIsICJpbnRlcm5hbCI6IGZhbHNlLCAiaXNfdHJhY2tlZCI6
IGZhbHNlLCAibmFtZSI6ICJzY3d4X2N0cF9jYXRlZ29yeV9jbGFzcyIsICJvcGVyYXRpb25fcGVy
bXMiOiB7fSwgIm9wZXJhdGlvbnMiOiBbXSwgInBsYWNlaG9sZGVyIjogIiIsICJwcmVmaXgiOiAi
cHJvcGVydGllcyIsICJyZWFkX29ubHkiOiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFn
cyI6IFtdLCAidGVtcGxhdGVzIjogW10sICJ0ZXh0IjogIlNlY3VyZXdvcmtzIENUUCBjYXRlZ29y
eUNsYXNzIiwgInRvb2x0aXAiOiAiIiwgInR5cGVfaWQiOiAwLCAidXVpZCI6ICIzMjUyNzc3OS1j
ODdhLTQxODgtOGZhZC1lMTU1ZjIxMjUwOWEiLCAidmFsdWVzIjogW119LCB7ImFsbG93X2RlZmF1
bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IGZhbHNlLCAiY2FsY3VsYXRlZCI6IGZh
bHNlLCAiY2hhbmdlYWJsZSI6IHRydWUsICJjaG9zZW4iOiBmYWxzZSwgImRlZmF1bHRfY2hvc2Vu
X2J5X3NlcnZlciI6IGZhbHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJp
bmNpZGVudC9zY3d4X2N0cF9zb3VyY2UiLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImlk
IjogMjYyLCAiaW5wdXRfdHlwZSI6ICJ0ZXh0IiwgImludGVybmFsIjogZmFsc2UsICJpc190cmFj
a2VkIjogZmFsc2UsICJuYW1lIjogInNjd3hfY3RwX3NvdXJjZSIsICJvcGVyYXRpb25fcGVybXMi
OiB7fSwgIm9wZXJhdGlvbnMiOiBbXSwgInBsYWNlaG9sZGVyIjogIiIsICJwcmVmaXgiOiAicHJv
cGVydGllcyIsICJyZWFkX29ubHkiOiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6
IFtdLCAidGVtcGxhdGVzIjogW10sICJ0ZXh0IjogIlNlY3VyZXdvcmtzIENUUCBzb3VyY2UiLCAi
dG9vbHRpcCI6ICIiLCAidHlwZV9pZCI6IDAsICJ1dWlkIjogImQxM2IwOTlmLWMzNGItNDNmNS1i
NDYzLTBhMGQ1YjYzNzJkMyIsICJ2YWx1ZXMiOiBbXX0sIHsiYWxsb3dfZGVmYXVsdF92YWx1ZSI6
IGZhbHNlLCAiYmxhbmtfb3B0aW9uIjogZmFsc2UsICJjYWxjdWxhdGVkIjogZmFsc2UsICJjaGFu
Z2VhYmxlIjogdHJ1ZSwgImNob3NlbiI6IGZhbHNlLCAiZGVmYXVsdF9jaG9zZW5fYnlfc2VydmVy
IjogZmFsc2UsICJkZXByZWNhdGVkIjogZmFsc2UsICJleHBvcnRfa2V5IjogImluY2lkZW50L3Nj
d3hfY3RwX2RhdGVfY3JlYXRlZCIsICJoaWRlX25vdGlmaWNhdGlvbiI6IGZhbHNlLCAiaWQiOiAy
NDgsICJpbnB1dF90eXBlIjogImRhdGV0aW1lcGlja2VyIiwgImludGVybmFsIjogZmFsc2UsICJp
c190cmFja2VkIjogZmFsc2UsICJuYW1lIjogInNjd3hfY3RwX2RhdGVfY3JlYXRlZCIsICJvcGVy
YXRpb25fcGVybXMiOiB7fSwgIm9wZXJhdGlvbnMiOiBbXSwgInBsYWNlaG9sZGVyIjogIiIsICJw
cmVmaXgiOiAicHJvcGVydGllcyIsICJyZWFkX29ubHkiOiBmYWxzZSwgInJpY2hfdGV4dCI6IGZh
bHNlLCAidGFncyI6IFtdLCAidGVtcGxhdGVzIjogW10sICJ0ZXh0IjogIlNlY3VyZXdvcmtzIENU
UCBkYXRlQ3JlYXRlZCIsICJ0b29sdGlwIjogIiIsICJ0eXBlX2lkIjogMCwgInV1aWQiOiAiYzMy
ZGE2NGEtNjkzYS00NjdmLWE5MjMtYTBmYzlhMTUyNGRjIiwgInZhbHVlcyI6IFtdfSwgeyJhbGxv
d19kZWZhdWx0X3ZhbHVlIjogZmFsc2UsICJibGFua19vcHRpb24iOiBmYWxzZSwgImNhbGN1bGF0
ZWQiOiBmYWxzZSwgImNoYW5nZWFibGUiOiB0cnVlLCAiY2hvc2VuIjogZmFsc2UsICJkZWZhdWx0
X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImRlcHJlY2F0ZWQiOiBmYWxzZSwgImV4cG9ydF9r
ZXkiOiAiaW5jaWRlbnQvc2N3eF9jdHBfY2xvc2VfY29kZSIsICJoaWRlX25vdGlmaWNhdGlvbiI6
IGZhbHNlLCAiaWQiOiAyNDksICJpbnB1dF90eXBlIjogInNlbGVjdCIsICJpbnRlcm5hbCI6IGZh
bHNlLCAiaXNfdHJhY2tlZCI6IGZhbHNlLCAibmFtZSI6ICJzY3d4X2N0cF9jbG9zZV9jb2RlIiwg
Im9wZXJhdGlvbl9wZXJtcyI6IHt9LCAib3BlcmF0aW9ucyI6IFtdLCAicGxhY2Vob2xkZXIiOiAi
IiwgInByZWZpeCI6ICJwcm9wZXJ0aWVzIiwgInJlYWRfb25seSI6IGZhbHNlLCAicmVxdWlyZWQi
OiAiY2xvc2UiLCAicmljaF90ZXh0IjogZmFsc2UsICJ0YWdzIjogW10sICJ0ZW1wbGF0ZXMiOiBb
XSwgInRleHQiOiAiU2VjdXJld29ya3MgQ1RQIGNsb3NlQ29kZSIsICJ0b29sdGlwIjogIiIsICJ0
eXBlX2lkIjogMCwgInV1aWQiOiAiNWZmZjRlZDYtMzE3Zi00N2FmLThmMzUtNzZmOTg3YmY3YTNm
IiwgInZhbHVlcyI6IFt7ImRlZmF1bHQiOiBmYWxzZSwgImVuYWJsZWQiOiB0cnVlLCAiaGlkZGVu
IjogZmFsc2UsICJsYWJlbCI6ICJBdXRob3JpemVkIEFjdGl2aXR5IiwgInByb3BlcnRpZXMiOiBu
dWxsLCAidXVpZCI6ICI0YjZiYzliNy1hZGIyLTRmOTYtYWQzNi1kNjVjNzdhZTA5MTkiLCAidmFs
dWUiOiAxNjB9LCB7ImRlZmF1bHQiOiBmYWxzZSwgImVuYWJsZWQiOiB0cnVlLCAiaGlkZGVuIjog
ZmFsc2UsICJsYWJlbCI6ICJDb25maXJtZWQgU2VjdXJpdHkgSW5jaWRlbnQiLCAicHJvcGVydGll
cyI6IG51bGwsICJ1dWlkIjogImMyNzBmODUxLWRkMjUtNDYwNy04ZDIzLWM4OTBjMzNiZGVjYyIs
ICJ2YWx1ZSI6IDE2MX0sIHsiZGVmYXVsdCI6IGZhbHNlLCAiZW5hYmxlZCI6IHRydWUsICJoaWRk
ZW4iOiBmYWxzZSwgImxhYmVsIjogIkR1cGxpY2F0ZSIsICJwcm9wZXJ0aWVzIjogbnVsbCwgInV1
aWQiOiAiMjY0NTZiYjgtOGY4OC00NGY1LTg2ZmItN2UyM2VlZGNiYzVlIiwgInZhbHVlIjogMTYy
fSwgeyJkZWZhdWx0IjogZmFsc2UsICJlbmFibGVkIjogdHJ1ZSwgImhpZGRlbiI6IGZhbHNlLCAi
bGFiZWwiOiAiSW5jaWRlbnQgTWlzaWRlbnRpZmllZCIsICJwcm9wZXJ0aWVzIjogbnVsbCwgInV1
aWQiOiAiZWJjNWM5MmQtMDcxMi00NGU1LTlmOTEtNTcxOWViZTE4MzYzIiwgInZhbHVlIjogMTYz
fSwgeyJkZWZhdWx0IjogZmFsc2UsICJlbmFibGVkIjogdHJ1ZSwgImhpZGRlbiI6IGZhbHNlLCAi
bGFiZWwiOiAiSW5jb25jbHVzaXZlIiwgInByb3BlcnRpZXMiOiBudWxsLCAidXVpZCI6ICJmNDRi
Njg0MC1hODY2LTQ1ZWQtYmJmMy0zMjNmNzQxMWRlZDEiLCAidmFsdWUiOiAxNTR9LCB7ImRlZmF1
bHQiOiBmYWxzZSwgImVuYWJsZWQiOiB0cnVlLCAiaGlkZGVuIjogZmFsc2UsICJsYWJlbCI6ICJO
b3QgQWN0aW9uYWJsZSIsICJwcm9wZXJ0aWVzIjogbnVsbCwgInV1aWQiOiAiY2U2OGQ5MDEtZjRh
Yi00MWQzLWJhZDMtM2Y3ZjE5MDEzYjA0IiwgInZhbHVlIjogMTY0fSwgeyJkZWZhdWx0IjogZmFs
c2UsICJlbmFibGVkIjogdHJ1ZSwgImhpZGRlbiI6IGZhbHNlLCAibGFiZWwiOiAiTm90IFZ1bG5l
cmFibGUiLCAicHJvcGVydGllcyI6IG51bGwsICJ1dWlkIjogIjNiODVhYWJjLWI0OTgtNDdjNi1h
MzcwLWE5MmNiMmUxMzAyNCIsICJ2YWx1ZSI6IDE2NX0sIHsiZGVmYXVsdCI6IGZhbHNlLCAiZW5h
YmxlZCI6IHRydWUsICJoaWRkZW4iOiBmYWxzZSwgImxhYmVsIjogIlRocmVhdCBNaXRpZ2F0ZWQi
LCAicHJvcGVydGllcyI6IG51bGwsICJ1dWlkIjogIjQ1MjliY2EzLTY2YzktNDI4Yy1iNzViLWQ5
ZjYxN2NmZjBiOCIsICJ2YWx1ZSI6IDE2Nn1dfSwgeyJhbGxvd19kZWZhdWx0X3ZhbHVlIjogZmFs
c2UsICJibGFua19vcHRpb24iOiBmYWxzZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgImNoYW5nZWFi
bGUiOiB0cnVlLCAiY2hvc2VuIjogZmFsc2UsICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBm
YWxzZSwgImRlcHJlY2F0ZWQiOiBmYWxzZSwgImV4cG9ydF9rZXkiOiAiaW5jaWRlbnQvc2N3eF9j
dHBfZ3JvdXBpbmdfdHlwZSIsICJoaWRlX25vdGlmaWNhdGlvbiI6IGZhbHNlLCAiaWQiOiAyNTcs
ICJpbnB1dF90eXBlIjogInRleHQiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlzX3RyYWNrZWQiOiBm
YWxzZSwgIm5hbWUiOiAic2N3eF9jdHBfZ3JvdXBpbmdfdHlwZSIsICJvcGVyYXRpb25fcGVybXMi
OiB7fSwgIm9wZXJhdGlvbnMiOiBbXSwgInBsYWNlaG9sZGVyIjogIiIsICJwcmVmaXgiOiAicHJv
cGVydGllcyIsICJyZWFkX29ubHkiOiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6
IFtdLCAidGVtcGxhdGVzIjogW10sICJ0ZXh0IjogIlNlY3VyZXdvcmtzIENUUCBncm91cGluZ1R5
cGUiLCAidG9vbHRpcCI6ICIiLCAidHlwZV9pZCI6IDAsICJ1dWlkIjogImI4N2I0MGJlLTdhYTAt
NDY0Mi1iZDgxLTJkMGI0NzRmMDE0OSIsICJ2YWx1ZXMiOiBbXX0sIHsiYWxsb3dfZGVmYXVsdF92
YWx1ZSI6IGZhbHNlLCAiYmxhbmtfb3B0aW9uIjogZmFsc2UsICJjYWxjdWxhdGVkIjogZmFsc2Us
ICJjaGFuZ2VhYmxlIjogdHJ1ZSwgImNob3NlbiI6IGZhbHNlLCAiZGVmYXVsdF9jaG9zZW5fYnlf
c2VydmVyIjogZmFsc2UsICJkZXByZWNhdGVkIjogZmFsc2UsICJleHBvcnRfa2V5IjogImluY2lk
ZW50L3Njd3hfY3RwX3JlcXVlc3RfdHlwZSIsICJoaWRlX25vdGlmaWNhdGlvbiI6IGZhbHNlLCAi
aWQiOiAyNjEsICJpbnB1dF90eXBlIjogInRleHQiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlzX3Ry
YWNrZWQiOiBmYWxzZSwgIm5hbWUiOiAic2N3eF9jdHBfcmVxdWVzdF90eXBlIiwgIm9wZXJhdGlv
bl9wZXJtcyI6IHt9LCAib3BlcmF0aW9ucyI6IFtdLCAicGxhY2Vob2xkZXIiOiAiIiwgInByZWZp
eCI6ICJwcm9wZXJ0aWVzIiwgInJlYWRfb25seSI6IGZhbHNlLCAicmljaF90ZXh0IjogZmFsc2Us
ICJ0YWdzIjogW10sICJ0ZW1wbGF0ZXMiOiBbXSwgInRleHQiOiAiU2VjdXJld29ya3MgQ1RQIHJl
cXVlc3RUeXBlIiwgInRvb2x0aXAiOiAiIiwgInR5cGVfaWQiOiAwLCAidXVpZCI6ICI1NWJlNTg4
Mi1lZWFhLTQ0ZjUtOGU0ZS01ZTZmZjE5OTAwOGYiLCAidmFsdWVzIjogW119LCB7ImFsbG93X2Rl
ZmF1bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IGZhbHNlLCAiY2FsY3VsYXRlZCI6
IGZhbHNlLCAiY2hhbmdlYWJsZSI6IHRydWUsICJjaG9zZW4iOiBmYWxzZSwgImRlZmF1bHRfY2hv
c2VuX2J5X3NlcnZlciI6IGZhbHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6
ICJpbmNpZGVudC9zY3d4X2N0cF9jb250YWN0X2lkIiwgImhpZGVfbm90aWZpY2F0aW9uIjogZmFs
c2UsICJpZCI6IDI1OCwgImlucHV0X3R5cGUiOiAidGV4dCIsICJpbnRlcm5hbCI6IGZhbHNlLCAi
aXNfdHJhY2tlZCI6IGZhbHNlLCAibmFtZSI6ICJzY3d4X2N0cF9jb250YWN0X2lkIiwgIm9wZXJh
dGlvbl9wZXJtcyI6IHt9LCAib3BlcmF0aW9ucyI6IFtdLCAicGxhY2Vob2xkZXIiOiAiIiwgInBy
ZWZpeCI6ICJwcm9wZXJ0aWVzIiwgInJlYWRfb25seSI6IGZhbHNlLCAicmljaF90ZXh0IjogZmFs
c2UsICJ0YWdzIjogW10sICJ0ZW1wbGF0ZXMiOiBbXSwgInRleHQiOiAiU2VjdXJld29ya3MgQ1RQ
IGNvbnRhY3QgSUQiLCAidG9vbHRpcCI6ICIiLCAidHlwZV9pZCI6IDAsICJ1dWlkIjogIjIyOWNi
OTg4LTNjM2ItNGI1My1iNmE1LTY0YjgwZmYzYjQ0MSIsICJ2YWx1ZXMiOiBbXX0sIHsiYWxsb3df
ZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiYmxhbmtfb3B0aW9uIjogZmFsc2UsICJjYWxjdWxhdGVk
IjogZmFsc2UsICJjaGFuZ2VhYmxlIjogdHJ1ZSwgImNob3NlbiI6IGZhbHNlLCAiZGVmYXVsdF9j
aG9zZW5fYnlfc2VydmVyIjogZmFsc2UsICJkZXByZWNhdGVkIjogZmFsc2UsICJleHBvcnRfa2V5
IjogImluY2lkZW50L3Njd3hfY3RwX3N0YXR1cyIsICJoaWRlX25vdGlmaWNhdGlvbiI6IGZhbHNl
LCAiaWQiOiAyNTUsICJpbnB1dF90eXBlIjogInRleHQiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlz
X3RyYWNrZWQiOiBmYWxzZSwgIm5hbWUiOiAic2N3eF9jdHBfc3RhdHVzIiwgIm9wZXJhdGlvbl9w
ZXJtcyI6IHt9LCAib3BlcmF0aW9ucyI6IFtdLCAicGxhY2Vob2xkZXIiOiAiIiwgInByZWZpeCI6
ICJwcm9wZXJ0aWVzIiwgInJlYWRfb25seSI6IGZhbHNlLCAicmljaF90ZXh0IjogZmFsc2UsICJ0
YWdzIjogW10sICJ0ZW1wbGF0ZXMiOiBbXSwgInRleHQiOiAiU2VjdXJld29ya3MgQ1RQIHN0YXR1
cyIsICJ0b29sdGlwIjogIiIsICJ0eXBlX2lkIjogMCwgInV1aWQiOiAiMTNhOWNjNzgtNDMyOS00
YTgwLTk0MjktNjk3MWY2MmJmNTJlIiwgInZhbHVlcyI6IFtdfSwgeyJleHBvcnRfa2V5IjogImlu
Y2lkZW50L2ludGVybmFsX2N1c3RvbWl6YXRpb25zX2ZpZWxkIiwgImlkIjogMCwgImlucHV0X3R5
cGUiOiAidGV4dCIsICJpbnRlcm5hbCI6IHRydWUsICJuYW1lIjogImludGVybmFsX2N1c3RvbWl6
YXRpb25zX2ZpZWxkIiwgInJlYWRfb25seSI6IHRydWUsICJ0ZXh0IjogIkN1c3RvbWl6YXRpb25z
IEZpZWxkIChpbnRlcm5hbCkiLCAidHlwZV9pZCI6IDAsICJ1dWlkIjogImJmZWVjMmQ0LTM3NzAt
MTFlOC1hZDM5LTRhMDAwNDA0NGFhMSJ9XSwgImZ1bmN0aW9ucyI6IFt7ImNyZWF0b3IiOiB7ImRp
c3BsYXlfbmFtZSI6ICJSZXNpbGllbnQgU3lzYWRtaW4iLCAiaWQiOiAzLCAibmFtZSI6ICJhQGEu
Y29tIiwgInR5cGUiOiAidXNlciJ9LCAiZGVzY3JpcHRpb24iOiB7ImZvcm1hdCI6ICJ0ZXh0Iiwg
ImNvbnRlbnQiOiAiQ2xvc2UgYSBTZWN1cmV3b3JrcyBDVFAgdGlja2V0IGluIGFuIGluY2lkZW50
IHRoYXQgaGFzIGEgU2VjdXJld29ya3MgQ1RQIHRpY2tldCBhc3NvY2lhdGVkIHdpdGggaXQuIn0s
ICJkZXN0aW5hdGlvbl9oYW5kbGUiOiAiZm5fc2VjdXJld29ya3NfY3RwIiwgImRpc3BsYXlfbmFt
ZSI6ICJTZWN1cmV3b3JrcyBDVFAgQ2xvc2UgVGlja2V0IiwgImV4cG9ydF9rZXkiOiAic2VjdXJl
d29ya3NfY3RwX2Nsb3NlX3RpY2tldCIsICJpZCI6IDEyLCAibGFzdF9tb2RpZmllZF9ieSI6IHsi
ZGlzcGxheV9uYW1lIjogIlJlc2lsaWVudCBTeXNhZG1pbiIsICJpZCI6IDMsICJuYW1lIjogImFA
YS5jb20iLCAidHlwZSI6ICJ1c2VyIn0sICJsYXN0X21vZGlmaWVkX3RpbWUiOiAxNTk2NzMwOTEx
MjgwLCAibmFtZSI6ICJzZWN1cmV3b3Jrc19jdHBfY2xvc2VfdGlja2V0IiwgInRhZ3MiOiBbXSwg
InV1aWQiOiAiOGQ3N2Q0YzYtYjAyNy00MzAwLWE1MTctNjc3NTJmNDk5YzNmIiwgInZlcnNpb24i
OiAxLCAidmlld19pdGVtcyI6IFt7ImNvbnRlbnQiOiAiMGRkMWMyZTEtOTVjOS00NDRjLTg2ODgt
MjY5ZGVhNmZiN2YxIiwgImVsZW1lbnQiOiAiZmllbGRfdXVpZCIsICJmaWVsZF90eXBlIjogIl9f
ZnVuY3Rpb24iLCAic2hvd19pZiI6IG51bGwsICJzaG93X2xpbmtfaGVhZGVyIjogZmFsc2UsICJz
dGVwX2xhYmVsIjogbnVsbH1dLCAid29ya2Zsb3dzIjogW3siYWN0aW9ucyI6IFtdLCAiZGVzY3Jp
cHRpb24iOiBudWxsLCAibmFtZSI6ICJFeGFtcGxlOiBTZWN1cmV3b3JrcyBDbG9zZSBUaWNrZXQi
LCAib2JqZWN0X3R5cGUiOiAiaW5jaWRlbnQiLCAicHJvZ3JhbW1hdGljX25hbWUiOiAiZXhhbXBs
ZV9zZWN1cmV3b3Jrc19jbG9zZV90aWNrZXQiLCAidGFncyI6IFtdLCAidXVpZCI6IG51bGwsICJ3
b3JrZmxvd19pZCI6IDE2fV19XSwgImdlb3MiOiBudWxsLCAiZ3JvdXBzIjogbnVsbCwgImlkIjog
MywgImluYm91bmRfbWFpbGJveGVzIjogbnVsbCwgImluY2lkZW50X2FydGlmYWN0X3R5cGVzIjog
W10sICJpbmNpZGVudF90eXBlcyI6IFt7InVwZGF0ZV9kYXRlIjogMTU5Njc0Nzk3MTQzMSwgImNy
ZWF0ZV9kYXRlIjogMTU5Njc0Nzk3MTQzMSwgInV1aWQiOiAiYmZlZWMyZDQtMzc3MC0xMWU4LWFk
MzktNGEwMDA0MDQ0YWEwIiwgImRlc2NyaXB0aW9uIjogIkN1c3RvbWl6YXRpb24gUGFja2FnZXMg
KGludGVybmFsKSIsICJleHBvcnRfa2V5IjogIkN1c3RvbWl6YXRpb24gUGFja2FnZXMgKGludGVy
bmFsKSIsICJuYW1lIjogIkN1c3RvbWl6YXRpb24gUGFja2FnZXMgKGludGVybmFsKSIsICJlbmFi
bGVkIjogZmFsc2UsICJzeXN0ZW0iOiBmYWxzZSwgInBhcmVudF9pZCI6IG51bGwsICJoaWRkZW4i
OiBmYWxzZSwgImlkIjogMH1dLCAiaW5kdXN0cmllcyI6IG51bGwsICJsYXlvdXRzIjogW10sICJs
b2NhbGUiOiBudWxsLCAibWVzc2FnZV9kZXN0aW5hdGlvbnMiOiBbeyJhcGlfa2V5cyI6IFtdLCAi
ZGVzdGluYXRpb25fdHlwZSI6IDAsICJleHBlY3RfYWNrIjogdHJ1ZSwgImV4cG9ydF9rZXkiOiAi
Zm5fc2VjdXJld29ya3NfY3RwIiwgIm5hbWUiOiAiZm5fc2VjdXJld29ya3NfY3RwIiwgInByb2dy
YW1tYXRpY19uYW1lIjogImZuX3NlY3VyZXdvcmtzX2N0cCIsICJ0YWdzIjogW10sICJ1c2VycyI6
IFsiYUBhLmNvbSJdLCAidXVpZCI6ICIzYTJkYzg3ZC05MjY1LTQyYzctYWY2NS0zZGYwZmVmNWZh
ZWUifV0sICJub3RpZmljYXRpb25zIjogbnVsbCwgIm92ZXJyaWRlcyI6IFtdLCAicGhhc2VzIjog
W10sICJyZWd1bGF0b3JzIjogbnVsbCwgInJvbGVzIjogW10sICJzY3JpcHRzIjogW10sICJzZXJ2
ZXJfdmVyc2lvbiI6IHsiYnVpbGRfbnVtYmVyIjogNTQ0NSwgIm1ham9yIjogMzUsICJtaW5vciI6
IDAsICJ2ZXJzaW9uIjogIjM1LjAuNTQ0NSJ9LCAidGFncyI6IFtdLCAidGFza19vcmRlciI6IFtd
LCAidGltZWZyYW1lcyI6IG51bGwsICJ0eXBlcyI6IFtdLCAid29ya2Zsb3dzIjogW3siYWN0aW9u
cyI6IFtdLCAiY29udGVudCI6IHsidmVyc2lvbiI6IDEsICJ3b3JrZmxvd19pZCI6ICJleGFtcGxl
X3NlY3VyZXdvcmtzX2Nsb3NlX3RpY2tldCIsICJ4bWwiOiAiPD94bWwgdmVyc2lvbj1cIjEuMFwi
IGVuY29kaW5nPVwiVVRGLThcIj8+PGRlZmluaXRpb25zIHhtbG5zPVwiaHR0cDovL3d3dy5vbWcu
b3JnL3NwZWMvQlBNTi8yMDEwMDUyNC9NT0RFTFwiIHhtbG5zOmJwbW5kaT1cImh0dHA6Ly93d3cu
b21nLm9yZy9zcGVjL0JQTU4vMjAxMDA1MjQvRElcIiB4bWxuczpvbWdkYz1cImh0dHA6Ly93d3cu
b21nLm9yZy9zcGVjL0RELzIwMTAwNTI0L0RDXCIgeG1sbnM6b21nZGk9XCJodHRwOi8vd3d3Lm9t
Zy5vcmcvc3BlYy9ERC8yMDEwMDUyNC9ESVwiIHhtbG5zOnJlc2lsaWVudD1cImh0dHA6Ly9yZXNp
bGllbnQuaWJtLmNvbS9icG1uXCIgeG1sbnM6eHNkPVwiaHR0cDovL3d3dy53My5vcmcvMjAwMS9Y
TUxTY2hlbWFcIiB4bWxuczp4c2k9XCJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYS1p
bnN0YW5jZVwiIHRhcmdldE5hbWVzcGFjZT1cImh0dHA6Ly93d3cuY2FtdW5kYS5vcmcvdGVzdFwi
Pjxwcm9jZXNzIGlkPVwiZXhhbXBsZV9zZWN1cmV3b3Jrc19jbG9zZV90aWNrZXRcIiBpc0V4ZWN1
dGFibGU9XCJ0cnVlXCIgbmFtZT1cIkV4YW1wbGU6IFNlY3VyZXdvcmtzIENsb3NlIFRpY2tldFwi
Pjxkb2N1bWVudGF0aW9uPkNsb3NlIGEgU2VjdXJld29ya3MgQ1RQIHRpY2tldCBhbmQgd3JpdGUg
dGhlIHJlc3VsdHMgaW4gbm90ZSB0byB0aGUgYXNzb2NpYXRlZCBpbmNpZGVudC48L2RvY3VtZW50
YXRpb24+PHN0YXJ0RXZlbnQgaWQ9XCJTdGFydEV2ZW50XzE1NWFzeG1cIj48b3V0Z29pbmc+U2Vx
dWVuY2VGbG93XzExdm55bWw8L291dGdvaW5nPjwvc3RhcnRFdmVudD48c2VydmljZVRhc2sgaWQ9
XCJTZXJ2aWNlVGFza18wOHk3c3IwXCIgbmFtZT1cIlNlY3VyZXdvcmtzIENUUCBDbG9zZSBUaWNr
ZXRcIiByZXNpbGllbnQ6dHlwZT1cImZ1bmN0aW9uXCI+PGV4dGVuc2lvbkVsZW1lbnRzPjxyZXNp
bGllbnQ6ZnVuY3Rpb24gdXVpZD1cIjhkNzdkNGM2LWIwMjctNDMwMC1hNTE3LTY3NzUyZjQ5OWMz
ZlwiPntcImlucHV0c1wiOnt9LFwicG9zdF9wcm9jZXNzaW5nX3NjcmlwdFwiOlwiaWYgcmVzdWx0
cy5zdWNjZXNzOlxcbiAgbm90ZVRleHQgPSB1J1NlY3VyZXdvcmtzIHRpY2tldCB7MH0gY2xvc2Vk
LicuZm9ybWF0KHJlc3VsdHMuY29udGVudFsndGlja2V0SUQnXSlcXG5lbGlmOlxcbiAgbm90ZVRl
eHQgPSB1J0VSUk9SOiB1bmFibGUgdG8gY2xvc2UgU2VjdXJld29ya3MgQ1RQIHRpY2tldCB7MH0u
Jy5mb3JtYXQocmVzdWx0cy5jb250ZW50Wyd0aWNrZXRJRCddKSBcXG5cXG5pbmNpZGVudC5hZGRO
b3RlKG5vdGVUZXh0KVwiLFwicHJlX3Byb2Nlc3Npbmdfc2NyaXB0XCI6XCJpbnB1dHMuaW5jaWRl
bnRfaWQgPSBpbmNpZGVudC5pZFwifTwvcmVzaWxpZW50OmZ1bmN0aW9uPjwvZXh0ZW5zaW9uRWxl
bWVudHM+PGluY29taW5nPlNlcXVlbmNlRmxvd18xMXZueW1sPC9pbmNvbWluZz48b3V0Z29pbmc+
U2VxdWVuY2VGbG93XzBwa2k0YTI8L291dGdvaW5nPjwvc2VydmljZVRhc2s+PHNlcXVlbmNlRmxv
dyBpZD1cIlNlcXVlbmNlRmxvd18xMXZueW1sXCIgc291cmNlUmVmPVwiU3RhcnRFdmVudF8xNTVh
c3htXCIgdGFyZ2V0UmVmPVwiU2VydmljZVRhc2tfMDh5N3NyMFwiLz48ZW5kRXZlbnQgaWQ9XCJF
bmRFdmVudF8xcndvNTk4XCI+PGluY29taW5nPlNlcXVlbmNlRmxvd18wcGtpNGEyPC9pbmNvbWlu
Zz48L2VuZEV2ZW50PjxzZXF1ZW5jZUZsb3cgaWQ9XCJTZXF1ZW5jZUZsb3dfMHBraTRhMlwiIHNv
dXJjZVJlZj1cIlNlcnZpY2VUYXNrXzA4eTdzcjBcIiB0YXJnZXRSZWY9XCJFbmRFdmVudF8xcndv
NTk4XCIvPjx0ZXh0QW5ub3RhdGlvbiBpZD1cIlRleHRBbm5vdGF0aW9uXzFreHhpeXRcIj48dGV4
dD5TdGFydCB5b3VyIHdvcmtmbG93IGhlcmU8L3RleHQ+PC90ZXh0QW5ub3RhdGlvbj48YXNzb2Np
YXRpb24gaWQ9XCJBc3NvY2lhdGlvbl8xc2V1ajQ4XCIgc291cmNlUmVmPVwiU3RhcnRFdmVudF8x
NTVhc3htXCIgdGFyZ2V0UmVmPVwiVGV4dEFubm90YXRpb25fMWt4eGl5dFwiLz48dGV4dEFubm90
YXRpb24gaWQ9XCJUZXh0QW5ub3RhdGlvbl8waGYwYTZpXCI+PHRleHQ+PCFbQ0RBVEFbSW5wdXQ6
IGluY2lkZW50IGlkXHUwMGEwIG9mIGluY2lkZW50IGNvbnRhaW5pbmcgU2VjdXJld29ya3MgQ1RQ
IHRpY2tldCBpbiBzY3d4X2N0cF90aWNrZXRfaWQgY3VzdG9tIGluY2lkZW50IGZpZWxkXG5dXT48
L3RleHQ+PC90ZXh0QW5ub3RhdGlvbj48YXNzb2NpYXRpb24gaWQ9XCJBc3NvY2lhdGlvbl8xczRz
ZjM4XCIgc291cmNlUmVmPVwiU2VydmljZVRhc2tfMDh5N3NyMFwiIHRhcmdldFJlZj1cIlRleHRB
bm5vdGF0aW9uXzBoZjBhNmlcIi8+PHRleHRBbm5vdGF0aW9uIGlkPVwiVGV4dEFubm90YXRpb25f
MHF0amR1bVwiPjx0ZXh0PjwhW0NEQVRBW091dHB1dDogQXNzb2NpYXRlZCBTZWN1cmV3b3JrcyB0
aWNrZXQgaXMgY2xvc2VkIGFuZCBub3RlIGlzIHdyaXR0ZW4gdG8gdGhlIGluY2lkZW50XG5dXT48
L3RleHQ+PC90ZXh0QW5ub3RhdGlvbj48YXNzb2NpYXRpb24gaWQ9XCJBc3NvY2lhdGlvbl8xbzhs
aTNkXCIgc291cmNlUmVmPVwiU2VydmljZVRhc2tfMDh5N3NyMFwiIHRhcmdldFJlZj1cIlRleHRB
bm5vdGF0aW9uXzBxdGpkdW1cIi8+PC9wcm9jZXNzPjxicG1uZGk6QlBNTkRpYWdyYW0gaWQ9XCJC
UE1ORGlhZ3JhbV8xXCI+PGJwbW5kaTpCUE1OUGxhbmUgYnBtbkVsZW1lbnQ9XCJ1bmRlZmluZWRc
IiBpZD1cIkJQTU5QbGFuZV8xXCI+PGJwbW5kaTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJTdGFy
dEV2ZW50XzE1NWFzeG1cIiBpZD1cIlN0YXJ0RXZlbnRfMTU1YXN4bV9kaVwiPjxvbWdkYzpCb3Vu
ZHMgaGVpZ2h0PVwiMzZcIiB3aWR0aD1cIjM2XCIgeD1cIjE2MlwiIHk9XCIxODhcIi8+PGJwbW5k
aTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIwXCIgd2lkdGg9XCI5MFwiIHg9XCIx
NTdcIiB5PVwiMjIzXCIvPjwvYnBtbmRpOkJQTU5MYWJlbD48L2JwbW5kaTpCUE1OU2hhcGU+PGJw
bW5kaTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJUZXh0QW5ub3RhdGlvbl8xa3h4aXl0XCIgaWQ9
XCJUZXh0QW5ub3RhdGlvbl8xa3h4aXl0X2RpXCI+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIzMFwi
IHdpZHRoPVwiMTAwXCIgeD1cIjk5XCIgeT1cIjI1NFwiLz48L2JwbW5kaTpCUE1OU2hhcGU+PGJw
bW5kaTpCUE1ORWRnZSBicG1uRWxlbWVudD1cIkFzc29jaWF0aW9uXzFzZXVqNDhcIiBpZD1cIkFz
c29jaWF0aW9uXzFzZXVqNDhfZGlcIj48b21nZGk6d2F5cG9pbnQgeD1cIjE2OVwiIHhzaTp0eXBl
PVwib21nZGM6UG9pbnRcIiB5PVwiMjIwXCIvPjxvbWdkaTp3YXlwb2ludCB4PVwiMTUzXCIgeHNp
OnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIyNTRcIi8+PC9icG1uZGk6QlBNTkVkZ2U+PGJwbW5k
aTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJTZXJ2aWNlVGFza18wOHk3c3IwXCIgaWQ9XCJTZXJ2
aWNlVGFza18wOHk3c3IwX2RpXCI+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCI4MFwiIHdpZHRoPVwi
MTAwXCIgeD1cIjQyOVwiIHk9XCIxNjZcIi8+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBN
TkVkZ2UgYnBtbkVsZW1lbnQ9XCJTZXF1ZW5jZUZsb3dfMTF2bnltbFwiIGlkPVwiU2VxdWVuY2VG
bG93XzExdm55bWxfZGlcIj48b21nZGk6d2F5cG9pbnQgeD1cIjE5OFwiIHhzaTp0eXBlPVwib21n
ZGM6UG9pbnRcIiB5PVwiMjA2XCIvPjxvbWdkaTp3YXlwb2ludCB4PVwiNDI5XCIgeHNpOnR5cGU9
XCJvbWdkYzpQb2ludFwiIHk9XCIyMDZcIi8+PGJwbW5kaTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5k
cyBoZWlnaHQ9XCIxNFwiIHdpZHRoPVwiMFwiIHg9XCIzMTMuNVwiIHk9XCIxODRcIi8+PC9icG1u
ZGk6QlBNTkxhYmVsPjwvYnBtbmRpOkJQTU5FZGdlPjxicG1uZGk6QlBNTlNoYXBlIGJwbW5FbGVt
ZW50PVwiRW5kRXZlbnRfMXJ3bzU5OFwiIGlkPVwiRW5kRXZlbnRfMXJ3bzU5OF9kaVwiPjxvbWdk
YzpCb3VuZHMgaGVpZ2h0PVwiMzZcIiB3aWR0aD1cIjM2XCIgeD1cIjc1OVwiIHk9XCIxODhcIi8+
PGJwbW5kaTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIxNFwiIHdpZHRoPVwiMFwi
IHg9XCI3NzdcIiB5PVwiMjI3XCIvPjwvYnBtbmRpOkJQTU5MYWJlbD48L2JwbW5kaTpCUE1OU2hh
cGU+PGJwbW5kaTpCUE1ORWRnZSBicG1uRWxlbWVudD1cIlNlcXVlbmNlRmxvd18wcGtpNGEyXCIg
aWQ9XCJTZXF1ZW5jZUZsb3dfMHBraTRhMl9kaVwiPjxvbWdkaTp3YXlwb2ludCB4PVwiNTI5XCIg
eHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIyMDZcIi8+PG9tZ2RpOndheXBvaW50IHg9XCI3
NTlcIiB4c2k6dHlwZT1cIm9tZ2RjOlBvaW50XCIgeT1cIjIwNlwiLz48YnBtbmRpOkJQTU5MYWJl
bD48b21nZGM6Qm91bmRzIGhlaWdodD1cIjE0XCIgd2lkdGg9XCIwXCIgeD1cIjY0NFwiIHk9XCIx
ODRcIi8+PC9icG1uZGk6QlBNTkxhYmVsPjwvYnBtbmRpOkJQTU5FZGdlPjxicG1uZGk6QlBNTlNo
YXBlIGJwbW5FbGVtZW50PVwiVGV4dEFubm90YXRpb25fMGhmMGE2aVwiIGlkPVwiVGV4dEFubm90
YXRpb25fMGhmMGE2aV9kaVwiPjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiMzBcIiB3aWR0aD1cIjE5
OFwiIHg9XCIyMDlcIiB5PVwiODdcIi8+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTkVk
Z2UgYnBtbkVsZW1lbnQ9XCJBc3NvY2lhdGlvbl8xczRzZjM4XCIgaWQ9XCJBc3NvY2lhdGlvbl8x
czRzZjM4X2RpXCI+PG9tZ2RpOndheXBvaW50IHg9XCI0MjlcIiB4c2k6dHlwZT1cIm9tZ2RjOlBv
aW50XCIgeT1cIjE3NlwiLz48b21nZGk6d2F5cG9pbnQgeD1cIjMzM1wiIHhzaTp0eXBlPVwib21n
ZGM6UG9pbnRcIiB5PVwiMTE3XCIvPjwvYnBtbmRpOkJQTU5FZGdlPjxicG1uZGk6QlBNTlNoYXBl
IGJwbW5FbGVtZW50PVwiVGV4dEFubm90YXRpb25fMHF0amR1bVwiIGlkPVwiVGV4dEFubm90YXRp
b25fMHF0amR1bV9kaVwiPjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiMzBcIiB3aWR0aD1cIjI2NVwi
IHg9XCI2MjRcIiB5PVwiODdcIi8+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTkVkZ2Ug
YnBtbkVsZW1lbnQ9XCJBc3NvY2lhdGlvbl8xbzhsaTNkXCIgaWQ9XCJBc3NvY2lhdGlvbl8xbzhs
aTNkX2RpXCI+PG9tZ2RpOndheXBvaW50IHg9XCI1MjlcIiB4c2k6dHlwZT1cIm9tZ2RjOlBvaW50
XCIgeT1cIjE4N1wiLz48b21nZGk6d2F5cG9pbnQgeD1cIjcxN1wiIHhzaTp0eXBlPVwib21nZGM6
UG9pbnRcIiB5PVwiMTE3XCIvPjwvYnBtbmRpOkJQTU5FZGdlPjwvYnBtbmRpOkJQTU5QbGFuZT48
L2JwbW5kaTpCUE1ORGlhZ3JhbT48L2RlZmluaXRpb25zPiJ9LCAiY29udGVudF92ZXJzaW9uIjog
MSwgImNyZWF0b3JfaWQiOiAiYUBhLmNvbSIsICJkZXNjcmlwdGlvbiI6ICJDbG9zZSBhIFNlY3Vy
ZXdvcmtzIENUUCB0aWNrZXQgYW5kIHdyaXRlIHRoZSByZXN1bHRzIGluIG5vdGUgdG8gdGhlIGFz
c29jaWF0ZWQgaW5jaWRlbnQuIiwgImV4cG9ydF9rZXkiOiAiZXhhbXBsZV9zZWN1cmV3b3Jrc19j
bG9zZV90aWNrZXQiLCAibGFzdF9tb2RpZmllZF9ieSI6ICJhQGEuY29tIiwgImxhc3RfbW9kaWZp
ZWRfdGltZSI6IDE1OTY3MzA5MTE3OTAsICJuYW1lIjogIkV4YW1wbGU6IFNlY3VyZXdvcmtzIENs
b3NlIFRpY2tldCIsICJvYmplY3RfdHlwZSI6ICJpbmNpZGVudCIsICJwcm9ncmFtbWF0aWNfbmFt
ZSI6ICJleGFtcGxlX3NlY3VyZXdvcmtzX2Nsb3NlX3RpY2tldCIsICJ0YWdzIjogW10sICJ1dWlk
IjogIjgyMzU4MzMzLWU0OTEtNGFjMS04YzcwLTIyM2ZkZDA5ODE4ZiIsICJ3b3JrZmxvd19pZCI6
IDE2fV0sICJ3b3Jrc3BhY2VzIjogW119
""")
