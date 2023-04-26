# -*- coding: utf-8 -*-

"""Generate the Resilient customizations required for fn_mcafee_opendxl"""

try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition


def codegen_reload_data():
    """
    Parameters required reload codegen for the fn_mcafee_opendxl package
    """
    return {
        "package": u"fn_mcafee_opendxl",
        "message_destinations": [u"mcafee_dxl_message_destination"],
        "functions": [u"mcafee_publish_to_dxl"],
        "workflows": [u"example_mcafee_publish_to_dxl_set_tie_reputation", u"example_mcafee_publish_to_dxl_tag_system"],
        "actions": [u"(Example) McAfee Publish to DXL (Tag System Shut Down)", u"(Example) McAfee Publish to DXL (Set TIE Reputation Known Malicious)"],
        "incident_fields": [],
        "incident_artifact_types": [],
        "datatables": [],
        "automatic_tasks": [],
        "scripts": []
    }


def customization_data(client=None):
    """
    Returns a Generator of ImportDefinitions (Customizations).
    Install them using `resilient-circuits customize`

    IBM Resilient Platform Version: 35.0.0

    Contents:
    - Message Destinations:
        - mcafee_dxl_message_destination
    - Functions:
        - mcafee_publish_to_dxl
    - Workflows:
        - example_mcafee_publish_to_dxl_set_tie_reputation
        - example_mcafee_publish_to_dxl_tag_system
    - Rules:
        - (Example) McAfee Publish to DXL (Tag System Shut Down)
        - (Example) McAfee Publish to DXL (Set TIE Reputation Known Malicious)
    """

    yield ImportDefinition(u"""
eyJhY3Rpb25fb3JkZXIiOiBbXSwgImFjdGlvbnMiOiBbeyJhdXRvbWF0aW9ucyI6IFtdLCAiY29u
ZGl0aW9ucyI6IFtdLCAiZW5hYmxlZCI6IHRydWUsICJleHBvcnRfa2V5IjogIihFeGFtcGxlKSBN
Y0FmZWUgUHVibGlzaCB0byBEWEwgKFNldCBUSUUgUmVwdXRhdGlvbiBLbm93biBNYWxpY2lvdXMp
IiwgImlkIjogNTIsICJsb2dpY190eXBlIjogImFsbCIsICJtZXNzYWdlX2Rlc3RpbmF0aW9ucyI6
IFtdLCAibmFtZSI6ICIoRXhhbXBsZSkgTWNBZmVlIFB1Ymxpc2ggdG8gRFhMIChTZXQgVElFIFJl
cHV0YXRpb24gS25vd24gTWFsaWNpb3VzKSIsICJvYmplY3RfdHlwZSI6ICJpbmNpZGVudCIsICJ0
YWdzIjogW10sICJ0aW1lb3V0X3NlY29uZHMiOiA4NjQwMCwgInR5cGUiOiAxLCAidXVpZCI6ICI1
NTk2NjExYy05MDljLTQ1NDQtOTAwYy1kYTRhODI3Nzc2NjgiLCAidmlld19pdGVtcyI6IFtdLCAi
d29ya2Zsb3dzIjogWyJleGFtcGxlX21jYWZlZV9wdWJsaXNoX3RvX2R4bF9zZXRfdGllX3JlcHV0
YXRpb24iXX0sIHsiYXV0b21hdGlvbnMiOiBbXSwgImNvbmRpdGlvbnMiOiBbXSwgImVuYWJsZWQi
OiB0cnVlLCAiZXhwb3J0X2tleSI6ICIoRXhhbXBsZSkgTWNBZmVlIFB1Ymxpc2ggdG8gRFhMIChU
YWcgU3lzdGVtIFNodXQgRG93bikiLCAiaWQiOiA1MywgImxvZ2ljX3R5cGUiOiAiYWxsIiwgIm1l
c3NhZ2VfZGVzdGluYXRpb25zIjogW10sICJuYW1lIjogIihFeGFtcGxlKSBNY0FmZWUgUHVibGlz
aCB0byBEWEwgKFRhZyBTeXN0ZW0gU2h1dCBEb3duKSIsICJvYmplY3RfdHlwZSI6ICJpbmNpZGVu
dCIsICJ0YWdzIjogW10sICJ0aW1lb3V0X3NlY29uZHMiOiA4NjQwMCwgInR5cGUiOiAxLCAidXVp
ZCI6ICJiNGFiMDg1ZS1hNDFlLTQzMmEtYTE1My03Njk4ZTEwYzQzZTgiLCAidmlld19pdGVtcyI6
IFtdLCAid29ya2Zsb3dzIjogWyJleGFtcGxlX21jYWZlZV9wdWJsaXNoX3RvX2R4bF90YWdfc3lz
dGVtIl19XSwgImF1dG9tYXRpY190YXNrcyI6IFtdLCAiZXhwb3J0X2RhdGUiOiAxNjAyODM2ODc2
NzY4LCAiZXhwb3J0X2Zvcm1hdF92ZXJzaW9uIjogMiwgImV4dGVuc2lvbnMiOiBbXSwgImZpZWxk
cyI6IFt7ImFsbG93X2RlZmF1bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IGZhbHNl
LCAiY2FsY3VsYXRlZCI6IGZhbHNlLCAiY2hhbmdlYWJsZSI6IHRydWUsICJjaG9zZW4iOiBmYWxz
ZSwgImRlZmF1bHRfY2hvc2VuX2J5X3NlcnZlciI6IGZhbHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNl
LCAiZXhwb3J0X2tleSI6ICJfX2Z1bmN0aW9uL21jYWZlZV90b3BpY19uYW1lIiwgImhpZGVfbm90
aWZpY2F0aW9uIjogZmFsc2UsICJpZCI6IDMzOSwgImlucHV0X3R5cGUiOiAidGV4dCIsICJpbnRl
cm5hbCI6IGZhbHNlLCAiaXNfdHJhY2tlZCI6IGZhbHNlLCAibmFtZSI6ICJtY2FmZWVfdG9waWNf
bmFtZSIsICJvcGVyYXRpb25fcGVybXMiOiB7fSwgIm9wZXJhdGlvbnMiOiBbXSwgInBsYWNlaG9s
ZGVyIjogIiIsICJwcmVmaXgiOiBudWxsLCAicmVhZF9vbmx5IjogZmFsc2UsICJyZXF1aXJlZCI6
ICJhbHdheXMiLCAicmljaF90ZXh0IjogZmFsc2UsICJ0YWdzIjogW10sICJ0ZW1wbGF0ZXMiOiBb
XSwgInRleHQiOiAibWNhZmVlX3RvcGljX25hbWUiLCAidG9vbHRpcCI6ICJTdHJpbmcgb2YgdGhl
IHRvcGljIG5hbWUuIGllOiAvbWNhZmVlL3NlcnZpY2UvZXBvL3JlbW90ZS9lcG8xIiwgInR5cGVf
aWQiOiAxMSwgInV1aWQiOiAiN2U1NjkwNTItYjc4Ni00OTMzLTlkODctZWFiNTcyODA2MjRmIiwg
InZhbHVlcyI6IFtdfSwgeyJhbGxvd19kZWZhdWx0X3ZhbHVlIjogZmFsc2UsICJibGFua19vcHRp
b24iOiBmYWxzZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgImNoYW5nZWFibGUiOiB0cnVlLCAiY2hv
c2VuIjogZmFsc2UsICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImRlcHJlY2F0
ZWQiOiBmYWxzZSwgImV4cG9ydF9rZXkiOiAiX19mdW5jdGlvbi9tY2FmZWVfd2FpdF9mb3JfcmVz
cG9uc2UiLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImlkIjogMzQwLCAiaW5wdXRfdHlw
ZSI6ICJzZWxlY3QiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlzX3RyYWNrZWQiOiBmYWxzZSwgIm5h
bWUiOiAibWNhZmVlX3dhaXRfZm9yX3Jlc3BvbnNlIiwgIm9wZXJhdGlvbl9wZXJtcyI6IHt9LCAi
b3BlcmF0aW9ucyI6IFtdLCAicGxhY2Vob2xkZXIiOiAiIiwgInByZWZpeCI6IG51bGwsICJyZWFk
X29ubHkiOiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6IFtdLCAidGVtcGxhdGVz
IjogW10sICJ0ZXh0IjogIm1jYWZlZV93YWl0X2Zvcl9yZXNwb25zZSIsICJ0b29sdGlwIjogIlNw
ZWNpZnkgd2hldGhlciBvciBub3QgdG8gd2FpdCBmb3IgdGhlIHJlc3BvbnNlLiBVc2VzIHN5bmNo
cm9ub3VzL2FzeW5jaHJvbm91cyBzZXJ2aWNlIiwgInR5cGVfaWQiOiAxMSwgInV1aWQiOiAiZGJl
ZWQzNmEtMjNiZi00MTg5LTlmNWItYjUzZWU1NGVjZGMzIiwgInZhbHVlcyI6IFt7ImRlZmF1bHQi
OiB0cnVlLCAiZW5hYmxlZCI6IHRydWUsICJoaWRkZW4iOiBmYWxzZSwgImxhYmVsIjogIlllcyIs
ICJwcm9wZXJ0aWVzIjogbnVsbCwgInV1aWQiOiAiYjQ1ZmM4MzQtN2NhYi00OGJjLTg0MzctYjIx
NGVjZTQ3Njc4IiwgInZhbHVlIjogMzAyfSwgeyJkZWZhdWx0IjogZmFsc2UsICJlbmFibGVkIjog
dHJ1ZSwgImhpZGRlbiI6IGZhbHNlLCAibGFiZWwiOiAiTm8iLCAicHJvcGVydGllcyI6IG51bGws
ICJ1dWlkIjogIjY2ODM3YmM3LTY1ZmQtNGZmNC1iNzlmLWI3ZjM4ZDY4NDMyNyIsICJ2YWx1ZSI6
IDMwM31dfSwgeyJhbGxvd19kZWZhdWx0X3ZhbHVlIjogZmFsc2UsICJibGFua19vcHRpb24iOiBm
YWxzZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgImNoYW5nZWFibGUiOiB0cnVlLCAiY2hvc2VuIjog
ZmFsc2UsICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImRlcHJlY2F0ZWQiOiBm
YWxzZSwgImV4cG9ydF9rZXkiOiAiX19mdW5jdGlvbi9tY2FmZWVfZHhsX3BheWxvYWQiLCAiaGlk
ZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImlkIjogMzQyLCAiaW5wdXRfdHlwZSI6ICJ0ZXh0Iiwg
ImludGVybmFsIjogZmFsc2UsICJpc190cmFja2VkIjogZmFsc2UsICJuYW1lIjogIm1jYWZlZV9k
eGxfcGF5bG9hZCIsICJvcGVyYXRpb25fcGVybXMiOiB7fSwgIm9wZXJhdGlvbnMiOiBbXSwgInBs
YWNlaG9sZGVyIjogIiIsICJwcmVmaXgiOiBudWxsLCAicmVhZF9vbmx5IjogZmFsc2UsICJyZXF1
aXJlZCI6ICJhbHdheXMiLCAicmljaF90ZXh0IjogZmFsc2UsICJ0YWdzIjogW10sICJ0ZW1wbGF0
ZXMiOiBbXSwgInRleHQiOiAibWNhZmVlX2R4bF9wYXlsb2FkIiwgInRvb2x0aXAiOiAiVGhlIHRl
eHQgb2YgdGhlIHBheWxvYWQgdG8gcHVibGlzaCB0byB0aGUgdG9waWMiLCAidHlwZV9pZCI6IDEx
LCAidXVpZCI6ICI4NWUwNzExZS1jNTczLTQwNWEtYjU5MC00N2FlMDRiYTY3ZGMiLCAidmFsdWVz
IjogW119LCB7ImFsbG93X2RlZmF1bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IGZh
bHNlLCAiY2FsY3VsYXRlZCI6IGZhbHNlLCAiY2hhbmdlYWJsZSI6IHRydWUsICJjaG9zZW4iOiBm
YWxzZSwgImRlZmF1bHRfY2hvc2VuX2J5X3NlcnZlciI6IGZhbHNlLCAiZGVwcmVjYXRlZCI6IGZh
bHNlLCAiZXhwb3J0X2tleSI6ICJfX2Z1bmN0aW9uL21jYWZlZV9wdWJsaXNoX21ldGhvZCIsICJo
aWRlX25vdGlmaWNhdGlvbiI6IGZhbHNlLCAiaWQiOiAzNDEsICJpbnB1dF90eXBlIjogInNlbGVj
dCIsICJpbnRlcm5hbCI6IGZhbHNlLCAiaXNfdHJhY2tlZCI6IGZhbHNlLCAibmFtZSI6ICJtY2Fm
ZWVfcHVibGlzaF9tZXRob2QiLCAib3BlcmF0aW9uX3Blcm1zIjoge30sICJvcGVyYXRpb25zIjog
W10sICJwbGFjZWhvbGRlciI6ICIiLCAicHJlZml4IjogbnVsbCwgInJlYWRfb25seSI6IGZhbHNl
LCAicmVxdWlyZWQiOiAiYWx3YXlzIiwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6IFtdLCAi
dGVtcGxhdGVzIjogW10sICJ0ZXh0IjogIm1jYWZlZV9wdWJsaXNoX21ldGhvZCIsICJ0b29sdGlw
IjogIlNwZWNpZnkgd2hldGhlciB0byBwdWJsaXNoIGFuIGV2ZW50IG9yIGludm9rZSBhIHNlcnZp
Y2UiLCAidHlwZV9pZCI6IDExLCAidXVpZCI6ICIzZTQ0YzUxYi0yMmE4LTQzNTAtOTA2ZC02YWUw
MzhiYjY3NzkiLCAidmFsdWVzIjogW3siZGVmYXVsdCI6IHRydWUsICJlbmFibGVkIjogdHJ1ZSwg
ImhpZGRlbiI6IGZhbHNlLCAibGFiZWwiOiAiRXZlbnQiLCAicHJvcGVydGllcyI6IG51bGwsICJ1
dWlkIjogImE1MWFlYzdlLTQyYTgtNDcxNi04NGZmLTZiZDI5OTY2N2Y4ZCIsICJ2YWx1ZSI6IDMw
NH0sIHsiZGVmYXVsdCI6IGZhbHNlLCAiZW5hYmxlZCI6IHRydWUsICJoaWRkZW4iOiBmYWxzZSwg
ImxhYmVsIjogIlNlcnZpY2UiLCAicHJvcGVydGllcyI6IG51bGwsICJ1dWlkIjogImNmY2RiZjdl
LTE3NjUtNGI4Ny1iMTY0LTQ2YzBjNzI5N2U1YSIsICJ2YWx1ZSI6IDMwNX1dfSwgeyJleHBvcnRf
a2V5IjogImluY2lkZW50L2ludGVybmFsX2N1c3RvbWl6YXRpb25zX2ZpZWxkIiwgImlkIjogMCwg
ImlucHV0X3R5cGUiOiAidGV4dCIsICJpbnRlcm5hbCI6IHRydWUsICJuYW1lIjogImludGVybmFs
X2N1c3RvbWl6YXRpb25zX2ZpZWxkIiwgInJlYWRfb25seSI6IHRydWUsICJ0ZXh0IjogIkN1c3Rv
bWl6YXRpb25zIEZpZWxkIChpbnRlcm5hbCkiLCAidHlwZV9pZCI6IDAsICJ1dWlkIjogImJmZWVj
MmQ0LTM3NzAtMTFlOC1hZDM5LTRhMDAwNDA0NGFhMSJ9XSwgImZ1bmN0aW9ucyI6IFt7ImNyZWF0
b3IiOiB7ImRpc3BsYXlfbmFtZSI6ICJSZXNpbGllbnQgU3lzYWRtaW4iLCAiaWQiOiAzLCAibmFt
ZSI6ICJhQGEuY29tIiwgInR5cGUiOiAidXNlciJ9LCAiZGVzY3JpcHRpb24iOiB7ImZvcm1hdCI6
ICJ0ZXh0IiwgImNvbnRlbnQiOiAiQSBmdW5jdGlvbiB3aGljaCB0YWtlcyA0IGlucHV0czpcblxu
bWNhZmVlX3RvcGljX25hbWU6IFN0cmluZyBvZiB0aGUgdG9waWMgbmFtZS4gaWU6IC9tY2FmZWUv
c2VydmljZS9lcG8vcmVtb3RlL2VwbzEuXG5tY2FmZWVfZHhsX3BheWxvYWQ6IFRoZSB0ZXh0IG9m
IHRoZSBwYXlsb2FkIHRvIHB1Ymxpc2ggdG8gdGhlIHRvcGljLlxubWNhZmVlX3B1Ymxpc2hfbWV0
aG9kOiBTcGVjaWZ5IHdoZXRoZXIgdG8gcHVibGlzaCBhbiBldmVudCBvciBpbnZva2UgYSBzZXJ2
aWNlLlxubWNhZmVlX3dhaXRfZm9yX3Jlc3BvbnNlOiBTcGVjaWZ5IHdoZXRoZXIgb3Igbm90IHRv
IHdhaXQgZm9yIHRoZSByZXNwb25zZS4gVXNlcyBzeW5jaHJvbm91cy9hc3luY2hyb25vdXMgc2Vy
dmljZS5cblxuXG5UaGUgZnVuY3Rpb24gd2lsbCBzZW5kIHRoZSBwcm92aWRlZCBtZXNzYWdlIHRv
IHRoZSBwcm92aWRlZCB0b3BpYy4ifSwgImRlc3RpbmF0aW9uX2hhbmRsZSI6ICJtY2FmZWVfZHhs
X21lc3NhZ2VfZGVzdGluYXRpb24iLCAiZGlzcGxheV9uYW1lIjogIk1jQWZlZSBQdWJsaXNoIHRv
IERYTCIsICJleHBvcnRfa2V5IjogIm1jYWZlZV9wdWJsaXNoX3RvX2R4bCIsICJpZCI6IDI3LCAi
bGFzdF9tb2RpZmllZF9ieSI6IHsiZGlzcGxheV9uYW1lIjogIlJlc2lsaWVudCBTeXNhZG1pbiIs
ICJpZCI6IDMsICJuYW1lIjogImFAYS5jb20iLCAidHlwZSI6ICJ1c2VyIn0sICJsYXN0X21vZGlm
aWVkX3RpbWUiOiAxNjAyMDExMjcxNjY3LCAibmFtZSI6ICJtY2FmZWVfcHVibGlzaF90b19keGwi
LCAidGFncyI6IFtdLCAidXVpZCI6ICJmOTg3ZWQyMi0yN2Q0LTQzODMtOWFhNC04MWUzOTk5ZWRl
MjUiLCAidmVyc2lvbiI6IDEsICJ2aWV3X2l0ZW1zIjogW3siY29udGVudCI6ICI3ZTU2OTA1Mi1i
Nzg2LTQ5MzMtOWQ4Ny1lYWI1NzI4MDYyNGYiLCAiZWxlbWVudCI6ICJmaWVsZF91dWlkIiwgImZp
ZWxkX3R5cGUiOiAiX19mdW5jdGlvbiIsICJzaG93X2lmIjogbnVsbCwgInNob3dfbGlua19oZWFk
ZXIiOiBmYWxzZSwgInN0ZXBfbGFiZWwiOiBudWxsfSwgeyJjb250ZW50IjogIjg1ZTA3MTFlLWM1
NzMtNDA1YS1iNTkwLTQ3YWUwNGJhNjdkYyIsICJlbGVtZW50IjogImZpZWxkX3V1aWQiLCAiZmll
bGRfdHlwZSI6ICJfX2Z1bmN0aW9uIiwgInNob3dfaWYiOiBudWxsLCAic2hvd19saW5rX2hlYWRl
ciI6IGZhbHNlLCAic3RlcF9sYWJlbCI6IG51bGx9LCB7ImNvbnRlbnQiOiAiM2U0NGM1MWItMjJh
OC00MzUwLTkwNmQtNmFlMDM4YmI2Nzc5IiwgImVsZW1lbnQiOiAiZmllbGRfdXVpZCIsICJmaWVs
ZF90eXBlIjogIl9fZnVuY3Rpb24iLCAic2hvd19pZiI6IG51bGwsICJzaG93X2xpbmtfaGVhZGVy
IjogZmFsc2UsICJzdGVwX2xhYmVsIjogbnVsbH0sIHsiY29udGVudCI6ICJkYmVlZDM2YS0yM2Jm
LTQxODktOWY1Yi1iNTNlZTU0ZWNkYzMiLCAiZWxlbWVudCI6ICJmaWVsZF91dWlkIiwgImZpZWxk
X3R5cGUiOiAiX19mdW5jdGlvbiIsICJzaG93X2lmIjogbnVsbCwgInNob3dfbGlua19oZWFkZXIi
OiBmYWxzZSwgInN0ZXBfbGFiZWwiOiBudWxsfV0sICJ3b3JrZmxvd3MiOiBbeyJhY3Rpb25zIjog
W10sICJkZXNjcmlwdGlvbiI6IG51bGwsICJuYW1lIjogIihFeGFtcGxlKSBNY0FmZWUgUHVibGlz
aCB0byBEWEwgKFNldCBUSUUgUmVwdXRhdGlvbikiLCAib2JqZWN0X3R5cGUiOiAiaW5jaWRlbnQi
LCAicHJvZ3JhbW1hdGljX25hbWUiOiAiZXhhbXBsZV9tY2FmZWVfcHVibGlzaF90b19keGxfc2V0
X3RpZV9yZXB1dGF0aW9uIiwgInRhZ3MiOiBbXSwgInV1aWQiOiBudWxsLCAid29ya2Zsb3dfaWQi
OiAzMn0sIHsiYWN0aW9ucyI6IFtdLCAiZGVzY3JpcHRpb24iOiBudWxsLCAibmFtZSI6ICIoRXhh
bXBsZSkgTWNBZmVlIFB1Ymxpc2ggdG8gRFhMIChUYWcgU3lzdGVtKSIsICJvYmplY3RfdHlwZSI6
ICJpbmNpZGVudCIsICJwcm9ncmFtbWF0aWNfbmFtZSI6ICJleGFtcGxlX21jYWZlZV9wdWJsaXNo
X3RvX2R4bF90YWdfc3lzdGVtIiwgInRhZ3MiOiBbXSwgInV1aWQiOiBudWxsLCAid29ya2Zsb3df
aWQiOiAzMX1dfV0sICJnZW9zIjogbnVsbCwgImdyb3VwcyI6IG51bGwsICJpZCI6IDY1LCAiaW5i
b3VuZF9tYWlsYm94ZXMiOiBudWxsLCAiaW5jaWRlbnRfYXJ0aWZhY3RfdHlwZXMiOiBbXSwgImlu
Y2lkZW50X3R5cGVzIjogW3sidXBkYXRlX2RhdGUiOiAxNjAzMjk1NzQwNjMxLCAiY3JlYXRlX2Rh
dGUiOiAxNjAzMjk1NzQwNjMxLCAidXVpZCI6ICJiZmVlYzJkNC0zNzcwLTExZTgtYWQzOS00YTAw
MDQwNDRhYTAiLCAiZGVzY3JpcHRpb24iOiAiQ3VzdG9taXphdGlvbiBQYWNrYWdlcyAoaW50ZXJu
YWwpIiwgImV4cG9ydF9rZXkiOiAiQ3VzdG9taXphdGlvbiBQYWNrYWdlcyAoaW50ZXJuYWwpIiwg
Im5hbWUiOiAiQ3VzdG9taXphdGlvbiBQYWNrYWdlcyAoaW50ZXJuYWwpIiwgImVuYWJsZWQiOiBm
YWxzZSwgInN5c3RlbSI6IGZhbHNlLCAicGFyZW50X2lkIjogbnVsbCwgImhpZGRlbiI6IGZhbHNl
LCAiaWQiOiAwfV0sICJpbmR1c3RyaWVzIjogbnVsbCwgImxheW91dHMiOiBbXSwgImxvY2FsZSI6
IG51bGwsICJtZXNzYWdlX2Rlc3RpbmF0aW9ucyI6IFt7ImFwaV9rZXlzIjogW10sICJkZXN0aW5h
dGlvbl90eXBlIjogMCwgImV4cGVjdF9hY2siOiB0cnVlLCAiZXhwb3J0X2tleSI6ICJtY2FmZWVf
ZHhsX21lc3NhZ2VfZGVzdGluYXRpb24iLCAibmFtZSI6ICJNY0FmZWUgRFhMIE1lc3NhZ2UgRGVz
dGluYXRpb24iLCAicHJvZ3JhbW1hdGljX25hbWUiOiAibWNhZmVlX2R4bF9tZXNzYWdlX2Rlc3Rp
bmF0aW9uIiwgInRhZ3MiOiBbXSwgInVzZXJzIjogWyJhQGEuY29tIl0sICJ1dWlkIjogIjA1NTdk
NjZiLThmNzYtNDljMC05Y2Q3LTk0ZmVkMjFlOGMwYyJ9XSwgIm5vdGlmaWNhdGlvbnMiOiBudWxs
LCAib3ZlcnJpZGVzIjogW10sICJwaGFzZXMiOiBbXSwgInJlZ3VsYXRvcnMiOiBudWxsLCAicm9s
ZXMiOiBbXSwgInNjcmlwdHMiOiBbXSwgInNlcnZlcl92ZXJzaW9uIjogeyJidWlsZF9udW1iZXIi
OiAwLCAibWFqb3IiOiAzNSwgIm1pbm9yIjogMCwgInZlcnNpb24iOiAiMzUuMC4wIn0sICJ0YWdz
IjogW10sICJ0YXNrX29yZGVyIjogW10sICJ0aW1lZnJhbWVzIjogbnVsbCwgInR5cGVzIjogW10s
ICJ3b3JrZmxvd3MiOiBbeyJhY3Rpb25zIjogW10sICJjb250ZW50IjogeyJ2ZXJzaW9uIjogNCwg
IndvcmtmbG93X2lkIjogImV4YW1wbGVfbWNhZmVlX3B1Ymxpc2hfdG9fZHhsX3RhZ19zeXN0ZW0i
LCAieG1sIjogIjw/eG1sIHZlcnNpb249XCIxLjBcIiBlbmNvZGluZz1cIlVURi04XCI/PjxkZWZp
bml0aW9ucyB4bWxucz1cImh0dHA6Ly93d3cub21nLm9yZy9zcGVjL0JQTU4vMjAxMDA1MjQvTU9E
RUxcIiB4bWxuczpicG1uZGk9XCJodHRwOi8vd3d3Lm9tZy5vcmcvc3BlYy9CUE1OLzIwMTAwNTI0
L0RJXCIgeG1sbnM6b21nZGM9XCJodHRwOi8vd3d3Lm9tZy5vcmcvc3BlYy9ERC8yMDEwMDUyNC9E
Q1wiIHhtbG5zOm9tZ2RpPVwiaHR0cDovL3d3dy5vbWcub3JnL3NwZWMvREQvMjAxMDA1MjQvRElc
IiB4bWxuczpyZXNpbGllbnQ9XCJodHRwOi8vcmVzaWxpZW50LmlibS5jb20vYnBtblwiIHhtbG5z
OnhzZD1cImh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hXCIgeG1sbnM6eHNpPVwiaHR0
cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2VcIiB0YXJnZXROYW1lc3BhY2U9
XCJodHRwOi8vd3d3LmNhbXVuZGEub3JnL3Rlc3RcIj48cHJvY2VzcyBpZD1cImV4YW1wbGVfbWNh
ZmVlX3B1Ymxpc2hfdG9fZHhsX3RhZ19zeXN0ZW1cIiBpc0V4ZWN1dGFibGU9XCJ0cnVlXCIgbmFt
ZT1cIihFeGFtcGxlKSBNY0FmZWUgUHVibGlzaCB0byBEWEwgKFRhZyBTeXN0ZW0pXCI+PGRvY3Vt
ZW50YXRpb24+V29ya2Zsb3cgdG8gdHJpZ2dlciB0aGUgTWNBZmVlIFB1Ymxpc2ggdG8gRFhMIGZ1
bmN0aW9uIGFuZCBzZXQgYSBzeXN0ZW0gdGFnLjwvZG9jdW1lbnRhdGlvbj48c3RhcnRFdmVudCBp
ZD1cIlN0YXJ0RXZlbnRfMTU1YXN4bVwiPjxvdXRnb2luZz5TZXF1ZW5jZUZsb3dfMG9pc3dpZTwv
b3V0Z29pbmc+PC9zdGFydEV2ZW50PjxzZXJ2aWNlVGFzayBpZD1cIlNlcnZpY2VUYXNrXzAwd2Vp
b3FcIiBuYW1lPVwiTWNBZmVlIFB1Ymxpc2ggdG8gRFhMXCIgcmVzaWxpZW50OnR5cGU9XCJmdW5j
dGlvblwiPjxleHRlbnNpb25FbGVtZW50cz48cmVzaWxpZW50OmZ1bmN0aW9uIHV1aWQ9XCJmOTg3
ZWQyMi0yN2Q0LTQzODMtOWFhNC04MWUzOTk5ZWRlMjVcIj57XCJpbnB1dHNcIjp7XCI3ZTU2OTA1
Mi1iNzg2LTQ5MzMtOWQ4Ny1lYWI1NzI4MDYyNGZcIjp7XCJpbnB1dF90eXBlXCI6XCJzdGF0aWNc
IixcInN0YXRpY19pbnB1dFwiOntcIm11bHRpc2VsZWN0X3ZhbHVlXCI6W10sXCJ0ZXh0X3ZhbHVl
XCI6XCIvbWNhZmVlL3NlcnZpY2UvZXBvL3JlbW90ZS9lcG8xXCJ9fSxcIjg1ZTA3MTFlLWM1NzMt
NDA1YS1iNTkwLTQ3YWUwNGJhNjdkY1wiOntcImlucHV0X3R5cGVcIjpcInN0YXRpY1wiLFwic3Rh
dGljX2lucHV0XCI6e1wibXVsdGlzZWxlY3RfdmFsdWVcIjpbXSxcInRleHRfdmFsdWVcIjpcIntc
XFwiY29tbWFuZFxcXCI6IFxcXCJzeXN0ZW0uYXBwbHlUYWdcXFwiLCBcXFwib3V0cHV0XFxcIjog
XFxcImpzb25cXFwiLCBcXFwicGFyYW1zXFxcIjoge1xcXCJuYW1lc1xcXCI6IFxcXCIxMC4wLjIu
MTVcXFwiLCBcXFwidGFnTmFtZVxcXCI6IFxcXCJTaHV0IERvd25cXFwifX1cIn19LFwiM2U0NGM1
MWItMjJhOC00MzUwLTkwNmQtNmFlMDM4YmI2Nzc5XCI6e1wiaW5wdXRfdHlwZVwiOlwic3RhdGlj
XCIsXCJzdGF0aWNfaW5wdXRcIjp7XCJtdWx0aXNlbGVjdF92YWx1ZVwiOltdLFwic2VsZWN0X3Zh
bHVlXCI6XCJjZmNkYmY3ZS0xNzY1LTRiODctYjE2NC00NmMwYzcyOTdlNWFcIn19LFwiZGJlZWQz
NmEtMjNiZi00MTg5LTlmNWItYjUzZWU1NGVjZGMzXCI6e1wiaW5wdXRfdHlwZVwiOlwic3RhdGlj
XCIsXCJzdGF0aWNfaW5wdXRcIjp7XCJtdWx0aXNlbGVjdF92YWx1ZVwiOltdLFwic2VsZWN0X3Zh
bHVlXCI6XCJiNDVmYzgzNC03Y2FiLTQ4YmMtODQzNy1iMjE0ZWNlNDc2NzhcIn19fSxcInBvc3Rf
cHJvY2Vzc2luZ19zY3JpcHRcIjpcIlxcXCJcXFwiXFxcIlxcblJlc3BvbnNlIHJldHVybmVkIHBy
b3ZpZGVzIHRoZSBpbnB1dCB2YWx1ZXMgaW4gdGhlIGZvbGxvd2luZyBmb3JtYXRcXG57XFxuICBc
XFwibWNhZmVlX3RvcGljX25hbWVcXFwiOiBcXFwiJmx0O3RvcGljX25hbWUmZ3Q7XFxcIixcXG4g
IFxcXCJtY2FmZWVfZHhsX3BheWxvYWRcXFwiOiBcXFwiJmx0O3BheWxvYWQmZ3Q7XFxcIixcXG4g
IFxcXCJtY2FmZWVfcHVibGlzaF9tZXRob2RcXFwiOiBcXFwiJmx0O21ldGhvZCZndDtcXFwiLFxc
biAgXFxcIm1jYWZlZV93YWl0X2Zvcl9yZXNwb25zZVxcXCI6IFxcXCImbHQ7d2FpdCBmb3IgcmVz
cG9uc2UmZ3Q7XFxcIlxcbiAgXFxcInJlc3BvbnNlXFxcIjogXFxcIiZsdDtwb3NzaWJsZSByZXNw
b25zZSByZXR1cm5lZCZndDtcXG5cXFwiXFxcIlxcXCJcXG5cXG5cXG5pZiByZXN1bHRzLnN1Y2Nl
c3M6XFxuICBjb250ZW50ID0gcmVzdWx0cy5nZXQoXFxcImNvbnRlbnRcXFwiKVxcbiAgdGV4dCA9
IFxcXCJcXFwiXFxcIlRoZSBmb2xsb3dpbmcgd2FzIHB1Ymxpc2hlZCB0byBEWEw6Jmx0O2JyJmd0
O1xcbiAgJmx0O2ImZ3Q7UGF5bG9hZDombHQ7L2ImZ3Q7IHt9Jmx0O2JyJmd0O1xcbiAgJmx0O2Im
Z3Q7VG9waWM6Jmx0Oy9iJmd0OyB7fSZsdDticiZndDtcXG4gICZsdDtiJmd0O01ldGhvZDombHQ7
L2ImZ3Q7IHt9Jmx0O2JyJmd0O1xcbiAgXFxcIlxcXCJcXFwiLmZvcm1hdChjb250ZW50LmdldChc
XFwibWNhZmVlX2R4bF9wYXlsb2FkXFxcIiksIGNvbnRlbnQuZ2V0KFxcXCJtY2FmZWVfdG9waWNf
bmFtZVxcXCIpLCBjb250ZW50LmdldChcXFwibWNhZmVlX3B1Ymxpc2hfbWV0aG9kXFxcIikpXFxu
ZWxzZTpcXG4gIHRleHQgPSBcXFwiUHVibGlzaCB0byBEWEwgZmFpbGVkLlxcXCJcXG5ub3RlVGV4
dCA9IGhlbHBlci5jcmVhdGVSaWNoVGV4dCh0ZXh0KVxcbmluY2lkZW50LmFkZE5vdGUobm90ZVRl
eHQpXCJ9PC9yZXNpbGllbnQ6ZnVuY3Rpb24+PC9leHRlbnNpb25FbGVtZW50cz48aW5jb21pbmc+
U2VxdWVuY2VGbG93XzBvaXN3aWU8L2luY29taW5nPjxvdXRnb2luZz5TZXF1ZW5jZUZsb3dfMXc0
MnN5Mzwvb3V0Z29pbmc+PC9zZXJ2aWNlVGFzaz48ZW5kRXZlbnQgaWQ9XCJFbmRFdmVudF8xNjZr
eWY2XCI+PGluY29taW5nPlNlcXVlbmNlRmxvd18xdzQyc3kzPC9pbmNvbWluZz48L2VuZEV2ZW50
PjxzZXF1ZW5jZUZsb3cgaWQ9XCJTZXF1ZW5jZUZsb3dfMXc0MnN5M1wiIHNvdXJjZVJlZj1cIlNl
cnZpY2VUYXNrXzAwd2Vpb3FcIiB0YXJnZXRSZWY9XCJFbmRFdmVudF8xNjZreWY2XCIvPjxzZXF1
ZW5jZUZsb3cgaWQ9XCJTZXF1ZW5jZUZsb3dfMG9pc3dpZVwiIHNvdXJjZVJlZj1cIlN0YXJ0RXZl
bnRfMTU1YXN4bVwiIHRhcmdldFJlZj1cIlNlcnZpY2VUYXNrXzAwd2Vpb3FcIi8+PHRleHRBbm5v
dGF0aW9uIGlkPVwiVGV4dEFubm90YXRpb25fMWt4eGl5dFwiPjx0ZXh0PlN0YXJ0IHlvdXIgd29y
a2Zsb3cgaGVyZTwvdGV4dD48L3RleHRBbm5vdGF0aW9uPjxhc3NvY2lhdGlvbiBpZD1cIkFzc29j
aWF0aW9uXzFzZXVqNDhcIiBzb3VyY2VSZWY9XCJTdGFydEV2ZW50XzE1NWFzeG1cIiB0YXJnZXRS
ZWY9XCJUZXh0QW5ub3RhdGlvbl8xa3h4aXl0XCIvPjwvcHJvY2Vzcz48YnBtbmRpOkJQTU5EaWFn
cmFtIGlkPVwiQlBNTkRpYWdyYW1fMVwiPjxicG1uZGk6QlBNTlBsYW5lIGJwbW5FbGVtZW50PVwi
dW5kZWZpbmVkXCIgaWQ9XCJCUE1OUGxhbmVfMVwiPjxicG1uZGk6QlBNTlNoYXBlIGJwbW5FbGVt
ZW50PVwiU3RhcnRFdmVudF8xNTVhc3htXCIgaWQ9XCJTdGFydEV2ZW50XzE1NWFzeG1fZGlcIj48
b21nZGM6Qm91bmRzIGhlaWdodD1cIjM2XCIgd2lkdGg9XCIzNlwiIHg9XCIxNjJcIiB5PVwiMTg4
XCIvPjxicG1uZGk6QlBNTkxhYmVsPjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiMFwiIHdpZHRoPVwi
OTBcIiB4PVwiMTU3XCIgeT1cIjIyM1wiLz48L2JwbW5kaTpCUE1OTGFiZWw+PC9icG1uZGk6QlBN
TlNoYXBlPjxicG1uZGk6QlBNTlNoYXBlIGJwbW5FbGVtZW50PVwiVGV4dEFubm90YXRpb25fMWt4
eGl5dFwiIGlkPVwiVGV4dEFubm90YXRpb25fMWt4eGl5dF9kaVwiPjxvbWdkYzpCb3VuZHMgaGVp
Z2h0PVwiMzBcIiB3aWR0aD1cIjEwMFwiIHg9XCI5OVwiIHk9XCIyNTRcIi8+PC9icG1uZGk6QlBN
TlNoYXBlPjxicG1uZGk6QlBNTkVkZ2UgYnBtbkVsZW1lbnQ9XCJBc3NvY2lhdGlvbl8xc2V1ajQ4
XCIgaWQ9XCJBc3NvY2lhdGlvbl8xc2V1ajQ4X2RpXCI+PG9tZ2RpOndheXBvaW50IHg9XCIxNjlc
IiB4c2k6dHlwZT1cIm9tZ2RjOlBvaW50XCIgeT1cIjIyMFwiLz48b21nZGk6d2F5cG9pbnQgeD1c
IjE1M1wiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMjU0XCIvPjwvYnBtbmRpOkJQTU5F
ZGdlPjxicG1uZGk6QlBNTlNoYXBlIGJwbW5FbGVtZW50PVwiU2VydmljZVRhc2tfMDB3ZWlvcVwi
IGlkPVwiU2VydmljZVRhc2tfMDB3ZWlvcV9kaVwiPjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiODBc
IiB3aWR0aD1cIjEwMFwiIHg9XCIzMzJcIiB5PVwiMTY2XCIvPjwvYnBtbmRpOkJQTU5TaGFwZT48
YnBtbmRpOkJQTU5TaGFwZSBicG1uRWxlbWVudD1cIkVuZEV2ZW50XzE2Nmt5ZjZcIiBpZD1cIkVu
ZEV2ZW50XzE2Nmt5ZjZfZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1cIjM2XCIgd2lkdGg9XCIz
NlwiIHg9XCI1ODNcIiB5PVwiMTg4XCIvPjxicG1uZGk6QlBNTkxhYmVsPjxvbWdkYzpCb3VuZHMg
aGVpZ2h0PVwiMTNcIiB3aWR0aD1cIjBcIiB4PVwiNjAxXCIgeT1cIjIyN1wiLz48L2JwbW5kaTpC
UE1OTGFiZWw+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTkVkZ2UgYnBtbkVsZW1lbnQ9
XCJTZXF1ZW5jZUZsb3dfMXc0MnN5M1wiIGlkPVwiU2VxdWVuY2VGbG93XzF3NDJzeTNfZGlcIj48
b21nZGk6d2F5cG9pbnQgeD1cIjQzMlwiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMjA2
XCIvPjxvbWdkaTp3YXlwb2ludCB4PVwiNTgzXCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9
XCIyMDZcIi8+PGJwbW5kaTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIxM1wiIHdp
ZHRoPVwiMFwiIHg9XCI1MDcuNVwiIHk9XCIxODRcIi8+PC9icG1uZGk6QlBNTkxhYmVsPjwvYnBt
bmRpOkJQTU5FZGdlPjxicG1uZGk6QlBNTkVkZ2UgYnBtbkVsZW1lbnQ9XCJTZXF1ZW5jZUZsb3df
MG9pc3dpZVwiIGlkPVwiU2VxdWVuY2VGbG93XzBvaXN3aWVfZGlcIj48b21nZGk6d2F5cG9pbnQg
eD1cIjE5OFwiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMjA2XCIvPjxvbWdkaTp3YXlw
b2ludCB4PVwiMzMyXCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIyMDZcIi8+PGJwbW5k
aTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIxM1wiIHdpZHRoPVwiMFwiIHg9XCIy
NjVcIiB5PVwiMTg0XCIvPjwvYnBtbmRpOkJQTU5MYWJlbD48L2JwbW5kaTpCUE1ORWRnZT48L2Jw
bW5kaTpCUE1OUGxhbmU+PC9icG1uZGk6QlBNTkRpYWdyYW0+PC9kZWZpbml0aW9ucz4ifSwgImNv
bnRlbnRfdmVyc2lvbiI6IDQsICJjcmVhdG9yX2lkIjogImFAYS5jb20iLCAiZGVzY3JpcHRpb24i
OiAiV29ya2Zsb3cgdG8gdHJpZ2dlciB0aGUgTWNBZmVlIFB1Ymxpc2ggdG8gRFhMIGZ1bmN0aW9u
IGFuZCBzZXQgYSBzeXN0ZW0gdGFnLiIsICJleHBvcnRfa2V5IjogImV4YW1wbGVfbWNhZmVlX3B1
Ymxpc2hfdG9fZHhsX3RhZ19zeXN0ZW0iLCAibGFzdF9tb2RpZmllZF9ieSI6ICJhQGEuY29tIiwg
Imxhc3RfbW9kaWZpZWRfdGltZSI6IDE2MDIwOTUwMTE2ODEsICJuYW1lIjogIihFeGFtcGxlKSBN
Y0FmZWUgUHVibGlzaCB0byBEWEwgKFRhZyBTeXN0ZW0pIiwgIm9iamVjdF90eXBlIjogImluY2lk
ZW50IiwgInByb2dyYW1tYXRpY19uYW1lIjogImV4YW1wbGVfbWNhZmVlX3B1Ymxpc2hfdG9fZHhs
X3RhZ19zeXN0ZW0iLCAidGFncyI6IFtdLCAidXVpZCI6ICIyNTIyZTU5ZS0zNTY1LTRiODItOTIw
NC1jZjM2NmQwNDYzN2MiLCAid29ya2Zsb3dfaWQiOiAzMX0sIHsiYWN0aW9ucyI6IFtdLCAiY29u
dGVudCI6IHsidmVyc2lvbiI6IDIsICJ3b3JrZmxvd19pZCI6ICJleGFtcGxlX21jYWZlZV9wdWJs
aXNoX3RvX2R4bF9zZXRfdGllX3JlcHV0YXRpb24iLCAieG1sIjogIjw/eG1sIHZlcnNpb249XCIx
LjBcIiBlbmNvZGluZz1cIlVURi04XCI/PjxkZWZpbml0aW9ucyB4bWxucz1cImh0dHA6Ly93d3cu
b21nLm9yZy9zcGVjL0JQTU4vMjAxMDA1MjQvTU9ERUxcIiB4bWxuczpicG1uZGk9XCJodHRwOi8v
d3d3Lm9tZy5vcmcvc3BlYy9CUE1OLzIwMTAwNTI0L0RJXCIgeG1sbnM6b21nZGM9XCJodHRwOi8v
d3d3Lm9tZy5vcmcvc3BlYy9ERC8yMDEwMDUyNC9EQ1wiIHhtbG5zOm9tZ2RpPVwiaHR0cDovL3d3
dy5vbWcub3JnL3NwZWMvREQvMjAxMDA1MjQvRElcIiB4bWxuczpyZXNpbGllbnQ9XCJodHRwOi8v
cmVzaWxpZW50LmlibS5jb20vYnBtblwiIHhtbG5zOnhzZD1cImh0dHA6Ly93d3cudzMub3JnLzIw
MDEvWE1MU2NoZW1hXCIgeG1sbnM6eHNpPVwiaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hl
bWEtaW5zdGFuY2VcIiB0YXJnZXROYW1lc3BhY2U9XCJodHRwOi8vd3d3LmNhbXVuZGEub3JnL3Rl
c3RcIj48cHJvY2VzcyBpZD1cImV4YW1wbGVfbWNhZmVlX3B1Ymxpc2hfdG9fZHhsX3NldF90aWVf
cmVwdXRhdGlvblwiIGlzRXhlY3V0YWJsZT1cInRydWVcIiBuYW1lPVwiKEV4YW1wbGUpIE1jQWZl
ZSBQdWJsaXNoIHRvIERYTCAoU2V0IFRJRSBSZXB1dGF0aW9uKVwiPjxkb2N1bWVudGF0aW9uPldv
cmtmbG93IHRvIHRyaWdnZXIgdGhlIE1jQWZlZSBQdWJsaXNoIHRvIERYTCBmdW5jdGlvbiBhbmQg
c2V0IGEgVElFIHJlcHV0YXRpb24uPC9kb2N1bWVudGF0aW9uPjxzdGFydEV2ZW50IGlkPVwiU3Rh
cnRFdmVudF8xNTVhc3htXCI+PG91dGdvaW5nPlNlcXVlbmNlRmxvd18wNWQ2eDJwPC9vdXRnb2lu
Zz48L3N0YXJ0RXZlbnQ+PHNlcnZpY2VUYXNrIGlkPVwiU2VydmljZVRhc2tfMGFoaW81elwiIG5h
bWU9XCJNY0FmZWUgUHVibGlzaCB0byBEWExcIiByZXNpbGllbnQ6dHlwZT1cImZ1bmN0aW9uXCI+
PGV4dGVuc2lvbkVsZW1lbnRzPjxyZXNpbGllbnQ6ZnVuY3Rpb24gdXVpZD1cImY5ODdlZDIyLTI3
ZDQtNDM4My05YWE0LTgxZTM5OTllZGUyNVwiPntcImlucHV0c1wiOntcIjdlNTY5MDUyLWI3ODYt
NDkzMy05ZDg3LWVhYjU3MjgwNjI0ZlwiOntcImlucHV0X3R5cGVcIjpcInN0YXRpY1wiLFwic3Rh
dGljX2lucHV0XCI6e1wibXVsdGlzZWxlY3RfdmFsdWVcIjpbXSxcInRleHRfdmFsdWVcIjpcIi9t
Y2FmZWUvc2VydmljZS90aWUvZmlsZS9yZXB1dGF0aW9uL3NldFwifX0sXCI4NWUwNzExZS1jNTcz
LTQwNWEtYjU5MC00N2FlMDRiYTY3ZGNcIjp7XCJpbnB1dF90eXBlXCI6XCJzdGF0aWNcIixcInN0
YXRpY19pbnB1dFwiOntcIm11bHRpc2VsZWN0X3ZhbHVlXCI6W10sXCJ0ZXh0X3ZhbHVlXCI6XCJ7
XFxcImhhc2hlc1xcXCI6IFt7XFxcInR5cGVcXFwiOiBcXFwibWQ1XFxcIiwgXFxcInZhbHVlXFxc
IjogXFxcIkRrMFR6SnJ3VE1aTGFQdzQvZ29OckE9PVxcXCJ9XSwgXFxcInByb3ZpZGVySWRcXFwi
OiAzLCBcXFwidHJ1c3RMZXZlbFxcXCI6IDF9XCJ9fSxcIjNlNDRjNTFiLTIyYTgtNDM1MC05MDZk
LTZhZTAzOGJiNjc3OVwiOntcImlucHV0X3R5cGVcIjpcInN0YXRpY1wiLFwic3RhdGljX2lucHV0
XCI6e1wibXVsdGlzZWxlY3RfdmFsdWVcIjpbXSxcInNlbGVjdF92YWx1ZVwiOlwiY2ZjZGJmN2Ut
MTc2NS00Yjg3LWIxNjQtNDZjMGM3Mjk3ZTVhXCJ9fSxcImRiZWVkMzZhLTIzYmYtNDE4OS05ZjVi
LWI1M2VlNTRlY2RjM1wiOntcImlucHV0X3R5cGVcIjpcInN0YXRpY1wiLFwic3RhdGljX2lucHV0
XCI6e1wibXVsdGlzZWxlY3RfdmFsdWVcIjpbXSxcInNlbGVjdF92YWx1ZVwiOlwiNjY4MzdiYzct
NjVmZC00ZmY0LWI3OWYtYjdmMzhkNjg0MzI3XCJ9fX0sXCJwb3N0X3Byb2Nlc3Npbmdfc2NyaXB0
XCI6XCJcXFwiXFxcIlxcXCJcXG5SZXNwb25zZSByZXR1cm5lZCBwcm92aWRlcyB0aGUgaW5wdXQg
dmFsdWVzIGluIHRoZSBmb2xsb3dpbmcgZm9ybWF0XFxue1xcbiAgXFxcIm1jYWZlZV90b3BpY19u
YW1lXFxcIjogXFxcIiZsdDt0b3BpY19uYW1lJmd0O1xcXCIsXFxuICBcXFwibWNhZmVlX2R4bF9w
YXlsb2FkXFxcIjogXFxcIiZsdDtwYXlsb2FkJmd0O1xcXCIsXFxuICBcXFwibWNhZmVlX3B1Ymxp
c2hfbWV0aG9kXFxcIjogXFxcIiZsdDttZXRob2QmZ3Q7XFxcIixcXG4gIFxcXCJtY2FmZWVfd2Fp
dF9mb3JfcmVzcG9uc2VcXFwiOiBcXFwiJmx0O3dhaXQgZm9yIHJlc3BvbnNlJmd0O1xcXCJcXG5c
XFwiXFxcIlxcXCJcXG5cXG50cnVzdF9sZXZlbCA9IFxcXCJcXFwiXFxuXFxuY29udGVudCA9IHJl
c3VsdHMuZ2V0KFxcXCJjb250ZW50XFxcIilcXG5cXG5pZiBjb250ZW50LmdldChcXFwibWNhZmVl
X2R4bF9wYXlsb2FkXFxcIikuZmluZChcXFwiMzBcXFwiKSAmZ3Q7IDA6XFxuICB0cnVzdF9sZXZl
bCA9IFxcXCJNaWdodCBCZSBNYWxpY2lvdXNcXFwiXFxuICBcXG5lbGlmIGNvbnRlbnQuZ2V0KFxc
XCJtY2FmZWVfZHhsX3BheWxvYWRcXFwiKS5maW5kKFxcXCIxNVxcXCIpICZndDsgMDpcXG4gIHRy
dXN0X2xldmVsID0gXFxcIk1vc3QgTGlrZWx5IE1hbGljaW91c1xcXCJcXG5cXG5lbGlmIGNvbnRl
bnQuZ2V0KFxcXCJtY2FmZWVfZHhsX3BheWxvYWRcXFwiKS5maW5kKFxcXCIxXFxcIikgJmd0OyAw
OlxcbiAgdHJ1c3RfbGV2ZWwgPSBcXFwiS25vd24gTWFsaWNpb3VzXFxcIlxcblxcblxcblxcbnRl
eHQgPSBcXFwiXFxcIlxcXCJUaGUgZm9sbG93aW5nIHdhcyBwdWJsaXNoZWQgdG8gRFhMOiZsdDti
ciZndDtcXG4mbHQ7YiZndDtQYXlsb2FkOiZsdDsvYiZndDsge30mbHQ7YnImZ3Q7XFxuJmx0O2Im
Z3Q7VG9waWM6Jmx0Oy9iJmd0OyB7fSZsdDticiZndDtcXG4mbHQ7YiZndDtNZXRob2Q6Jmx0Oy9i
Jmd0OyB7fSZsdDticiZndDtcXG5cXG5TZXR0aW5nIFRydXN0IExldmVsIHRvIHt9XFxuXFxcIlxc
XCJcXFwiLmZvcm1hdChjb250ZW50LmdldChcXFwibWNhZmVlX2R4bF9wYXlsb2FkXFxcIiksIGNv
bnRlbnQuZ2V0KFxcXCJtY2FmZWVfdG9waWNfbmFtZVxcXCIpLCBjb250ZW50LmdldChcXFwibWNh
ZmVlX3B1Ymxpc2hfbWV0aG9kXFxcIiksIHRydXN0X2xldmVsKVxcblxcbm5vdGVUZXh0ID0gaGVs
cGVyLmNyZWF0ZVJpY2hUZXh0KHRleHQpXFxuaW5jaWRlbnQuYWRkTm90ZShub3RlVGV4dClcIixc
InByZV9wcm9jZXNzaW5nX3NjcmlwdFwiOlwiIyBSZXBsYWNlcyB0cnVzdCBsZXZlbCBzdHJpbmcg
d2l0aCBhY2NlcHRhYmxlIHZhbHVlIHRvIHB1Ymxpc2ggdG8gdG9waWNcXG5cXG5pbnB1dHMubWNh
ZmVlX2R4bF9wYXlsb2FkID0gaW5wdXRzLm1jYWZlZV9keGxfcGF5bG9hZC5yZXBsYWNlKFxcXCJc
XFxcXFxcIktub3duIE1hbGljaW91c1xcXFxcXFwiXFxcIiwgXFxcIjFcXFwiKVxcblxcbmlucHV0
cy5tY2FmZWVfZHhsX3BheWxvYWQgPSBpbnB1dHMubWNhZmVlX2R4bF9wYXlsb2FkLnJlcGxhY2Uo
XFxcIlxcXFxcXFwiTW9zdCBMaWtlbHkgTWFsaWNpb3VzXFxcXFxcXCJcXFwiLCBcXFwiMTVcXFwi
KVxcblxcbmlucHV0cy5tY2FmZWVfZHhsX3BheWxvYWQgPSBpbnB1dHMubWNhZmVlX2R4bF9wYXls
b2FkLnJlcGxhY2UoXFxcIlxcXFxcXFwiTWlnaHQgQmUgTWFsaWNpb3VzXFxcXFxcXCJcXFwiLCBc
XFwiMzBcXFwiKVxcblwiLFwicmVzdWx0X25hbWVcIjpcIlwifTwvcmVzaWxpZW50OmZ1bmN0aW9u
PjwvZXh0ZW5zaW9uRWxlbWVudHM+PGluY29taW5nPlNlcXVlbmNlRmxvd18wNWQ2eDJwPC9pbmNv
bWluZz48b3V0Z29pbmc+U2VxdWVuY2VGbG93XzFxNHNjamY8L291dGdvaW5nPjwvc2VydmljZVRh
c2s+PHNlcXVlbmNlRmxvdyBpZD1cIlNlcXVlbmNlRmxvd18wNWQ2eDJwXCIgc291cmNlUmVmPVwi
U3RhcnRFdmVudF8xNTVhc3htXCIgdGFyZ2V0UmVmPVwiU2VydmljZVRhc2tfMGFoaW81elwiLz48
ZW5kRXZlbnQgaWQ9XCJFbmRFdmVudF8xNzk4Z2tmXCI+PGluY29taW5nPlNlcXVlbmNlRmxvd18x
cTRzY2pmPC9pbmNvbWluZz48L2VuZEV2ZW50PjxzZXF1ZW5jZUZsb3cgaWQ9XCJTZXF1ZW5jZUZs
b3dfMXE0c2NqZlwiIHNvdXJjZVJlZj1cIlNlcnZpY2VUYXNrXzBhaGlvNXpcIiB0YXJnZXRSZWY9
XCJFbmRFdmVudF8xNzk4Z2tmXCIvPjx0ZXh0QW5ub3RhdGlvbiBpZD1cIlRleHRBbm5vdGF0aW9u
XzFreHhpeXRcIj48dGV4dD5TdGFydCB5b3VyIHdvcmtmbG93IGhlcmU8L3RleHQ+PC90ZXh0QW5u
b3RhdGlvbj48YXNzb2NpYXRpb24gaWQ9XCJBc3NvY2lhdGlvbl8xc2V1ajQ4XCIgc291cmNlUmVm
PVwiU3RhcnRFdmVudF8xNTVhc3htXCIgdGFyZ2V0UmVmPVwiVGV4dEFubm90YXRpb25fMWt4eGl5
dFwiLz48L3Byb2Nlc3M+PGJwbW5kaTpCUE1ORGlhZ3JhbSBpZD1cIkJQTU5EaWFncmFtXzFcIj48
YnBtbmRpOkJQTU5QbGFuZSBicG1uRWxlbWVudD1cInVuZGVmaW5lZFwiIGlkPVwiQlBNTlBsYW5l
XzFcIj48YnBtbmRpOkJQTU5TaGFwZSBicG1uRWxlbWVudD1cIlN0YXJ0RXZlbnRfMTU1YXN4bVwi
IGlkPVwiU3RhcnRFdmVudF8xNTVhc3htX2RpXCI+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIzNlwi
IHdpZHRoPVwiMzZcIiB4PVwiMTYyXCIgeT1cIjE4OFwiLz48YnBtbmRpOkJQTU5MYWJlbD48b21n
ZGM6Qm91bmRzIGhlaWdodD1cIjBcIiB3aWR0aD1cIjkwXCIgeD1cIjE1N1wiIHk9XCIyMjNcIi8+
PC9icG1uZGk6QlBNTkxhYmVsPjwvYnBtbmRpOkJQTU5TaGFwZT48YnBtbmRpOkJQTU5TaGFwZSBi
cG1uRWxlbWVudD1cIlRleHRBbm5vdGF0aW9uXzFreHhpeXRcIiBpZD1cIlRleHRBbm5vdGF0aW9u
XzFreHhpeXRfZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1cIjMwXCIgd2lkdGg9XCIxMDBcIiB4
PVwiOTlcIiB5PVwiMjU0XCIvPjwvYnBtbmRpOkJQTU5TaGFwZT48YnBtbmRpOkJQTU5FZGdlIGJw
bW5FbGVtZW50PVwiQXNzb2NpYXRpb25fMXNldWo0OFwiIGlkPVwiQXNzb2NpYXRpb25fMXNldWo0
OF9kaVwiPjxvbWdkaTp3YXlwb2ludCB4PVwiMTY5XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwi
IHk9XCIyMjBcIi8+PG9tZ2RpOndheXBvaW50IHg9XCIxNTNcIiB4c2k6dHlwZT1cIm9tZ2RjOlBv
aW50XCIgeT1cIjI1NFwiLz48L2JwbW5kaTpCUE1ORWRnZT48YnBtbmRpOkJQTU5TaGFwZSBicG1u
RWxlbWVudD1cIlNlcnZpY2VUYXNrXzBhaGlvNXpcIiBpZD1cIlNlcnZpY2VUYXNrXzBhaGlvNXpf
ZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1cIjgwXCIgd2lkdGg9XCIxMDBcIiB4PVwiMzE5XCIg
eT1cIjE2NlwiLz48L2JwbW5kaTpCUE1OU2hhcGU+PGJwbW5kaTpCUE1ORWRnZSBicG1uRWxlbWVu
dD1cIlNlcXVlbmNlRmxvd18wNWQ2eDJwXCIgaWQ9XCJTZXF1ZW5jZUZsb3dfMDVkNngycF9kaVwi
PjxvbWdkaTp3YXlwb2ludCB4PVwiMTk4XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIy
MDZcIi8+PG9tZ2RpOndheXBvaW50IHg9XCIzMTlcIiB4c2k6dHlwZT1cIm9tZ2RjOlBvaW50XCIg
eT1cIjIwNlwiLz48YnBtbmRpOkJQTU5MYWJlbD48b21nZGM6Qm91bmRzIGhlaWdodD1cIjEyXCIg
d2lkdGg9XCIwXCIgeD1cIjI1OC41XCIgeT1cIjE4NVwiLz48L2JwbW5kaTpCUE1OTGFiZWw+PC9i
cG1uZGk6QlBNTkVkZ2U+PGJwbW5kaTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJFbmRFdmVudF8x
Nzk4Z2tmXCIgaWQ9XCJFbmRFdmVudF8xNzk4Z2tmX2RpXCI+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9
XCIzNlwiIHdpZHRoPVwiMzZcIiB4PVwiNTY4XCIgeT1cIjE4OFwiLz48YnBtbmRpOkJQTU5MYWJl
bD48b21nZGM6Qm91bmRzIGhlaWdodD1cIjEyXCIgd2lkdGg9XCIwXCIgeD1cIjU4NlwiIHk9XCIy
MjhcIi8+PC9icG1uZGk6QlBNTkxhYmVsPjwvYnBtbmRpOkJQTU5TaGFwZT48YnBtbmRpOkJQTU5F
ZGdlIGJwbW5FbGVtZW50PVwiU2VxdWVuY2VGbG93XzFxNHNjamZcIiBpZD1cIlNlcXVlbmNlRmxv
d18xcTRzY2pmX2RpXCI+PG9tZ2RpOndheXBvaW50IHg9XCI0MTlcIiB4c2k6dHlwZT1cIm9tZ2Rj
OlBvaW50XCIgeT1cIjIwNlwiLz48b21nZGk6d2F5cG9pbnQgeD1cIjU2OFwiIHhzaTp0eXBlPVwi
b21nZGM6UG9pbnRcIiB5PVwiMjA2XCIvPjxicG1uZGk6QlBNTkxhYmVsPjxvbWdkYzpCb3VuZHMg
aGVpZ2h0PVwiMTJcIiB3aWR0aD1cIjBcIiB4PVwiNDkzLjVcIiB5PVwiMTg1XCIvPjwvYnBtbmRp
OkJQTU5MYWJlbD48L2JwbW5kaTpCUE1ORWRnZT48L2JwbW5kaTpCUE1OUGxhbmU+PC9icG1uZGk6
QlBNTkRpYWdyYW0+PC9kZWZpbml0aW9ucz4ifSwgImNvbnRlbnRfdmVyc2lvbiI6IDIsICJjcmVh
dG9yX2lkIjogImFAYS5jb20iLCAiZGVzY3JpcHRpb24iOiAiV29ya2Zsb3cgdG8gdHJpZ2dlciB0
aGUgTWNBZmVlIFB1Ymxpc2ggdG8gRFhMIGZ1bmN0aW9uIGFuZCBzZXQgYSBUSUUgcmVwdXRhdGlv
bi4iLCAiZXhwb3J0X2tleSI6ICJleGFtcGxlX21jYWZlZV9wdWJsaXNoX3RvX2R4bF9zZXRfdGll
X3JlcHV0YXRpb24iLCAibGFzdF9tb2RpZmllZF9ieSI6ICJhQGEuY29tIiwgImxhc3RfbW9kaWZp
ZWRfdGltZSI6IDE2MDIwOTYxNzQzNTUsICJuYW1lIjogIihFeGFtcGxlKSBNY0FmZWUgUHVibGlz
aCB0byBEWEwgKFNldCBUSUUgUmVwdXRhdGlvbikiLCAib2JqZWN0X3R5cGUiOiAiaW5jaWRlbnQi
LCAicHJvZ3JhbW1hdGljX25hbWUiOiAiZXhhbXBsZV9tY2FmZWVfcHVibGlzaF90b19keGxfc2V0
X3RpZV9yZXB1dGF0aW9uIiwgInRhZ3MiOiBbXSwgInV1aWQiOiAiMWY2NWQ4YTEtOTc1Yy00MmIw
LWIxMGUtMjBiNWYxZmE2MDVhIiwgIndvcmtmbG93X2lkIjogMzJ9XSwgIndvcmtzcGFjZXMiOiBb
XX0=
""")
