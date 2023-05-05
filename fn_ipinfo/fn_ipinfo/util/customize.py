# -*- coding: utf-8 -*-

"""Generate the Resilient customizations required for fn_ipinfo"""

try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition


def codegen_reload_data():
    """
    Parameters required reload codegen for the fn_ipinfo package
    """
    return {
        "package": u"fn_ipinfo",
        "message_destinations": [u"fn_ipinfo"],
        "functions": [u"fn_ipinfo_query_ip_address"],
        "workflows": [u"example_query_ip_artifact_with_ipinfo"],
        "actions": [u"Query Artifact with IP Info"],
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

    Contents:
    - Message Destinations:
        - fn_ipinfo
    - Functions:
        - fn_ipinfo_query_ip_address
    - Workflows:
        - example_query_ip_artifact_with_ipinfo
    - Rules:
        - Query Artifact with IP Info
    """

    yield ImportDefinition(u"""
eyJhY3Rpb25fb3JkZXIiOiBbXSwgImFjdGlvbnMiOiBbeyJhdXRvbWF0aW9ucyI6IFtdLCAiY29u
ZGl0aW9ucyI6IFt7ImV2YWx1YXRpb25faWQiOiBudWxsLCAiZmllbGRfbmFtZSI6ICJhcnRpZmFj
dC50eXBlIiwgIm1ldGhvZCI6ICJlcXVhbHMiLCAidHlwZSI6IG51bGwsICJ2YWx1ZSI6ICJJUCBB
ZGRyZXNzIn0sIHsiZXZhbHVhdGlvbl9pZCI6IG51bGwsICJmaWVsZF9uYW1lIjogImFydGlmYWN0
LnZhbHVlIiwgIm1ldGhvZCI6ICJoYXNfYV92YWx1ZSIsICJ0eXBlIjogbnVsbCwgInZhbHVlIjog
bnVsbH1dLCAiZW5hYmxlZCI6IHRydWUsICJleHBvcnRfa2V5IjogIlF1ZXJ5IEFydGlmYWN0IHdp
dGggSVAgSW5mbyIsICJpZCI6IDEzOCwgImxvZ2ljX3R5cGUiOiAiYWxsIiwgIm1lc3NhZ2VfZGVz
dGluYXRpb25zIjogW10sICJuYW1lIjogIlF1ZXJ5IEFydGlmYWN0IHdpdGggSVAgSW5mbyIsICJv
YmplY3RfdHlwZSI6ICJhcnRpZmFjdCIsICJ0YWdzIjogW10sICJ0aW1lb3V0X3NlY29uZHMiOiA4
NjQwMCwgInR5cGUiOiAxLCAidXVpZCI6ICJlYjEzNjdlZS1iZmZkLTQxMjctOTU3ZS0xYTIxN2My
NjkyMzIiLCAidmlld19pdGVtcyI6IFtdLCAid29ya2Zsb3dzIjogWyJleGFtcGxlX3F1ZXJ5X2lw
X2FydGlmYWN0X3dpdGhfaXBpbmZvIl19XSwgImF1dG9tYXRpY190YXNrcyI6IFtdLCAiZXhwb3J0
X2RhdGUiOiAxNTkyNDA0NjUzNjQyLCAiZXhwb3J0X2Zvcm1hdF92ZXJzaW9uIjogMiwgImZpZWxk
cyI6IFt7ImFsbG93X2RlZmF1bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IGZhbHNl
LCAiY2FsY3VsYXRlZCI6IGZhbHNlLCAiY2hhbmdlYWJsZSI6IHRydWUsICJjaG9zZW4iOiBmYWxz
ZSwgImRlZmF1bHRfY2hvc2VuX2J5X3NlcnZlciI6IGZhbHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNl
LCAiZXhwb3J0X2tleSI6ICJfX2Z1bmN0aW9uL2lwaW5mb19xdWVyeV9pcCIsICJoaWRlX25vdGlm
aWNhdGlvbiI6IGZhbHNlLCAiaWQiOiA5OTIsICJpbnB1dF90eXBlIjogInRleHQiLCAiaW50ZXJu
YWwiOiBmYWxzZSwgImlzX3RyYWNrZWQiOiBmYWxzZSwgIm5hbWUiOiAiaXBpbmZvX3F1ZXJ5X2lw
IiwgIm9wZXJhdGlvbl9wZXJtcyI6IHt9LCAib3BlcmF0aW9ucyI6IFtdLCAicGxhY2Vob2xkZXIi
OiAiOC44LjguOCIsICJwcmVmaXgiOiBudWxsLCAicmVhZF9vbmx5IjogZmFsc2UsICJyZXF1aXJl
ZCI6ICJhbHdheXMiLCAicmljaF90ZXh0IjogZmFsc2UsICJ0YWdzIjogW10sICJ0ZW1wbGF0ZXMi
OiBbXSwgInRleHQiOiAiaXBpbmZvX3F1ZXJ5X2lwIiwgInRvb2x0aXAiOiAiQW4gSVAgYWRkcmVz
cyBpbiBlaXRoZXIgSVBWNCBvZiBJUFY2IGZvcm1hdC4iLCAidHlwZV9pZCI6IDExLCAidXVpZCI6
ICI0ZmE4YzU4MS0yNGY0LTRjMjMtYTJiYy0yMTkyMzU2YTNkY2YiLCAidmFsdWVzIjogW119LCB7
ImV4cG9ydF9rZXkiOiAiaW5jaWRlbnQvaW50ZXJuYWxfY3VzdG9taXphdGlvbnNfZmllbGQiLCAi
aWQiOiAwLCAiaW5wdXRfdHlwZSI6ICJ0ZXh0IiwgImludGVybmFsIjogdHJ1ZSwgIm5hbWUiOiAi
aW50ZXJuYWxfY3VzdG9taXphdGlvbnNfZmllbGQiLCAicmVhZF9vbmx5IjogdHJ1ZSwgInRleHQi
OiAiQ3VzdG9taXphdGlvbnMgRmllbGQgKGludGVybmFsKSIsICJ0eXBlX2lkIjogMCwgInV1aWQi
OiAiYmZlZWMyZDQtMzc3MC0xMWU4LWFkMzktNGEwMDA0MDQ0YWExIn1dLCAiZnVuY3Rpb25zIjog
W3siY3JlYXRvciI6IHsiZGlzcGxheV9uYW1lIjogIlJlc2lsaWVudCBTeXNhZG1pbiIsICJpZCI6
IDMsICJuYW1lIjogImFAZXhhbXBsZS5jb20iLCAidHlwZSI6ICJ1c2VyIn0sICJkZXNjcmlwdGlv
biI6IHsiZm9ybWF0IjogInRleHQiLCAiY29udGVudCI6ICJTdWJtaXRzIGEgcXVlcnkgdG8gSVAg
SW5mbyBmb3IgZW5yaWNobWVudCBpbmZvcm1hdGlvbiBvbiBhIGdpdmVuIElQIGFkZHJlc3MuXG5U
YWtlcyBpbiBhIFN0cmluZyBpbnB1dCByZXByZXNlbnRpbmcgYW4gSVAgQWRkcmVzcy4ifSwgImRl
c3RpbmF0aW9uX2hhbmRsZSI6ICJmbl9pcGluZm8iLCAiZGlzcGxheV9uYW1lIjogIklwSW5mbzog
UXVlcnkgSVAgQWRkcmVzcyIsICJleHBvcnRfa2V5IjogImZuX2lwaW5mb19xdWVyeV9pcF9hZGRy
ZXNzIiwgImlkIjogNTAsICJsYXN0X21vZGlmaWVkX2J5IjogeyJkaXNwbGF5X25hbWUiOiAiUmVz
aWxpZW50IFN5c2FkbWluIiwgImlkIjogMywgIm5hbWUiOiAiYUBleGFtcGxlLmNvbSIsICJ0eXBl
IjogInVzZXIifSwgImxhc3RfbW9kaWZpZWRfdGltZSI6IDE1OTI0MDQ2MTc2NjIsICJuYW1lIjog
ImZuX2lwaW5mb19xdWVyeV9pcF9hZGRyZXNzIiwgInRhZ3MiOiBbXSwgInV1aWQiOiAiZjEyZDVi
MWEtNDU3Yy00MzlhLTk3OWEtMDhlNzQxZjViZmU5IiwgInZlcnNpb24iOiAxLCAidmlld19pdGVt
cyI6IFt7ImNvbnRlbnQiOiAiNGZhOGM1ODEtMjRmNC00YzIzLWEyYmMtMjE5MjM1NmEzZGNmIiwg
ImVsZW1lbnQiOiAiZmllbGRfdXVpZCIsICJmaWVsZF90eXBlIjogIl9fZnVuY3Rpb24iLCAic2hv
d19pZiI6IG51bGwsICJzaG93X2xpbmtfaGVhZGVyIjogZmFsc2UsICJzdGVwX2xhYmVsIjogbnVs
bH1dLCAid29ya2Zsb3dzIjogW3siYWN0aW9ucyI6IFtdLCAiZGVzY3JpcHRpb24iOiBudWxsLCAi
bmFtZSI6ICJFeGFtcGxlOiBRdWVyeSBJUCBBcnRpZmFjdCBXaXRoIElwSW5mbyIsICJvYmplY3Rf
dHlwZSI6ICJhcnRpZmFjdCIsICJwcm9ncmFtbWF0aWNfbmFtZSI6ICJleGFtcGxlX3F1ZXJ5X2lw
X2FydGlmYWN0X3dpdGhfaXBpbmZvIiwgInRhZ3MiOiBbXSwgInV1aWQiOiBudWxsLCAid29ya2Zs
b3dfaWQiOiA2Mn1dfV0sICJnZW9zIjogbnVsbCwgImdyb3VwcyI6IG51bGwsICJpZCI6IDMsICJp
bmJvdW5kX21haWxib3hlcyI6IG51bGwsICJpbmNpZGVudF9hcnRpZmFjdF90eXBlcyI6IFtdLCAi
aW5jaWRlbnRfdHlwZXMiOiBbeyJ1cGRhdGVfZGF0ZSI6IDE1OTI0MDQ2NTA3MjEsICJjcmVhdGVf
ZGF0ZSI6IDE1OTI0MDQ2NTA3MjEsICJ1dWlkIjogImJmZWVjMmQ0LTM3NzAtMTFlOC1hZDM5LTRh
MDAwNDA0NGFhMCIsICJkZXNjcmlwdGlvbiI6ICJDdXN0b21pemF0aW9uIFBhY2thZ2VzIChpbnRl
cm5hbCkiLCAiZXhwb3J0X2tleSI6ICJDdXN0b21pemF0aW9uIFBhY2thZ2VzIChpbnRlcm5hbCki
LCAibmFtZSI6ICJDdXN0b21pemF0aW9uIFBhY2thZ2VzIChpbnRlcm5hbCkiLCAiZW5hYmxlZCI6
IGZhbHNlLCAic3lzdGVtIjogZmFsc2UsICJwYXJlbnRfaWQiOiBudWxsLCAiaGlkZGVuIjogZmFs
c2UsICJpZCI6IDB9XSwgImluZHVzdHJpZXMiOiBudWxsLCAibGF5b3V0cyI6IFtdLCAibG9jYWxl
IjogbnVsbCwgIm1lc3NhZ2VfZGVzdGluYXRpb25zIjogW3siYXBpX2tleXMiOiBbXSwgImRlc3Rp
bmF0aW9uX3R5cGUiOiAwLCAiZXhwZWN0X2FjayI6IHRydWUsICJleHBvcnRfa2V5IjogImZuX2lw
aW5mbyIsICJuYW1lIjogIklwSW5mbyBEZXN0aW5hdGlvbiIsICJwcm9ncmFtbWF0aWNfbmFtZSI6
ICJmbl9pcGluZm8iLCAidGFncyI6IFtdLCAidXNlcnMiOiBbImFAZXhhbXBsZS5jb20iXSwgInV1
aWQiOiAiYjZhZDNjZDgtZWMwZC00ZGRmLThmODUtYTBkY2RlNGY2ZDg5In1dLCAibm90aWZpY2F0
aW9ucyI6IG51bGwsICJvdmVycmlkZXMiOiBbXSwgInBoYXNlcyI6IFtdLCAicmVndWxhdG9ycyI6
IG51bGwsICJyb2xlcyI6IFtdLCAic2NyaXB0cyI6IFtdLCAic2VydmVyX3ZlcnNpb24iOiB7ImJ1
aWxkX251bWJlciI6IDMyLCAibWFqb3IiOiAzNSwgIm1pbm9yIjogMiwgInZlcnNpb24iOiAiMzUu
Mi4zMiJ9LCAidGFncyI6IFtdLCAidGFza19vcmRlciI6IFtdLCAidGltZWZyYW1lcyI6IG51bGws
ICJ0eXBlcyI6IFtdLCAid29ya2Zsb3dzIjogW3siYWN0aW9ucyI6IFtdLCAiY29udGVudCI6IHsi
dmVyc2lvbiI6IDEsICJ3b3JrZmxvd19pZCI6ICJleGFtcGxlX3F1ZXJ5X2lwX2FydGlmYWN0X3dp
dGhfaXBpbmZvIiwgInhtbCI6ICI8P3htbCB2ZXJzaW9uPVwiMS4wXCIgZW5jb2Rpbmc9XCJVVEYt
OFwiPz48ZGVmaW5pdGlvbnMgeG1sbnM9XCJodHRwOi8vd3d3Lm9tZy5vcmcvc3BlYy9CUE1OLzIw
MTAwNTI0L01PREVMXCIgeG1sbnM6YnBtbmRpPVwiaHR0cDovL3d3dy5vbWcub3JnL3NwZWMvQlBN
Ti8yMDEwMDUyNC9ESVwiIHhtbG5zOm9tZ2RjPVwiaHR0cDovL3d3dy5vbWcub3JnL3NwZWMvREQv
MjAxMDA1MjQvRENcIiB4bWxuczpvbWdkaT1cImh0dHA6Ly93d3cub21nLm9yZy9zcGVjL0RELzIw
MTAwNTI0L0RJXCIgeG1sbnM6cmVzaWxpZW50PVwiaHR0cDovL3Jlc2lsaWVudC5pYm0uY29tL2Jw
bW5cIiB4bWxuczp4c2Q9XCJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYVwiIHhtbG5z
OnhzaT1cImh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlXCIgdGFyZ2V0
TmFtZXNwYWNlPVwiaHR0cDovL3d3dy5jYW11bmRhLm9yZy90ZXN0XCI+PHByb2Nlc3MgaWQ9XCJl
eGFtcGxlX3F1ZXJ5X2lwX2FydGlmYWN0X3dpdGhfaXBpbmZvXCIgaXNFeGVjdXRhYmxlPVwidHJ1
ZVwiIG5hbWU9XCJFeGFtcGxlOiBRdWVyeSBJUCBBcnRpZmFjdCBXaXRoIElwSW5mb1wiPjxkb2N1
bWVudGF0aW9uPjwhW0NEQVRBW0FuIGV4YW1wbGUgd29ya2Zsb3cgd2hpY2ggaXMgaW50ZW5kZWQg
dG8gYmUgcmFuIG9uIGFuIGFydGlmYWN0IG9mIHR5cGUgSVAgQWRkcmVzcy4gVGFrZXMgdGhlIElQ
IGlucHV0IGFuZCBzdWJtaXRzIGEgcXVlcnkgdG8gdGhlIElQSW5mbyBSRVNUIEFQSSBpbiBhbiBh
dHRlbXB0IHRvIHJldHVybiBlbnJpY2htZW50IGluZm8gZm9yIHRoZSBJUCBhZGRyZXNzLlxuUmVz
dWx0cyBhcmUgc2F2ZWQgYXMgYSByaWNoIHRleHQgbm90ZV1dPjwvZG9jdW1lbnRhdGlvbj48c3Rh
cnRFdmVudCBpZD1cIlN0YXJ0RXZlbnRfMTU1YXN4bVwiPjxvdXRnb2luZz5TZXF1ZW5jZUZsb3df
MGhza3NibDwvb3V0Z29pbmc+PC9zdGFydEV2ZW50PjxzZXJ2aWNlVGFzayBpZD1cIlNlcnZpY2VU
YXNrXzFnamRvemRcIiBuYW1lPVwiSXBJbmZvOiBRdWVyeSBJUCBBZGRyZXNzXCIgcmVzaWxpZW50
OnR5cGU9XCJmdW5jdGlvblwiPjxleHRlbnNpb25FbGVtZW50cz48cmVzaWxpZW50OmZ1bmN0aW9u
IHV1aWQ9XCJmMTJkNWIxYS00NTdjLTQzOWEtOTc5YS0wOGU3NDFmNWJmZTlcIj57XCJpbnB1dHNc
Ijp7fSxcInBvc3RfcHJvY2Vzc2luZ19zY3JpcHRcIjpcIlxcXCJcXFwiXFxcIlxcbkV4YW1wbGUg
b3V0cHV0IGZyb20gSVAgSW5mbyBcXG5cXG57XFxuJ3N1Y2Nlc3MnOiBUcnVlLCBcXG4naW5wdXRz
JzogXFxuICAgIHsnaXBpbmZvX3F1ZXJ5X2lwJzogJzguOC44LjgnfSwgXFxuJ3F1ZXJ5X3Jlc3Vs
dCc6IFxcbiAgICB7J2lwJzogJzguOC44LjgnLCBcXG4gICAgJ2hvc3RuYW1lJzogXFxuICAgICdn
b29nbGUtcHVibGljLWRucy1hLmdvb2dsZS5jb20nLCBcXG4gICAgJ2NpdHknOiAnTW91bnRhaW4g
VmlldycsIFxcbiAgICAncmVnaW9uJzogJ0NhbGlmb3JuaWEnLCBcXG4gICAgJ2NvdW50cnknOiAn
VVMnLCBcXG4gICAgJ2xvYyc6ICczNy4zODYwLC0xMjIuMDg0MCcsIFxcbiAgICAncG9zdGFsJzog
Jzk0MDM1JywgXFxuICAgICdwaG9uZSc6ICc2NTAnLCBcXG4gICAgJ29yZyc6ICdBUzE1MTY5IEdv
b2dsZSBMTEMnLCBcXG4gICAgJ2NvdW50cnlfbmFtZSc6ICdVbml0ZWQgU3RhdGVzJywgXFxuICAg
ICdsYXRpdHVkZSc6ICczNy4zODYwJywgXFxuICAgICdsb25naXR1ZGUnOiAnLTEyMi4wODQwJ319
XFxuXFxcIlxcXCJcXFwiXFxuXFxuaWYgcmVzdWx0cy5xdWVyeV9yZXN1bHQgIT0gTm9uZTpcXG4g
IG5vdGVUZXh0ID0gXFxcIlxcXCJcXFwiSVAgSW5mbyBBbmFseXNpcyByYW4gYWdhaW5zdCBpbnB1
dCAmbHQ7YiZndDt7MH0mbHQ7L2ImZ3Q7ICZsdDticiZndDsmbHQ7YnImZ3Q7IEhvc3RuYW1lIDog
Jmx0O2ImZ3Q7ezF9Jmx0Oy9iJmd0OyAmbHQ7YnImZ3Q7IENvdW50cnkgJmx0O2ImZ3Q7ezJ9Jmx0
Oy9iJmd0OyAmbHQ7YnImZ3Q7IEdlb0xvY2F0aW9uIDombHQ7YiZndDt7M30mbHQ7L2ImZ3Q7XFxc
IlxcXCJcXFwiLmZvcm1hdChyZXN1bHRzLmlucHV0c1tcXFwiaXBpbmZvX3F1ZXJ5X2lwXFxcIl0s
IHJlc3VsdHMucXVlcnlfcmVzdWx0Wydob3N0bmFtZSddLCByZXN1bHRzLnF1ZXJ5X3Jlc3VsdFsn
Y291bnRyeSddLCByZXN1bHRzLnF1ZXJ5X3Jlc3VsdFsnbG9jJ10pXFxuICBpbmNpZGVudC5hZGRO
b3RlKGhlbHBlci5jcmVhdGVSaWNoVGV4dChub3RlVGV4dCkpXCIsXCJwcmVfcHJvY2Vzc2luZ19z
Y3JpcHRcIjpcImlucHV0cy5pcGluZm9fcXVlcnlfaXAgPSBhcnRpZmFjdC52YWx1ZVxcblxcblwi
fTwvcmVzaWxpZW50OmZ1bmN0aW9uPjwvZXh0ZW5zaW9uRWxlbWVudHM+PGluY29taW5nPlNlcXVl
bmNlRmxvd18waHNrc2JsPC9pbmNvbWluZz48b3V0Z29pbmc+U2VxdWVuY2VGbG93XzBldXQ0d2k8
L291dGdvaW5nPjwvc2VydmljZVRhc2s+PGVuZEV2ZW50IGlkPVwiRW5kRXZlbnRfMDVhdGFqelwi
PjxpbmNvbWluZz5TZXF1ZW5jZUZsb3dfMGV1dDR3aTwvaW5jb21pbmc+PC9lbmRFdmVudD48c2Vx
dWVuY2VGbG93IGlkPVwiU2VxdWVuY2VGbG93XzBldXQ0d2lcIiBzb3VyY2VSZWY9XCJTZXJ2aWNl
VGFza18xZ2pkb3pkXCIgdGFyZ2V0UmVmPVwiRW5kRXZlbnRfMDVhdGFqelwiLz48c2VxdWVuY2VG
bG93IGlkPVwiU2VxdWVuY2VGbG93XzBoc2tzYmxcIiBzb3VyY2VSZWY9XCJTdGFydEV2ZW50XzE1
NWFzeG1cIiB0YXJnZXRSZWY9XCJTZXJ2aWNlVGFza18xZ2pkb3pkXCIvPjx0ZXh0QW5ub3RhdGlv
biBpZD1cIlRleHRBbm5vdGF0aW9uXzFreHhpeXRcIj48dGV4dD5TdGFydCB5b3VyIHdvcmtmbG93
IGhlcmU8L3RleHQ+PC90ZXh0QW5ub3RhdGlvbj48YXNzb2NpYXRpb24gaWQ9XCJBc3NvY2lhdGlv
bl8xc2V1ajQ4XCIgc291cmNlUmVmPVwiU3RhcnRFdmVudF8xNTVhc3htXCIgdGFyZ2V0UmVmPVwi
VGV4dEFubm90YXRpb25fMWt4eGl5dFwiLz48dGV4dEFubm90YXRpb24gaWQ9XCJUZXh0QW5ub3Rh
dGlvbl8xcWRpZTBuXCI+PHRleHQ+VGFrZXMgYW4gSVAgQWRkcmVzcyBhcnRpZmFjdHMgdmFsdWUg
YXMgaXRzIG9ubHkgaW5wdXQ8L3RleHQ+PC90ZXh0QW5ub3RhdGlvbj48YXNzb2NpYXRpb24gaWQ9
XCJBc3NvY2lhdGlvbl8wcGszZW9xXCIgc291cmNlUmVmPVwiU2VydmljZVRhc2tfMWdqZG96ZFwi
IHRhcmdldFJlZj1cIlRleHRBbm5vdGF0aW9uXzFxZGllMG5cIi8+PHRleHRBbm5vdGF0aW9uIGlk
PVwiVGV4dEFubm90YXRpb25fMGtydGhjdFwiPjx0ZXh0Pk91dHB1dHMgZW5yaWNobWVudCBpbmZv
cm1hdGlvbiBmb3IgdGhlIGdpdmVuIElQPC90ZXh0PjwvdGV4dEFubm90YXRpb24+PGFzc29jaWF0
aW9uIGlkPVwiQXNzb2NpYXRpb25fMDVmM2VyMVwiIHNvdXJjZVJlZj1cIlNlcnZpY2VUYXNrXzFn
amRvemRcIiB0YXJnZXRSZWY9XCJUZXh0QW5ub3RhdGlvbl8wa3J0aGN0XCIvPjwvcHJvY2Vzcz48
YnBtbmRpOkJQTU5EaWFncmFtIGlkPVwiQlBNTkRpYWdyYW1fMVwiPjxicG1uZGk6QlBNTlBsYW5l
IGJwbW5FbGVtZW50PVwidW5kZWZpbmVkXCIgaWQ9XCJCUE1OUGxhbmVfMVwiPjxicG1uZGk6QlBN
TlNoYXBlIGJwbW5FbGVtZW50PVwiU3RhcnRFdmVudF8xNTVhc3htXCIgaWQ9XCJTdGFydEV2ZW50
XzE1NWFzeG1fZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1cIjM2XCIgd2lkdGg9XCIzNlwiIHg9
XCIxNjJcIiB5PVwiMTg4XCIvPjxicG1uZGk6QlBNTkxhYmVsPjxvbWdkYzpCb3VuZHMgaGVpZ2h0
PVwiMFwiIHdpZHRoPVwiOTBcIiB4PVwiMTU3XCIgeT1cIjIyM1wiLz48L2JwbW5kaTpCUE1OTGFi
ZWw+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTlNoYXBlIGJwbW5FbGVtZW50PVwiVGV4
dEFubm90YXRpb25fMWt4eGl5dFwiIGlkPVwiVGV4dEFubm90YXRpb25fMWt4eGl5dF9kaVwiPjxv
bWdkYzpCb3VuZHMgaGVpZ2h0PVwiMzBcIiB3aWR0aD1cIjEwMFwiIHg9XCI5OVwiIHk9XCIyNTRc
Ii8+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTkVkZ2UgYnBtbkVsZW1lbnQ9XCJBc3Nv
Y2lhdGlvbl8xc2V1ajQ4XCIgaWQ9XCJBc3NvY2lhdGlvbl8xc2V1ajQ4X2RpXCI+PG9tZ2RpOndh
eXBvaW50IHg9XCIxNjlcIiB4c2k6dHlwZT1cIm9tZ2RjOlBvaW50XCIgeT1cIjIyMFwiLz48b21n
ZGk6d2F5cG9pbnQgeD1cIjE1M1wiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMjU0XCIv
PjwvYnBtbmRpOkJQTU5FZGdlPjxicG1uZGk6QlBNTlNoYXBlIGJwbW5FbGVtZW50PVwiU2Vydmlj
ZVRhc2tfMWdqZG96ZFwiIGlkPVwiU2VydmljZVRhc2tfMWdqZG96ZF9kaVwiPjxvbWdkYzpCb3Vu
ZHMgaGVpZ2h0PVwiODBcIiB3aWR0aD1cIjEwMFwiIHg9XCIzODBcIiB5PVwiMTY2XCIvPjwvYnBt
bmRpOkJQTU5TaGFwZT48YnBtbmRpOkJQTU5TaGFwZSBicG1uRWxlbWVudD1cIkVuZEV2ZW50XzA1
YXRhanpcIiBpZD1cIkVuZEV2ZW50XzA1YXRhanpfZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1c
IjM2XCIgd2lkdGg9XCIzNlwiIHg9XCI2NzFcIiB5PVwiMTg4XCIvPjxicG1uZGk6QlBNTkxhYmVs
PjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiMTNcIiB3aWR0aD1cIjBcIiB4PVwiNjg5XCIgeT1cIjIy
N1wiLz48L2JwbW5kaTpCUE1OTGFiZWw+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTkVk
Z2UgYnBtbkVsZW1lbnQ9XCJTZXF1ZW5jZUZsb3dfMGV1dDR3aVwiIGlkPVwiU2VxdWVuY2VGbG93
XzBldXQ0d2lfZGlcIj48b21nZGk6d2F5cG9pbnQgeD1cIjQ4MFwiIHhzaTp0eXBlPVwib21nZGM6
UG9pbnRcIiB5PVwiMjA2XCIvPjxvbWdkaTp3YXlwb2ludCB4PVwiNjcxXCIgeHNpOnR5cGU9XCJv
bWdkYzpQb2ludFwiIHk9XCIyMDZcIi8+PGJwbW5kaTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBo
ZWlnaHQ9XCIxM1wiIHdpZHRoPVwiMFwiIHg9XCI1NzUuNVwiIHk9XCIxODQuNVwiLz48L2JwbW5k
aTpCUE1OTGFiZWw+PC9icG1uZGk6QlBNTkVkZ2U+PGJwbW5kaTpCUE1ORWRnZSBicG1uRWxlbWVu
dD1cIlNlcXVlbmNlRmxvd18waHNrc2JsXCIgaWQ9XCJTZXF1ZW5jZUZsb3dfMGhza3NibF9kaVwi
PjxvbWdkaTp3YXlwb2ludCB4PVwiMTk4XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIy
MDZcIi8+PG9tZ2RpOndheXBvaW50IHg9XCIzODBcIiB4c2k6dHlwZT1cIm9tZ2RjOlBvaW50XCIg
eT1cIjIwNlwiLz48YnBtbmRpOkJQTU5MYWJlbD48b21nZGM6Qm91bmRzIGhlaWdodD1cIjEzXCIg
d2lkdGg9XCIwXCIgeD1cIjI4OVwiIHk9XCIxODQuNVwiLz48L2JwbW5kaTpCUE1OTGFiZWw+PC9i
cG1uZGk6QlBNTkVkZ2U+PGJwbW5kaTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJUZXh0QW5ub3Rh
dGlvbl8xcWRpZTBuXCIgaWQ9XCJUZXh0QW5ub3RhdGlvbl8xcWRpZTBuX2RpXCI+PG9tZ2RjOkJv
dW5kcyBoZWlnaHQ9XCI3NlwiIHdpZHRoPVwiMTU2XCIgeD1cIjIxN1wiIHk9XCI3M1wiLz48L2Jw
bW5kaTpCUE1OU2hhcGU+PGJwbW5kaTpCUE1ORWRnZSBicG1uRWxlbWVudD1cIkFzc29jaWF0aW9u
XzBwazNlb3FcIiBpZD1cIkFzc29jaWF0aW9uXzBwazNlb3FfZGlcIj48b21nZGk6d2F5cG9pbnQg
eD1cIjM4M1wiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMTczXCIvPjxvbWdkaTp3YXlw
b2ludCB4PVwiMzQ5XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIxNDlcIi8+PC9icG1u
ZGk6QlBNTkVkZ2U+PGJwbW5kaTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJUZXh0QW5ub3RhdGlv
bl8wa3J0aGN0XCIgaWQ9XCJUZXh0QW5ub3RhdGlvbl8wa3J0aGN0X2RpXCI+PG9tZ2RjOkJvdW5k
cyBoZWlnaHQ9XCI3MVwiIHdpZHRoPVwiMTQwXCIgeD1cIjUyM1wiIHk9XCI3NVwiLz48L2JwbW5k
aTpCUE1OU2hhcGU+PGJwbW5kaTpCUE1ORWRnZSBicG1uRWxlbWVudD1cIkFzc29jaWF0aW9uXzA1
ZjNlcjFcIiBpZD1cIkFzc29jaWF0aW9uXzA1ZjNlcjFfZGlcIj48b21nZGk6d2F5cG9pbnQgeD1c
IjQ4MFwiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMTc3XCIvPjxvbWdkaTp3YXlwb2lu
dCB4PVwiNTMzXCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIxNDZcIi8+PC9icG1uZGk6
QlBNTkVkZ2U+PC9icG1uZGk6QlBNTlBsYW5lPjwvYnBtbmRpOkJQTU5EaWFncmFtPjwvZGVmaW5p
dGlvbnM+In0sICJjb250ZW50X3ZlcnNpb24iOiAxLCAiY3JlYXRvcl9pZCI6ICJhQGV4YW1wbGUu
Y29tIiwgImRlc2NyaXB0aW9uIjogIkFuIGV4YW1wbGUgd29ya2Zsb3cgd2hpY2ggaXMgaW50ZW5k
ZWQgdG8gYmUgcmFuIG9uIGFuIGFydGlmYWN0IG9mIHR5cGUgSVAgQWRkcmVzcy4gVGFrZXMgdGhl
IElQIGlucHV0IGFuZCBzdWJtaXRzIGEgcXVlcnkgdG8gdGhlIElQSW5mbyBSRVNUIEFQSSBpbiBh
biBhdHRlbXB0IHRvIHJldHVybiBlbnJpY2htZW50IGluZm8gZm9yIHRoZSBJUCBhZGRyZXNzLlxu
UmVzdWx0cyBhcmUgc2F2ZWQgYXMgYSByaWNoIHRleHQgbm90ZSIsICJleHBvcnRfa2V5IjogImV4
YW1wbGVfcXVlcnlfaXBfYXJ0aWZhY3Rfd2l0aF9pcGluZm8iLCAibGFzdF9tb2RpZmllZF9ieSI6
ICJhQGV4YW1wbGUuY29tIiwgImxhc3RfbW9kaWZpZWRfdGltZSI6IDE1OTI0MDQ2MTg0NDYsICJu
YW1lIjogIkV4YW1wbGU6IFF1ZXJ5IElQIEFydGlmYWN0IFdpdGggSXBJbmZvIiwgIm9iamVjdF90
eXBlIjogImFydGlmYWN0IiwgInByb2dyYW1tYXRpY19uYW1lIjogImV4YW1wbGVfcXVlcnlfaXBf
YXJ0aWZhY3Rfd2l0aF9pcGluZm8iLCAidGFncyI6IFtdLCAidXVpZCI6ICI5M2QxYzkwOS00ZmFl
LTRmM2UtOWY5OS1mZjA1OGI5N2NlYTYiLCAid29ya2Zsb3dfaWQiOiA2Mn1dLCAid29ya3NwYWNl
cyI6IFtdfQ==
""")
