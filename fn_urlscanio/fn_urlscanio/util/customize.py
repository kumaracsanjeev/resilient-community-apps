# -*- coding: utf-8 -*-

"""Generate the Resilient customizations required for fn_urlscanio"""

from __future__ import print_function
from resilient_circuits.util import ImportDefinition

def codegen_reload_data():
    """Parameters to codegen used to generate the fn_urlscanio package"""
    reload_params = {"package": u"fn_urlscanio",
                    "incident_fields": [], 
                    "action_fields": [], 
                    "function_params": [u"incident_id", u"urlscanio_public", u"urlscanio_referer", u"urlscanio_url", u"urlscanio_useragent"], 
                    "datatables": [], 
                    "message_destinations": [u"urlscanio"], 
                    "functions": [u"urlscanio"], 
                    "phases": [], 
                    "automatic_tasks": [], 
                    "scripts": [], 
                    "workflows": [u"example_urlscanio"], 
                    "actions": [u"Example: urlscan.io"], 
                    "incident_artifact_types": [] 
                    }
    return reload_params


def customization_data(client=None):
    """Produce any customization definitions (types, fields, message destinations, etc)
       that should be installed by `resilient-circuits customize`
    """

    # This import data contains:
    #   Function inputs:
    #     incident_id
    #     urlscanio_public
    #     urlscanio_referer
    #     urlscanio_url
    #     urlscanio_useragent
    #   Message Destinations:
    #     urlscanio
    #   Functions:
    #     urlscanio
    #   Workflows:
    #     example_urlscanio
    #   Rules:
    #     Example: urlscan.io


    yield ImportDefinition(u"""
eyJncm91cHMiOiBudWxsLCAibG9jYWxlIjogbnVsbCwgIndvcmtmbG93cyI6IFt7ImRlc2NyaXB0
aW9uIjogIiIsICJ3b3JrZmxvd19pZCI6IDUsICJ0YWdzIjogW10sICJvYmplY3RfdHlwZSI6ICJh
cnRpZmFjdCIsICJleHBvcnRfa2V5IjogImV4YW1wbGVfdXJsc2NhbmlvIiwgInV1aWQiOiAiMjFi
ODQxYmItZjNmMy00MWI3LTkyYTEtYzQ0ZjAyN2QxNGExIiwgImFjdGlvbnMiOiBbXSwgImNvbnRl
bnQiOiB7InhtbCI6ICI8P3htbCB2ZXJzaW9uPVwiMS4wXCIgZW5jb2Rpbmc9XCJVVEYtOFwiPz48
ZGVmaW5pdGlvbnMgeG1sbnM9XCJodHRwOi8vd3d3Lm9tZy5vcmcvc3BlYy9CUE1OLzIwMTAwNTI0
L01PREVMXCIgeG1sbnM6YnBtbmRpPVwiaHR0cDovL3d3dy5vbWcub3JnL3NwZWMvQlBNTi8yMDEw
MDUyNC9ESVwiIHhtbG5zOm9tZ2RjPVwiaHR0cDovL3d3dy5vbWcub3JnL3NwZWMvREQvMjAxMDA1
MjQvRENcIiB4bWxuczpvbWdkaT1cImh0dHA6Ly93d3cub21nLm9yZy9zcGVjL0RELzIwMTAwNTI0
L0RJXCIgeG1sbnM6cmVzaWxpZW50PVwiaHR0cDovL3Jlc2lsaWVudC5pYm0uY29tL2JwbW5cIiB4
bWxuczp4c2Q9XCJodHRwOi8vd3d3LnczLm9yZy8yMDAxL1hNTFNjaGVtYVwiIHhtbG5zOnhzaT1c
Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlXCIgdGFyZ2V0TmFtZXNw
YWNlPVwiaHR0cDovL3d3dy5jYW11bmRhLm9yZy90ZXN0XCI+PHByb2Nlc3MgaWQ9XCJleGFtcGxl
X3VybHNjYW5pb1wiIGlzRXhlY3V0YWJsZT1cInRydWVcIiBuYW1lPVwiRXhhbXBsZTogdXJsc2Nh
bi5pb1wiPjxkb2N1bWVudGF0aW9uLz48c3RhcnRFdmVudCBpZD1cIlN0YXJ0RXZlbnRfMTU1YXN4
bVwiPjxvdXRnb2luZz5TZXF1ZW5jZUZsb3dfMTdkbzQ2dDwvb3V0Z29pbmc+PC9zdGFydEV2ZW50
PjxzZXJ2aWNlVGFzayBpZD1cIlNlcnZpY2VUYXNrXzBjM2VzdW5cIiBuYW1lPVwiU2NhbiB3aXRo
IHVybHNjYW4uaW9cIiByZXNpbGllbnQ6dHlwZT1cImZ1bmN0aW9uXCI+PGV4dGVuc2lvbkVsZW1l
bnRzPjxyZXNpbGllbnQ6ZnVuY3Rpb24gdXVpZD1cImQxOWMxZjAwLWI0ZjEtNDQ4MC1iOGEzLTdi
ZGQxOTE0MzA0MVwiPntcImlucHV0c1wiOntcImVlOTI2M2MxLTQzMmEtNDFhOC04YmJkLTY5MTdk
MzVmYjNhY1wiOntcImlucHV0X3R5cGVcIjpcInN0YXRpY1wiLFwic3RhdGljX2lucHV0XCI6e1wi
Ym9vbGVhbl92YWx1ZVwiOmZhbHNlLFwibXVsdGlzZWxlY3RfdmFsdWVcIjpbXX19fSxcInBvc3Rf
cHJvY2Vzc2luZ19zY3JpcHRcIjpcIiMgVGhlIHJlc3VsdCBjb250YWlucyxcXG4jIHtcXG4jICAg
XFxcInBuZ191cmxcXFwiOiB0aGUgVVJMIG9mIHRoZSBzY3JlZW5zaG90IGltYWdlXFxuIyAgIFxc
XCJwbmdfYmFzZTY0Y29udGVudFxcXCI6IHRoZSBiYXNlNjQtZW5jb2RlZCBzY3JlZW5zaG90IChQ
TkcpXFxuIyAgIFxcXCJyZXBvcnRfdXJsXFxcIjogdGhlIFVSTCBvZiB0aGUgSlNPTiByZXBvcnRf
dXJsXFxuIyAgIFxcXCJyZXBvcnRcXFwiOiB0aGUgSlNPTiByZXBvcnQsIHdoaWNoIHdpbGwgY29u
dGFpbiBsb3RzIG9mIGRldGFpbCBvZiB0aGUgcGFnZSBhbmFseXNpcyAoc2VlIHVybHNjYW4uaW8g
Zm9yIGRldGFpbHMpLlxcbiMgfVxcbiNcXG4jIEluIHRoaXMgY2FzZSwgdGhlIGZpbGUgaXMgYWxy
ZWFkeSBhdHRhY2hlZCB0byB0aGUgaW5jaWRlbnQuICBOb3RoaW5nIHRvIGRvIGhlcmUuXCIsXCJw
cmVfcHJvY2Vzc2luZ19zY3JpcHRcIjpcIiMgVGhpcyBpcyBhbiBhcnRpZmFjdCB3b3JrZmxvdzsg
XFxuIyBUaGUgVVJMIHRvIHNjYW4gaXMgdGhlIGFydGlmYWN0IHZhbHVlXFxuaW5wdXRzLnVybHNj
YW5pb191cmwgPSBhcnRpZmFjdC52YWx1ZVxcblxcbiMgU2V0IHRoZSBpbmNpZGVudCBpZFxcbmlu
cHV0cy5pbmNpZGVudF9pZCA9IGluY2lkZW50LmlkXCIsXCJyZXN1bHRfbmFtZVwiOlwidXJsc2Nh
bmlvXCJ9PC9yZXNpbGllbnQ6ZnVuY3Rpb24+PC9leHRlbnNpb25FbGVtZW50cz48aW5jb21pbmc+
U2VxdWVuY2VGbG93XzE3ZG80NnQ8L2luY29taW5nPjxvdXRnb2luZz5TZXF1ZW5jZUZsb3dfMWRh
ZWw3ODwvb3V0Z29pbmc+PC9zZXJ2aWNlVGFzaz48c2VxdWVuY2VGbG93IGlkPVwiU2VxdWVuY2VG
bG93XzE3ZG80NnRcIiBzb3VyY2VSZWY9XCJTdGFydEV2ZW50XzE1NWFzeG1cIiB0YXJnZXRSZWY9
XCJTZXJ2aWNlVGFza18wYzNlc3VuXCIvPjxlbmRFdmVudCBpZD1cIkVuZEV2ZW50XzA4dDhtNDRc
Ij48aW5jb21pbmc+U2VxdWVuY2VGbG93XzFkYWVsNzg8L2luY29taW5nPjwvZW5kRXZlbnQ+PHNl
cXVlbmNlRmxvdyBpZD1cIlNlcXVlbmNlRmxvd18xZGFlbDc4XCIgc291cmNlUmVmPVwiU2Vydmlj
ZVRhc2tfMGMzZXN1blwiIHRhcmdldFJlZj1cIkVuZEV2ZW50XzA4dDhtNDRcIi8+PHRleHRBbm5v
dGF0aW9uIGlkPVwiVGV4dEFubm90YXRpb25fMWt4eGl5dFwiPjx0ZXh0PlJ1biBmb3IgYSBVUkwg
YXJ0aWZhY3Q8L3RleHQ+PC90ZXh0QW5ub3RhdGlvbj48YXNzb2NpYXRpb24gaWQ9XCJBc3NvY2lh
dGlvbl8xc2V1ajQ4XCIgc291cmNlUmVmPVwiU3RhcnRFdmVudF8xNTVhc3htXCIgdGFyZ2V0UmVm
PVwiVGV4dEFubm90YXRpb25fMWt4eGl5dFwiLz48dGV4dEFubm90YXRpb24gaWQ9XCJUZXh0QW5u
b3RhdGlvbl8xaThoOXNoXCI+PHRleHQ+U2NhbiB0aGUgVVJMPC90ZXh0PjwvdGV4dEFubm90YXRp
b24+PGFzc29jaWF0aW9uIGlkPVwiQXNzb2NpYXRpb25fMGRrYXRvclwiIHNvdXJjZVJlZj1cIlNl
cnZpY2VUYXNrXzBjM2VzdW5cIiB0YXJnZXRSZWY9XCJUZXh0QW5ub3RhdGlvbl8xaThoOXNoXCIv
PjwvcHJvY2Vzcz48YnBtbmRpOkJQTU5EaWFncmFtIGlkPVwiQlBNTkRpYWdyYW1fMVwiPjxicG1u
ZGk6QlBNTlBsYW5lIGJwbW5FbGVtZW50PVwidW5kZWZpbmVkXCIgaWQ9XCJCUE1OUGxhbmVfMVwi
PjxicG1uZGk6QlBNTlNoYXBlIGJwbW5FbGVtZW50PVwiU3RhcnRFdmVudF8xNTVhc3htXCIgaWQ9
XCJTdGFydEV2ZW50XzE1NWFzeG1fZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1cIjM2XCIgd2lk
dGg9XCIzNlwiIHg9XCIxNjJcIiB5PVwiMTg4XCIvPjxicG1uZGk6QlBNTkxhYmVsPjxvbWdkYzpC
b3VuZHMgaGVpZ2h0PVwiMFwiIHdpZHRoPVwiOTBcIiB4PVwiMTU3XCIgeT1cIjIyM1wiLz48L2Jw
bW5kaTpCUE1OTGFiZWw+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTlNoYXBlIGJwbW5F
bGVtZW50PVwiVGV4dEFubm90YXRpb25fMWt4eGl5dFwiIGlkPVwiVGV4dEFubm90YXRpb25fMWt4
eGl5dF9kaVwiPjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiMzVcIiB3aWR0aD1cIjEwMFwiIHg9XCIx
NzRcIiB5PVwiNjlcIi8+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTkVkZ2UgYnBtbkVs
ZW1lbnQ9XCJBc3NvY2lhdGlvbl8xc2V1ajQ4XCIgaWQ9XCJBc3NvY2lhdGlvbl8xc2V1ajQ4X2Rp
XCI+PG9tZ2RpOndheXBvaW50IHg9XCIxODNcIiB4c2k6dHlwZT1cIm9tZ2RjOlBvaW50XCIgeT1c
IjE4OVwiLz48b21nZGk6d2F5cG9pbnQgeD1cIjIxNVwiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRc
IiB5PVwiMTA0XCIvPjwvYnBtbmRpOkJQTU5FZGdlPjxicG1uZGk6QlBNTlNoYXBlIGJwbW5FbGVt
ZW50PVwiU2VydmljZVRhc2tfMGMzZXN1blwiIGlkPVwiU2VydmljZVRhc2tfMGMzZXN1bl9kaVwi
PjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiODBcIiB3aWR0aD1cIjEwMFwiIHg9XCIyOTdcIiB5PVwi
MTY2XCIvPjwvYnBtbmRpOkJQTU5TaGFwZT48YnBtbmRpOkJQTU5FZGdlIGJwbW5FbGVtZW50PVwi
U2VxdWVuY2VGbG93XzE3ZG80NnRcIiBpZD1cIlNlcXVlbmNlRmxvd18xN2RvNDZ0X2RpXCI+PG9t
Z2RpOndheXBvaW50IHg9XCIxOThcIiB4c2k6dHlwZT1cIm9tZ2RjOlBvaW50XCIgeT1cIjIwNlwi
Lz48b21nZGk6d2F5cG9pbnQgeD1cIjI5N1wiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwi
MjA2XCIvPjxicG1uZGk6QlBNTkxhYmVsPjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiMTNcIiB3aWR0
aD1cIjBcIiB4PVwiMjQ3LjVcIiB5PVwiMTg0XCIvPjwvYnBtbmRpOkJQTU5MYWJlbD48L2JwbW5k
aTpCUE1ORWRnZT48YnBtbmRpOkJQTU5TaGFwZSBicG1uRWxlbWVudD1cIkVuZEV2ZW50XzA4dDht
NDRcIiBpZD1cIkVuZEV2ZW50XzA4dDhtNDRfZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1cIjM2
XCIgd2lkdGg9XCIzNlwiIHg9XCI0NjBcIiB5PVwiMTg4XCIvPjxicG1uZGk6QlBNTkxhYmVsPjxv
bWdkYzpCb3VuZHMgaGVpZ2h0PVwiMTNcIiB3aWR0aD1cIjkwXCIgeD1cIjQzM1wiIHk9XCIyMjdc
Ii8+PC9icG1uZGk6QlBNTkxhYmVsPjwvYnBtbmRpOkJQTU5TaGFwZT48YnBtbmRpOkJQTU5TaGFw
ZSBicG1uRWxlbWVudD1cIlRleHRBbm5vdGF0aW9uXzFpOGg5c2hcIiBpZD1cIlRleHRBbm5vdGF0
aW9uXzFpOGg5c2hfZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1cIjMwXCIgd2lkdGg9XCIxMDBc
IiB4PVwiMzQ4XCIgeT1cIjY5XCIvPjwvYnBtbmRpOkJQTU5TaGFwZT48YnBtbmRpOkJQTU5FZGdl
IGJwbW5FbGVtZW50PVwiQXNzb2NpYXRpb25fMGRrYXRvclwiIGlkPVwiQXNzb2NpYXRpb25fMGRr
YXRvcl9kaVwiPjxvbWdkaTp3YXlwb2ludCB4PVwiMzY0XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2lu
dFwiIHk9XCIxNjZcIi8+PG9tZ2RpOndheXBvaW50IHg9XCIzOTJcIiB4c2k6dHlwZT1cIm9tZ2Rj
OlBvaW50XCIgeT1cIjk5XCIvPjwvYnBtbmRpOkJQTU5FZGdlPjxicG1uZGk6QlBNTkVkZ2UgYnBt
bkVsZW1lbnQ9XCJTZXF1ZW5jZUZsb3dfMWRhZWw3OFwiIGlkPVwiU2VxdWVuY2VGbG93XzFkYWVs
NzhfZGlcIj48b21nZGk6d2F5cG9pbnQgeD1cIjM5N1wiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRc
IiB5PVwiMjA2XCIvPjxvbWdkaTp3YXlwb2ludCB4PVwiNDYwXCIgeHNpOnR5cGU9XCJvbWdkYzpQ
b2ludFwiIHk9XCIyMDZcIi8+PGJwbW5kaTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9
XCIxM1wiIHdpZHRoPVwiMFwiIHg9XCI0MjguNVwiIHk9XCIxODRcIi8+PC9icG1uZGk6QlBNTkxh
YmVsPjwvYnBtbmRpOkJQTU5FZGdlPjwvYnBtbmRpOkJQTU5QbGFuZT48L2JwbW5kaTpCUE1ORGlh
Z3JhbT48L2RlZmluaXRpb25zPiIsICJ3b3JrZmxvd19pZCI6ICJleGFtcGxlX3VybHNjYW5pbyIs
ICJ2ZXJzaW9uIjogNH0sICJjcmVhdG9yX2lkIjogImFAYS5jb20iLCAibGFzdF9tb2RpZmllZF9i
eSI6ICJhQGEuY29tIiwgImxhc3RfbW9kaWZpZWRfdGltZSI6IDE1ODMyNjQxNjY0NzYsICJjb250
ZW50X3ZlcnNpb24iOiA0LCAicHJvZ3JhbW1hdGljX25hbWUiOiAiZXhhbXBsZV91cmxzY2FuaW8i
LCAibmFtZSI6ICJFeGFtcGxlOiB1cmxzY2FuLmlvIn1dLCAiYWN0aW9ucyI6IFt7InRpbWVvdXRf
c2Vjb25kcyI6IDg2NDAwLCAib2JqZWN0X3R5cGUiOiAiYXJ0aWZhY3QiLCAidHlwZSI6IDEsICJu
YW1lIjogIkV4YW1wbGU6IHVybHNjYW4uaW8iLCAidGFncyI6IFtdLCAidmlld19pdGVtcyI6IFtd
LCAiZW5hYmxlZCI6IHRydWUsICJ3b3JrZmxvd3MiOiBbImV4YW1wbGVfdXJsc2NhbmlvIl0sICJs
b2dpY190eXBlIjogImFsbCIsICJleHBvcnRfa2V5IjogIkV4YW1wbGU6IHVybHNjYW4uaW8iLCAi
dXVpZCI6ICJiYmI5MDcyYS0yNjNjLTQzMTYtOGRhMy1kYTg4NWMwNGY4MTQiLCAiYXV0b21hdGlv
bnMiOiBbXSwgImNvbmRpdGlvbnMiOiBbeyJ0eXBlIjogbnVsbCwgImV2YWx1YXRpb25faWQiOiBu
dWxsLCAiZmllbGRfbmFtZSI6ICJhcnRpZmFjdC50eXBlIiwgIm1ldGhvZCI6ICJpbiIsICJ2YWx1
ZSI6IFsiVVJMIiwgIlVSTCBSZWZlcmVyIl19XSwgImlkIjogMTgsICJtZXNzYWdlX2Rlc3RpbmF0
aW9ucyI6IFtdfV0sICJsYXlvdXRzIjogW10sICJleHBvcnRfZm9ybWF0X3ZlcnNpb24iOiAyLCAi
aWQiOiA3LCAiaW5kdXN0cmllcyI6IG51bGwsICJmdW5jdGlvbnMiOiBbeyJkaXNwbGF5X25hbWUi
OiAiU2NhbiB3aXRoIHVybHNjYW4uaW8iLCAiZGVzY3JpcHRpb24iOiB7ImNvbnRlbnQiOiAiQW5h
bHl6ZSBhIFVSTCB3aXRoIHVybHNjYW4uaW8iLCAiZm9ybWF0IjogInRleHQifSwgImNyZWF0b3Ii
OiB7InR5cGUiOiAidXNlciIsICJkaXNwbGF5X25hbWUiOiAiUmVzaWxpZW50IFN5c2FkbWluIiwg
ImlkIjogMywgIm5hbWUiOiAiYUBhLmNvbSJ9LCAidmlld19pdGVtcyI6IFt7InNob3dfaWYiOiBu
dWxsLCAiZmllbGRfdHlwZSI6ICJfX2Z1bmN0aW9uIiwgInNob3dfbGlua19oZWFkZXIiOiBmYWxz
ZSwgImVsZW1lbnQiOiAiZmllbGRfdXVpZCIsICJjb250ZW50IjogImVhZDIxNGMyLTEzZmUtNDNm
Ni1hM2M3LTY3NmE4ODMzOGRiYiIsICJzdGVwX2xhYmVsIjogbnVsbH0sIHsic2hvd19pZiI6IG51
bGwsICJmaWVsZF90eXBlIjogIl9fZnVuY3Rpb24iLCAic2hvd19saW5rX2hlYWRlciI6IGZhbHNl
LCAiZWxlbWVudCI6ICJmaWVsZF91dWlkIiwgImNvbnRlbnQiOiAiNjJmOTVlZTktYTExMi00ZDFh
LWFhNjUtYTZkMGUxZWY3MzQ4IiwgInN0ZXBfbGFiZWwiOiBudWxsfSwgeyJzaG93X2lmIjogbnVs
bCwgImZpZWxkX3R5cGUiOiAiX19mdW5jdGlvbiIsICJzaG93X2xpbmtfaGVhZGVyIjogZmFsc2Us
ICJlbGVtZW50IjogImZpZWxkX3V1aWQiLCAiY29udGVudCI6ICJlZTkyNjNjMS00MzJhLTQxYTgt
OGJiZC02OTE3ZDM1ZmIzYWMiLCAic3RlcF9sYWJlbCI6IG51bGx9LCB7InNob3dfaWYiOiBudWxs
LCAiZmllbGRfdHlwZSI6ICJfX2Z1bmN0aW9uIiwgInNob3dfbGlua19oZWFkZXIiOiBmYWxzZSwg
ImVsZW1lbnQiOiAiZmllbGRfdXVpZCIsICJjb250ZW50IjogIjczODE4NzVjLTdhMzItNDM5ZC04
ZjU1LTc2MjM5YTRjNzJiNyIsICJzdGVwX2xhYmVsIjogbnVsbH0sIHsic2hvd19pZiI6IG51bGws
ICJmaWVsZF90eXBlIjogIl9fZnVuY3Rpb24iLCAic2hvd19saW5rX2hlYWRlciI6IGZhbHNlLCAi
ZWxlbWVudCI6ICJmaWVsZF91dWlkIiwgImNvbnRlbnQiOiAiYTJlYmRiNWItM2Q1YS00MjVjLWEw
YzctZmEzNTkwNGZhNWM0IiwgInN0ZXBfbGFiZWwiOiBudWxsfV0sICJ0YWdzIjogW10sICJleHBv
cnRfa2V5IjogInVybHNjYW5pbyIsICJ1dWlkIjogImQxOWMxZjAwLWI0ZjEtNDQ4MC1iOGEzLTdi
ZGQxOTE0MzA0MSIsICJsYXN0X21vZGlmaWVkX2J5IjogeyJ0eXBlIjogImFwaWtleSIsICJkaXNw
bGF5X25hbWUiOiAiaW50ZWdyYXRpb25zIiwgImlkIjogNCwgIm5hbWUiOiAiZWIyZDFmN2QtNjY1
MS00MTVhLWI0ZmYtYTE0ZmNkMmY4NGY1In0sICJ2ZXJzaW9uIjogNSwgIndvcmtmbG93cyI6IFt7
InByb2dyYW1tYXRpY19uYW1lIjogImV4YW1wbGVfdXJsc2NhbmlvIiwgInRhZ3MiOiBbXSwgIm9i
amVjdF90eXBlIjogImFydGlmYWN0IiwgInV1aWQiOiBudWxsLCAiYWN0aW9ucyI6IFtdLCAibmFt
ZSI6ICJFeGFtcGxlOiB1cmxzY2FuLmlvIiwgIndvcmtmbG93X2lkIjogNSwgImRlc2NyaXB0aW9u
IjogbnVsbH1dLCAibGFzdF9tb2RpZmllZF90aW1lIjogMTU4MzI2MzU5Mzk3OCwgImRlc3RpbmF0
aW9uX2hhbmRsZSI6ICJ1cmxzY2FuaW8iLCAiaWQiOiAxLCAibmFtZSI6ICJ1cmxzY2FuaW8ifV0s
ICJhY3Rpb25fb3JkZXIiOiBbXSwgImdlb3MiOiBudWxsLCAidGFncyI6IFtdLCAidGFza19vcmRl
ciI6IFtdLCAidHlwZXMiOiBbXSwgInRpbWVmcmFtZXMiOiBudWxsLCAid29ya3NwYWNlcyI6IFtd
LCAiaW5ib3VuZF9tYWlsYm94ZXMiOiBudWxsLCAiYXV0b21hdGljX3Rhc2tzIjogW10sICJwaGFz
ZXMiOiBbXSwgIm5vdGlmaWNhdGlvbnMiOiBudWxsLCAicmVndWxhdG9ycyI6IG51bGwsICJpbmNp
ZGVudF90eXBlcyI6IFt7InVwZGF0ZV9kYXRlIjogMTU4MzI2NDE4Njg0NSwgImNyZWF0ZV9kYXRl
IjogMTU4MzI2NDE4Njg0NSwgInV1aWQiOiAiYmZlZWMyZDQtMzc3MC0xMWU4LWFkMzktNGEwMDA0
MDQ0YWEwIiwgImVuYWJsZWQiOiBmYWxzZSwgImRlc2NyaXB0aW9uIjogIkN1c3RvbWl6YXRpb24g
UGFja2FnZXMgKGludGVybmFsKSIsICJleHBvcnRfa2V5IjogIkN1c3RvbWl6YXRpb24gUGFja2Fn
ZXMgKGludGVybmFsKSIsICJzeXN0ZW0iOiBmYWxzZSwgInBhcmVudF9pZCI6IG51bGwsICJoaWRk
ZW4iOiBmYWxzZSwgImlkIjogMCwgIm5hbWUiOiAiQ3VzdG9taXphdGlvbiBQYWNrYWdlcyAoaW50
ZXJuYWwpIn1dLCAic2NyaXB0cyI6IFtdLCAic2VydmVyX3ZlcnNpb24iOiB7Im1ham9yIjogMzUs
ICJ2ZXJzaW9uIjogIjM1LjAuNTM0MyIsICJidWlsZF9udW1iZXIiOiA1MzQzLCAibWlub3IiOiAw
fSwgIm1lc3NhZ2VfZGVzdGluYXRpb25zIjogW3sicHJvZ3JhbW1hdGljX25hbWUiOiAidXJsc2Nh
bmlvIiwgInRhZ3MiOiBbXSwgImV4cG9ydF9rZXkiOiAidXJsc2NhbmlvIiwgInV1aWQiOiAiOWM0
ZTAxNDMtZDg0Yi00ZmQyLWJlNDMtZTUyZWViMWUxZTA4IiwgImV4cGVjdF9hY2siOiB0cnVlLCAi
ZGVzdGluYXRpb25fdHlwZSI6IDAsICJ1c2VycyI6IFtdLCAiYXBpX2tleXMiOiBbImViMmQxZjdk
LTY2NTEtNDE1YS1iNGZmLWExNGZjZDJmODRmNSJdLCAibmFtZSI6ICJ1cmxzY2FuLmlvIn1dLCAi
aW5jaWRlbnRfYXJ0aWZhY3RfdHlwZXMiOiBbXSwgInJvbGVzIjogW10sICJmaWVsZHMiOiBbeyJv
cGVyYXRpb25zIjogW10sICJ0eXBlX2lkIjogMTEsICJvcGVyYXRpb25fcGVybXMiOiB7fSwgInRl
eHQiOiAiaW5jaWRlbnRfaWQiLCAiYmxhbmtfb3B0aW9uIjogZmFsc2UsICJwcmVmaXgiOiBudWxs
LCAiY2hhbmdlYWJsZSI6IHRydWUsICJpZCI6IDE4MCwgInJlYWRfb25seSI6IGZhbHNlLCAidXVp
ZCI6ICJlYWQyMTRjMi0xM2ZlLTQzZjYtYTNjNy02NzZhODgzMzhkYmIiLCAiY2hvc2VuIjogZmFs
c2UsICJpbnB1dF90eXBlIjogIm51bWJlciIsICJ0b29sdGlwIjogInRoZSBpZCBvZiB0aGUgaW5j
aWRlbnQiLCAiaW50ZXJuYWwiOiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGVtcGxhdGVz
IjogW10sICJ0YWdzIjogW10sICJhbGxvd19kZWZhdWx0X3ZhbHVlIjogZmFsc2UsICJleHBvcnRf
a2V5IjogIl9fZnVuY3Rpb24vaW5jaWRlbnRfaWQiLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxz
ZSwgInBsYWNlaG9sZGVyIjogIiIsICJuYW1lIjogImluY2lkZW50X2lkIiwgImlzX3RyYWNrZWQi
OiBmYWxzZSwgImRlcHJlY2F0ZWQiOiBmYWxzZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgInJlcXVp
cmVkIjogImFsd2F5cyIsICJ2YWx1ZXMiOiBbXSwgImRlZmF1bHRfY2hvc2VuX2J5X3NlcnZlciI6
IGZhbHNlfSwgeyJvcGVyYXRpb25zIjogW10sICJ0eXBlX2lkIjogMTEsICJvcGVyYXRpb25fcGVy
bXMiOiB7fSwgInRleHQiOiAidXJsc2NhbmlvX3VybCIsICJibGFua19vcHRpb24iOiBmYWxzZSwg
InByZWZpeCI6IG51bGwsICJjaGFuZ2VhYmxlIjogdHJ1ZSwgImlkIjogMTg0LCAicmVhZF9vbmx5
IjogZmFsc2UsICJ1dWlkIjogIjYyZjk1ZWU5LWExMTItNGQxYS1hYTY1LWE2ZDBlMWVmNzM0OCIs
ICJjaG9zZW4iOiBmYWxzZSwgImlucHV0X3R5cGUiOiAidGV4dCIsICJ0b29sdGlwIjogIiIsICJp
bnRlcm5hbCI6IGZhbHNlLCAicmljaF90ZXh0IjogZmFsc2UsICJ0ZW1wbGF0ZXMiOiBbXSwgInRh
Z3MiOiBbXSwgImFsbG93X2RlZmF1bHRfdmFsdWUiOiBmYWxzZSwgImV4cG9ydF9rZXkiOiAiX19m
dW5jdGlvbi91cmxzY2FuaW9fdXJsIiwgImhpZGVfbm90aWZpY2F0aW9uIjogZmFsc2UsICJwbGFj
ZWhvbGRlciI6ICIiLCAibmFtZSI6ICJ1cmxzY2FuaW9fdXJsIiwgImlzX3RyYWNrZWQiOiBmYWxz
ZSwgImRlcHJlY2F0ZWQiOiBmYWxzZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgInZhbHVlcyI6IFtd
LCAiZGVmYXVsdF9jaG9zZW5fYnlfc2VydmVyIjogZmFsc2V9LCB7Im9wZXJhdGlvbnMiOiBbXSwg
InR5cGVfaWQiOiAxMSwgIm9wZXJhdGlvbl9wZXJtcyI6IHt9LCAidGV4dCI6ICJ1cmxzY2FuaW9f
cHVibGljIiwgImJsYW5rX29wdGlvbiI6IGZhbHNlLCAicHJlZml4IjogbnVsbCwgImNoYW5nZWFi
bGUiOiB0cnVlLCAiaWQiOiAxODIsICJyZWFkX29ubHkiOiBmYWxzZSwgInV1aWQiOiAiZWU5MjYz
YzEtNDMyYS00MWE4LThiYmQtNjkxN2QzNWZiM2FjIiwgImNob3NlbiI6IGZhbHNlLCAiaW5wdXRf
dHlwZSI6ICJib29sZWFuIiwgInRvb2x0aXAiOiAiU2hvdWxkIHRoZSBzY2FuIGJlIHBvc3RlZCBh
cyBwdWJsaWM/IiwgImludGVybmFsIjogZmFsc2UsICJyaWNoX3RleHQiOiBmYWxzZSwgInRlbXBs
YXRlcyI6IFtdLCAidGFncyI6IFtdLCAiYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiZXhw
b3J0X2tleSI6ICJfX2Z1bmN0aW9uL3VybHNjYW5pb19wdWJsaWMiLCAiaGlkZV9ub3RpZmljYXRp
b24iOiBmYWxzZSwgInBsYWNlaG9sZGVyIjogIiIsICJuYW1lIjogInVybHNjYW5pb19wdWJsaWMi
LCAiaXNfdHJhY2tlZCI6IGZhbHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNlLCAiY2FsY3VsYXRlZCI6
IGZhbHNlLCAidmFsdWVzIjogW10sICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZX0s
IHsib3BlcmF0aW9ucyI6IFtdLCAidHlwZV9pZCI6IDExLCAib3BlcmF0aW9uX3Blcm1zIjoge30s
ICJ0ZXh0IjogInVybHNjYW5pb19yZWZlcmVyIiwgImJsYW5rX29wdGlvbiI6IGZhbHNlLCAicHJl
Zml4IjogbnVsbCwgImNoYW5nZWFibGUiOiB0cnVlLCAiaWQiOiAxODMsICJyZWFkX29ubHkiOiBm
YWxzZSwgInV1aWQiOiAiYTJlYmRiNWItM2Q1YS00MjVjLWEwYzctZmEzNTkwNGZhNWM0IiwgImNo
b3NlbiI6IGZhbHNlLCAiaW5wdXRfdHlwZSI6ICJ0ZXh0IiwgInRvb2x0aXAiOiAiQ3VzdG9tIHJl
ZmVyZXIgVVJMIGZvciB0aGlzIHNjYW4iLCAiaW50ZXJuYWwiOiBmYWxzZSwgInJpY2hfdGV4dCI6
IGZhbHNlLCAidGVtcGxhdGVzIjogW10sICJ0YWdzIjogW10sICJhbGxvd19kZWZhdWx0X3ZhbHVl
IjogZmFsc2UsICJleHBvcnRfa2V5IjogIl9fZnVuY3Rpb24vdXJsc2NhbmlvX3JlZmVyZXIiLCAi
aGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgInBsYWNlaG9sZGVyIjogIiIsICJuYW1lIjogInVy
bHNjYW5pb19yZWZlcmVyIiwgImlzX3RyYWNrZWQiOiBmYWxzZSwgImRlcHJlY2F0ZWQiOiBmYWxz
ZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgInZhbHVlcyI6IFtdLCAiZGVmYXVsdF9jaG9zZW5fYnlf
c2VydmVyIjogZmFsc2V9LCB7Im9wZXJhdGlvbnMiOiBbXSwgInR5cGVfaWQiOiAxMSwgIm9wZXJh
dGlvbl9wZXJtcyI6IHt9LCAidGV4dCI6ICJ1cmxzY2FuaW9fdXNlcmFnZW50IiwgImJsYW5rX29w
dGlvbiI6IGZhbHNlLCAicHJlZml4IjogbnVsbCwgImNoYW5nZWFibGUiOiB0cnVlLCAiaWQiOiAx
ODEsICJyZWFkX29ubHkiOiBmYWxzZSwgInV1aWQiOiAiNzM4MTg3NWMtN2EzMi00MzlkLThmNTUt
NzYyMzlhNGM3MmI3IiwgImNob3NlbiI6IGZhbHNlLCAiaW5wdXRfdHlwZSI6ICJ0ZXh0IiwgInRv
b2x0aXAiOiAiT3ZlcnJpZGUgVXNlci1BZ2VudCBmb3IgdGhpcyBzY2FuIiwgImludGVybmFsIjog
ZmFsc2UsICJyaWNoX3RleHQiOiBmYWxzZSwgInRlbXBsYXRlcyI6IFtdLCAidGFncyI6IFtdLCAi
YWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJfX2Z1bmN0aW9uL3Vy
bHNjYW5pb191c2VyYWdlbnQiLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgInBsYWNlaG9s
ZGVyIjogIiIsICJuYW1lIjogInVybHNjYW5pb191c2VyYWdlbnQiLCAiaXNfdHJhY2tlZCI6IGZh
bHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNlLCAiY2FsY3VsYXRlZCI6IGZhbHNlLCAidmFsdWVzIjog
W10sICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZX0sIHsib3BlcmF0aW9ucyI6IFtd
LCAidHlwZV9pZCI6IDAsICJvcGVyYXRpb25fcGVybXMiOiB7fSwgInRleHQiOiAiU2ltdWxhdGlv
biIsICJibGFua19vcHRpb24iOiBmYWxzZSwgInByZWZpeCI6IG51bGwsICJjaGFuZ2VhYmxlIjog
dHJ1ZSwgImlkIjogNjEsICJyZWFkX29ubHkiOiB0cnVlLCAidXVpZCI6ICJjM2YwZTNlZC0yMWUx
LTRkNTMtYWZmYi1mZTVjYTMzMDhjY2EiLCAiY2hvc2VuIjogZmFsc2UsICJpbnB1dF90eXBlIjog
ImJvb2xlYW4iLCAidG9vbHRpcCI6ICJXaGV0aGVyIHRoZSBpbmNpZGVudCBpcyBhIHNpbXVsYXRp
b24gb3IgYSByZWd1bGFyIGluY2lkZW50LiAgVGhpcyBmaWVsZCBpcyByZWFkLW9ubHkuIiwgImlu
dGVybmFsIjogZmFsc2UsICJyaWNoX3RleHQiOiBmYWxzZSwgInRlbXBsYXRlcyI6IFtdLCAidGFn
cyI6IFtdLCAiYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJpbmNp
ZGVudC9pbmNfdHJhaW5pbmciLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgIm5hbWUiOiAi
aW5jX3RyYWluaW5nIiwgImlzX3RyYWNrZWQiOiBmYWxzZSwgImRlcHJlY2F0ZWQiOiBmYWxzZSwg
ImNhbGN1bGF0ZWQiOiBmYWxzZSwgInZhbHVlcyI6IFtdLCAiZGVmYXVsdF9jaG9zZW5fYnlfc2Vy
dmVyIjogZmFsc2V9XSwgIm92ZXJyaWRlcyI6IFtdLCAiZXhwb3J0X2RhdGUiOiAxNTgzMjY0MTg1
NzU0fQ==
"""
    )