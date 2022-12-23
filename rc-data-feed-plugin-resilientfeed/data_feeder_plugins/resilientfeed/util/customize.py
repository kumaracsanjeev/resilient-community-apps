# -*- coding: utf-8 -*-

"""Generate the Resilient customizations required for rc-data-feed-plugin-resilientfeed"""

try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition


def codegen_reload_data():
    """
    Parameters required reload codegen for the rc-data-feed-plugin-resilientfeed package
    """
    return {
        "package": u"rc-data-feed-plugin-resilientfeed",
        "message_destinations": [u"feed_data_unused", u"feed_data_resilient"],
        "functions": [u"data_feeder_sync_incidents"],
        "workflows": [u"data_feeder_sync_incidents"],
        "actions": [u"Data Feeder: Artifact", u"Data Feeder: Note", u"Data Feeder: Attachment", u"Data Feeder: Sync Incidents", u"Data Feeder: Task", u"Data Feeder: Milestone", u"Data Feeder: Incident"],
        "incident_fields": [u"df_org_id", u"df_host", u"df_create_date", u"df_inc_id"],
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
        - feed_data_unused
        - feed_data_resilient
    - Functions:
        - data_feeder_sync_incidents
    - Workflows:
        - data_feeder_sync_incidents
    - Rules:
        - Data Feeder: Artifact
        - Data Feeder: Note
        - Data Feeder: Attachment
        - Data Feeder: Sync Incidents
        - Data Feeder: Task
        - Data Feeder: Milestone
        - Data Feeder: Incident
    - Incident Fields:
        - df_org_id
        - df_host
        - df_create_date
        - df_inc_id
    """

    yield ImportDefinition(u"""
eyJhY3Rpb25fb3JkZXIiOiBbXSwgImFjdGlvbnMiOiBbeyJhdXRvbWF0aW9ucyI6IFtdLCAiY29u
ZGl0aW9ucyI6IFtdLCAiZW5hYmxlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJEYXRhIEZlZWRl
cjogQXJ0aWZhY3QiLCAiaWQiOiAxMjQsICJsb2dpY190eXBlIjogImFsbCIsICJtZXNzYWdlX2Rl
c3RpbmF0aW9ucyI6IFsiZmVlZF9kYXRhX3Jlc2lsaWVudCJdLCAibmFtZSI6ICJEYXRhIEZlZWRl
cjogQXJ0aWZhY3QiLCAib2JqZWN0X3R5cGUiOiAiYXJ0aWZhY3QiLCAidGFncyI6IFtdLCAidGlt
ZW91dF9zZWNvbmRzIjogODY0MDAsICJ0eXBlIjogMCwgInV1aWQiOiAiM2M2MjdhYTgtNTgxMC00
NGE0LWEyNWQtZTVhOGRiMTliNmE2IiwgInZpZXdfaXRlbXMiOiBbXSwgIndvcmtmbG93cyI6IFtd
fSwgeyJhdXRvbWF0aW9ucyI6IFtdLCAiY29uZGl0aW9ucyI6IFtdLCAiZW5hYmxlZCI6IGZhbHNl
LCAiZXhwb3J0X2tleSI6ICJEYXRhIEZlZWRlcjogQXR0YWNobWVudCIsICJpZCI6IDEyNSwgImxv
Z2ljX3R5cGUiOiAiYWxsIiwgIm1lc3NhZ2VfZGVzdGluYXRpb25zIjogWyJmZWVkX2RhdGFfcmVz
aWxpZW50Il0sICJuYW1lIjogIkRhdGEgRmVlZGVyOiBBdHRhY2htZW50IiwgIm9iamVjdF90eXBl
IjogImF0dGFjaG1lbnQiLCAidGFncyI6IFtdLCAidGltZW91dF9zZWNvbmRzIjogODY0MDAsICJ0
eXBlIjogMCwgInV1aWQiOiAiMmI2MjhiOGMtMWI1Mi00ZTUxLWE1ZjMtYzMyM2Q3ZmYwMzdlIiwg
InZpZXdfaXRlbXMiOiBbXSwgIndvcmtmbG93cyI6IFtdfSwgeyJhdXRvbWF0aW9ucyI6IFtdLCAi
Y29uZGl0aW9ucyI6IFtdLCAiZW5hYmxlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJEYXRhIEZl
ZWRlcjogSW5jaWRlbnQiLCAiaWQiOiAxMjYsICJsb2dpY190eXBlIjogImFsbCIsICJtZXNzYWdl
X2Rlc3RpbmF0aW9ucyI6IFsiZmVlZF9kYXRhX3Jlc2lsaWVudCJdLCAibmFtZSI6ICJEYXRhIEZl
ZWRlcjogSW5jaWRlbnQiLCAib2JqZWN0X3R5cGUiOiAiaW5jaWRlbnQiLCAidGFncyI6IFtdLCAi
dGltZW91dF9zZWNvbmRzIjogODY0MDAsICJ0eXBlIjogMCwgInV1aWQiOiAiNWJjMGI5OWItOGY4
Ny00OGRlLTk3ZDktOTMzM2YxMTM5ZDVkIiwgInZpZXdfaXRlbXMiOiBbXSwgIndvcmtmbG93cyI6
IFtdfSwgeyJhdXRvbWF0aW9ucyI6IFtdLCAiY29uZGl0aW9ucyI6IFtdLCAiZW5hYmxlZCI6IGZh
bHNlLCAiZXhwb3J0X2tleSI6ICJEYXRhIEZlZWRlcjogTWlsZXN0b25lIiwgImlkIjogMTI3LCAi
bG9naWNfdHlwZSI6ICJhbGwiLCAibWVzc2FnZV9kZXN0aW5hdGlvbnMiOiBbImZlZWRfZGF0YV9y
ZXNpbGllbnQiXSwgIm5hbWUiOiAiRGF0YSBGZWVkZXI6IE1pbGVzdG9uZSIsICJvYmplY3RfdHlw
ZSI6ICJtaWxlc3RvbmUiLCAidGFncyI6IFtdLCAidGltZW91dF9zZWNvbmRzIjogODY0MDAsICJ0
eXBlIjogMCwgInV1aWQiOiAiYzdmY2FmNTAtNDQwMi00YzYyLTk1NTItYzI2ZGY2ZTViZTliIiwg
InZpZXdfaXRlbXMiOiBbXSwgIndvcmtmbG93cyI6IFtdfSwgeyJhdXRvbWF0aW9ucyI6IFtdLCAi
Y29uZGl0aW9ucyI6IFtdLCAiZW5hYmxlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJEYXRhIEZl
ZWRlcjogTm90ZSIsICJpZCI6IDEyOCwgImxvZ2ljX3R5cGUiOiAiYWxsIiwgIm1lc3NhZ2VfZGVz
dGluYXRpb25zIjogWyJmZWVkX2RhdGFfcmVzaWxpZW50Il0sICJuYW1lIjogIkRhdGEgRmVlZGVy
OiBOb3RlIiwgIm9iamVjdF90eXBlIjogIm5vdGUiLCAidGFncyI6IFtdLCAidGltZW91dF9zZWNv
bmRzIjogODY0MDAsICJ0eXBlIjogMCwgInV1aWQiOiAiNzgwZjJlYmUtOWFhYy00MWU5LTk4YWIt
NzA2ODhhYzlhZjdhIiwgInZpZXdfaXRlbXMiOiBbXSwgIndvcmtmbG93cyI6IFtdfSwgeyJhdXRv
bWF0aW9ucyI6IFtdLCAiY29uZGl0aW9ucyI6IFtdLCAiZW5hYmxlZCI6IGZhbHNlLCAiZXhwb3J0
X2tleSI6ICJEYXRhIEZlZWRlcjogU3luYyBJbmNpZGVudHMiLCAiaWQiOiAxMjksICJsb2dpY190
eXBlIjogImFsbCIsICJtZXNzYWdlX2Rlc3RpbmF0aW9ucyI6IFtdLCAibmFtZSI6ICJEYXRhIEZl
ZWRlcjogU3luYyBJbmNpZGVudHMiLCAib2JqZWN0X3R5cGUiOiAiaW5jaWRlbnQiLCAidGFncyI6
IFtdLCAidGltZW91dF9zZWNvbmRzIjogODY0MDAsICJ0eXBlIjogMSwgInV1aWQiOiAiMTc0YWJj
MTgtZGM3Mi00MTMwLWE1YzgtNjQyMWZiNDQ5ZjEyIiwgInZpZXdfaXRlbXMiOiBbeyJjb250ZW50
IjogImNjNTMyYTIyLWU5MGYtNDZlNC05MTlhLTBhZDEyOTY3OTZiZiIsICJlbGVtZW50IjogImZp
ZWxkX3V1aWQiLCAiZmllbGRfdHlwZSI6ICJhY3Rpb25pbnZvY2F0aW9uIiwgInNob3dfaWYiOiBu
dWxsLCAic2hvd19saW5rX2hlYWRlciI6IGZhbHNlLCAic3RlcF9sYWJlbCI6IG51bGx9LCB7ImNv
bnRlbnQiOiAiM2UyZTkzZGUtNmJhNS00YWRmLWIwNDQtNjZhNDYwOWRkNzdkIiwgImVsZW1lbnQi
OiAiZmllbGRfdXVpZCIsICJmaWVsZF90eXBlIjogImFjdGlvbmludm9jYXRpb24iLCAic2hvd19p
ZiI6IG51bGwsICJzaG93X2xpbmtfaGVhZGVyIjogZmFsc2UsICJzdGVwX2xhYmVsIjogbnVsbH0s
IHsiY29udGVudCI6ICI3ZWQzYWYwMy1kM2IzLTQxZWQtYTcyMS05NzA1NDM0NjM1OTgiLCAiZWxl
bWVudCI6ICJmaWVsZF91dWlkIiwgImZpZWxkX3R5cGUiOiAiYWN0aW9uaW52b2NhdGlvbiIsICJz
aG93X2lmIjogbnVsbCwgInNob3dfbGlua19oZWFkZXIiOiBmYWxzZSwgInN0ZXBfbGFiZWwiOiBu
dWxsfV0sICJ3b3JrZmxvd3MiOiBbImRhdGFfZmVlZGVyX3N5bmNfaW5jaWRlbnRzIl19LCB7ImF1
dG9tYXRpb25zIjogW10sICJjb25kaXRpb25zIjogW10sICJlbmFibGVkIjogZmFsc2UsICJleHBv
cnRfa2V5IjogIkRhdGEgRmVlZGVyOiBUYXNrIiwgImlkIjogMTMwLCAibG9naWNfdHlwZSI6ICJh
bGwiLCAibWVzc2FnZV9kZXN0aW5hdGlvbnMiOiBbImZlZWRfZGF0YV9yZXNpbGllbnQiXSwgIm5h
bWUiOiAiRGF0YSBGZWVkZXI6IFRhc2siLCAib2JqZWN0X3R5cGUiOiAidGFzayIsICJ0YWdzIjog
W10sICJ0aW1lb3V0X3NlY29uZHMiOiA4NjQwMCwgInR5cGUiOiAwLCAidXVpZCI6ICJlZTBkOTJl
ZS1lNTNkLTRlYmQtYTI4Zi1kZjk1OWU5NDllZDciLCAidmlld19pdGVtcyI6IFtdLCAid29ya2Zs
b3dzIjogW119XSwgImF1dG9tYXRpY190YXNrcyI6IFtdLCAiZXhwb3J0X2RhdGUiOiAxNjAyMjQ3
NTk0NzI2LCAiZXhwb3J0X2Zvcm1hdF92ZXJzaW9uIjogMiwgImZpZWxkcyI6IFt7ImFsbG93X2Rl
ZmF1bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IGZhbHNlLCAiY2FsY3VsYXRlZCI6
IGZhbHNlLCAiY2hhbmdlYWJsZSI6IHRydWUsICJjaG9zZW4iOiBmYWxzZSwgImRlZmF1bHRfY2hv
c2VuX2J5X3NlcnZlciI6IGZhbHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6
ICJfX2Z1bmN0aW9uL2RmX21pbl9pbmNpZGVudF9pZCIsICJoaWRlX25vdGlmaWNhdGlvbiI6IGZh
bHNlLCAiaWQiOiA5NzAsICJpbnB1dF90eXBlIjogIm51bWJlciIsICJpbnRlcm5hbCI6IGZhbHNl
LCAiaXNfdHJhY2tlZCI6IGZhbHNlLCAibmFtZSI6ICJkZl9taW5faW5jaWRlbnRfaWQiLCAib3Bl
cmF0aW9uX3Blcm1zIjoge30sICJvcGVyYXRpb25zIjogW10sICJwbGFjZWhvbGRlciI6ICIiLCAi
cHJlZml4IjogbnVsbCwgInJlYWRfb25seSI6IGZhbHNlLCAicmVxdWlyZWQiOiAiYWx3YXlzIiwg
InJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6IFtdLCAidGVtcGxhdGVzIjogW10sICJ0ZXh0Ijog
ImRmX21pbl9pbmNpZGVudF9pZCIsICJ0b29sdGlwIjogIkVudGVyIGFuIGluY2lkZW50ICMgb3Ig
MCB0byBpbmRpY2F0ZSB0aGUgc3RhcnQgb2YgYWxsIGluY2lkZW50cyIsICJ0eXBlX2lkIjogMTEs
ICJ1dWlkIjogImI4MGQxMWQ0LTljNmItNGNkNy05NTFhLTRmZThjNTcyYzllZiIsICJ2YWx1ZXMi
OiBbXX0sIHsiYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiYmxhbmtfb3B0aW9uIjogdHJ1
ZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgImNoYW5nZWFibGUiOiB0cnVlLCAiY2hvc2VuIjogZmFs
c2UsICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImRlcHJlY2F0ZWQiOiBmYWxz
ZSwgImV4cG9ydF9rZXkiOiAiX19mdW5jdGlvbi9kZl9xdWVyeV9hcGlfbWV0aG9kIiwgImhpZGVf
bm90aWZpY2F0aW9uIjogZmFsc2UsICJpZCI6IDk3MSwgImlucHV0X3R5cGUiOiAiYm9vbGVhbiIs
ICJpbnRlcm5hbCI6IGZhbHNlLCAiaXNfdHJhY2tlZCI6IGZhbHNlLCAibmFtZSI6ICJkZl9xdWVy
eV9hcGlfbWV0aG9kIiwgIm9wZXJhdGlvbl9wZXJtcyI6IHt9LCAib3BlcmF0aW9ucyI6IFtdLCAi
cGxhY2Vob2xkZXIiOiAiIiwgInByZWZpeCI6IG51bGwsICJyZWFkX29ubHkiOiBmYWxzZSwgInJl
cXVpcmVkIjogImFsd2F5cyIsICJyaWNoX3RleHQiOiBmYWxzZSwgInRhZ3MiOiBbXSwgInRlbXBs
YXRlcyI6IFtdLCAidGV4dCI6ICJkZl9xdWVyeV9hcGlfbWV0aG9kIiwgInRvb2x0aXAiOiAiIiwg
InR5cGVfaWQiOiAxMSwgInV1aWQiOiAiNzMxZTk0ZmYtODIyZi00OGYxLTgzYTktYTc4MzgwZmQ2
MzZiIiwgInZhbHVlcyI6IFtdfSwgeyJhbGxvd19kZWZhdWx0X3ZhbHVlIjogZmFsc2UsICJibGFu
a19vcHRpb24iOiBmYWxzZSwgImNhbGN1bGF0ZWQiOiBmYWxzZSwgImNoYW5nZWFibGUiOiB0cnVl
LCAiY2hvc2VuIjogZmFsc2UsICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImRl
cHJlY2F0ZWQiOiBmYWxzZSwgImV4cG9ydF9rZXkiOiAiX19mdW5jdGlvbi9kZl9tYXhfaW5jaWRl
bnRfaWQiLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImlkIjogOTY5LCAiaW5wdXRfdHlw
ZSI6ICJudW1iZXIiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlzX3RyYWNrZWQiOiBmYWxzZSwgIm5h
bWUiOiAiZGZfbWF4X2luY2lkZW50X2lkIiwgIm9wZXJhdGlvbl9wZXJtcyI6IHt9LCAib3BlcmF0
aW9ucyI6IFtdLCAicGxhY2Vob2xkZXIiOiAiIiwgInByZWZpeCI6IG51bGwsICJyZWFkX29ubHki
OiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6IFtdLCAidGVtcGxhdGVzIjogW10s
ICJ0ZXh0IjogImRmX21heF9pbmNpZGVudF9pZCIsICJ0b29sdGlwIjogIkVudGVyIGluY2lkZW50
ICMgZm9yIHVwcGVyIHJhbmdlIG9yIDAgdG8gaW5kaWNhdGUgYWxsIGluY2lkZW50cyIsICJ0eXBl
X2lkIjogMTEsICJ1dWlkIjogImU3ODIwZTQ0LTQwODctNGNlMi04NGFmLTBmZTkzNjMwYTAzYyIs
ICJ2YWx1ZXMiOiBbXX0sIHsiYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiYmxhbmtfb3B0
aW9uIjogZmFsc2UsICJjYWxjdWxhdGVkIjogZmFsc2UsICJjaGFuZ2VhYmxlIjogdHJ1ZSwgImNo
b3NlbiI6IGZhbHNlLCAiZGVmYXVsdF9jaG9zZW5fYnlfc2VydmVyIjogZmFsc2UsICJkZXByZWNh
dGVkIjogZmFsc2UsICJleHBvcnRfa2V5IjogImFjdGlvbmludm9jYXRpb24vZGF0YV9mZWVkZXJf
bWF4aW11bV9pbmNpZGVudF9pZCIsICJoaWRlX25vdGlmaWNhdGlvbiI6IGZhbHNlLCAiaWQiOiA5
NjgsICJpbnB1dF90eXBlIjogIm51bWJlciIsICJpbnRlcm5hbCI6IGZhbHNlLCAiaXNfdHJhY2tl
ZCI6IGZhbHNlLCAibmFtZSI6ICJkYXRhX2ZlZWRlcl9tYXhpbXVtX2luY2lkZW50X2lkIiwgIm9w
ZXJhdGlvbl9wZXJtcyI6IHt9LCAib3BlcmF0aW9ucyI6IFtdLCAicGxhY2Vob2xkZXIiOiAiIiwg
InByZWZpeCI6ICJwcm9wZXJ0aWVzIiwgInJlYWRfb25seSI6IGZhbHNlLCAicmljaF90ZXh0Ijog
ZmFsc2UsICJ0YWdzIjogW10sICJ0ZW1wbGF0ZXMiOiBbXSwgInRleHQiOiAiTWF4aW11bSBJbmNp
ZGVudCBJRCIsICJ0b29sdGlwIjogIkVudGVyIEluY2lkZW50IElEIHRvIHN5bmMgdXAgdG8gb3Ig
MCB0byBpbmRpY2F0ZSBhbGwgaW5jaWRlbnRzIiwgInR5cGVfaWQiOiA2LCAidXVpZCI6ICIzZTJl
OTNkZS02YmE1LTRhZGYtYjA0NC02NmE0NjA5ZGQ3N2QiLCAidmFsdWVzIjogW119LCB7ImFsbG93
X2RlZmF1bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IHRydWUsICJjYWxjdWxhdGVk
IjogZmFsc2UsICJjaGFuZ2VhYmxlIjogdHJ1ZSwgImNob3NlbiI6IGZhbHNlLCAiZGVmYXVsdF9j
aG9zZW5fYnlfc2VydmVyIjogZmFsc2UsICJkZXByZWNhdGVkIjogZmFsc2UsICJleHBvcnRfa2V5
IjogImFjdGlvbmludm9jYXRpb24vcXVlcnlfYXBpX21ldGhvZCIsICJoaWRlX25vdGlmaWNhdGlv
biI6IGZhbHNlLCAiaWQiOiA5NjcsICJpbnB1dF90eXBlIjogImJvb2xlYW4iLCAiaW50ZXJuYWwi
OiBmYWxzZSwgImlzX3RyYWNrZWQiOiBmYWxzZSwgIm5hbWUiOiAicXVlcnlfYXBpX21ldGhvZCIs
ICJvcGVyYXRpb25fcGVybXMiOiB7fSwgIm9wZXJhdGlvbnMiOiBbXSwgInBsYWNlaG9sZGVyIjog
IiIsICJwcmVmaXgiOiAicHJvcGVydGllcyIsICJyZWFkX29ubHkiOiBmYWxzZSwgInJlcXVpcmVk
IjogImFsd2F5cyIsICJyaWNoX3RleHQiOiBmYWxzZSwgInRhZ3MiOiBbXSwgInRlbXBsYXRlcyI6
IFtdLCAidGV4dCI6ICJRdWVyeSBBUEkgTWV0aG9kIiwgInRvb2x0aXAiOiAiU3BlY2lmeSB0cnVl
IGlmIGVycm9ycyBvY2N1ciB3aGVuIHVzaW5nIHRoZSBkZWZhdWx0IHNlYXJjaCBjYXBhYmlsaXR5
IiwgInR5cGVfaWQiOiA2LCAidXVpZCI6ICI3ZWQzYWYwMy1kM2IzLTQxZWQtYTcyMS05NzA1NDM0
NjM1OTgiLCAidmFsdWVzIjogW119LCB7ImFsbG93X2RlZmF1bHRfdmFsdWUiOiBmYWxzZSwgImJs
YW5rX29wdGlvbiI6IGZhbHNlLCAiY2FsY3VsYXRlZCI6IGZhbHNlLCAiY2hhbmdlYWJsZSI6IHRy
dWUsICJjaG9zZW4iOiBmYWxzZSwgImRlZmF1bHRfY2hvc2VuX2J5X3NlcnZlciI6IGZhbHNlLCAi
ZGVwcmVjYXRlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJhY3Rpb25pbnZvY2F0aW9uL2RhdGFf
ZmVlZGVyX21pbmltdW1faW5jaWRlbnRfaWQiLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwg
ImlkIjogOTY2LCAiaW5wdXRfdHlwZSI6ICJudW1iZXIiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlz
X3RyYWNrZWQiOiBmYWxzZSwgIm5hbWUiOiAiZGF0YV9mZWVkZXJfbWluaW11bV9pbmNpZGVudF9p
ZCIsICJvcGVyYXRpb25fcGVybXMiOiB7fSwgIm9wZXJhdGlvbnMiOiBbXSwgInBsYWNlaG9sZGVy
IjogIiIsICJwcmVmaXgiOiAicHJvcGVydGllcyIsICJyZWFkX29ubHkiOiBmYWxzZSwgInJlcXVp
cmVkIjogImFsd2F5cyIsICJyaWNoX3RleHQiOiBmYWxzZSwgInRhZ3MiOiBbXSwgInRlbXBsYXRl
cyI6IFtdLCAidGV4dCI6ICJNaW5pbXVtIEluY2lkZW50IElEIiwgInRvb2x0aXAiOiAiRW50ZXIg
SW5jaWRlbnQgSUQgdG8gc3RhcnQgc3luYyBvciAwIiwgInR5cGVfaWQiOiA2LCAidXVpZCI6ICJj
YzUzMmEyMi1lOTBmLTQ2ZTQtOTE5YS0wYWQxMjk2Nzk2YmYiLCAidmFsdWVzIjogW119LCB7ImFs
bG93X2RlZmF1bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IGZhbHNlLCAiY2FsY3Vs
YXRlZCI6IGZhbHNlLCAiY2hhbmdlYWJsZSI6IHRydWUsICJjaG9zZW4iOiBmYWxzZSwgImRlZmF1
bHRfY2hvc2VuX2J5X3NlcnZlciI6IGZhbHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNlLCAiZXhwb3J0
X2tleSI6ICJpbmNpZGVudC9kZl9ob3N0IiwgImhpZGVfbm90aWZpY2F0aW9uIjogZmFsc2UsICJp
ZCI6IDE5NDQsICJpbnB1dF90eXBlIjogInRleHQiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlzX3Ry
YWNrZWQiOiBmYWxzZSwgIm5hbWUiOiAiZGZfaG9zdCIsICJvcGVyYXRpb25fcGVybXMiOiB7fSwg
Im9wZXJhdGlvbnMiOiBbXSwgInBsYWNlaG9sZGVyIjogIiIsICJwcmVmaXgiOiAicHJvcGVydGll
cyIsICJyZWFkX29ubHkiOiBmYWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAidGFncyI6IFtdLCAi
dGVtcGxhdGVzIjogW10sICJ0ZXh0IjogIkRhdGEgRmVlZGVyIFN5bmMgSG9zdCIsICJ0b29sdGlw
IjogIkhvc3Qgd2hpY2ggb3JpZ2luYXRlZCB0aGUgc3luYyAiLCAidHlwZV9pZCI6IDAsICJ1dWlk
IjogIjZiZTFiNzg5LTkxM2EtNGEzNC04NTg5LTc5ZjhkYzljMGVmZCIsICJ2YWx1ZXMiOiBbXX0s
IHsiYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiYmxhbmtfb3B0aW9uIjogZmFsc2UsICJj
YWxjdWxhdGVkIjogZmFsc2UsICJjaGFuZ2VhYmxlIjogdHJ1ZSwgImNob3NlbiI6IGZhbHNlLCAi
ZGVmYXVsdF9jaG9zZW5fYnlfc2VydmVyIjogZmFsc2UsICJkZXByZWNhdGVkIjogZmFsc2UsICJl
eHBvcnRfa2V5IjogImluY2lkZW50L2RmX2NyZWF0ZV9kYXRlIiwgImhpZGVfbm90aWZpY2F0aW9u
IjogZmFsc2UsICJpZCI6IDE5NDUsICJpbnB1dF90eXBlIjogImRhdGV0aW1lcGlja2VyIiwgImlu
dGVybmFsIjogZmFsc2UsICJpc190cmFja2VkIjogZmFsc2UsICJuYW1lIjogImRmX2NyZWF0ZV9k
YXRlIiwgIm9wZXJhdGlvbl9wZXJtcyI6IHt9LCAib3BlcmF0aW9ucyI6IFtdLCAicGxhY2Vob2xk
ZXIiOiAiIiwgInByZWZpeCI6ICJwcm9wZXJ0aWVzIiwgInJlYWRfb25seSI6IGZhbHNlLCAicmlj
aF90ZXh0IjogZmFsc2UsICJ0YWdzIjogW10sICJ0ZW1wbGF0ZXMiOiBbXSwgInRleHQiOiAiRGF0
YSBGZWVkZXIgU3luYyBPcmlnaW5hbCBDcmVhdGUgRGF0ZSIsICJ0b29sdGlwIjogIk9yaWdpbmFs
IEluY2lkZW50IGNyZWF0ZSBkYXRlIiwgInR5cGVfaWQiOiAwLCAidXVpZCI6ICI5MTU2YjM3OC1l
ZmQ0LTRhNTMtOTY3YS1mNTdjNzI1NjIzOTYiLCAidmFsdWVzIjogW119LCB7ImFsbG93X2RlZmF1
bHRfdmFsdWUiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IGZhbHNlLCAiY2FsY3VsYXRlZCI6IGZh
bHNlLCAiY2hhbmdlYWJsZSI6IHRydWUsICJjaG9zZW4iOiBmYWxzZSwgImRlZmF1bHRfY2hvc2Vu
X2J5X3NlcnZlciI6IGZhbHNlLCAiZGVwcmVjYXRlZCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJp
bmNpZGVudC9kZl9pbmNfaWQiLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImlkIjogOTcz
LCAiaW5wdXRfdHlwZSI6ICJudW1iZXIiLCAiaW50ZXJuYWwiOiBmYWxzZSwgImlzX3RyYWNrZWQi
OiBmYWxzZSwgIm5hbWUiOiAiZGZfaW5jX2lkIiwgIm9wZXJhdGlvbl9wZXJtcyI6IHt9LCAib3Bl
cmF0aW9ucyI6IFtdLCAicGxhY2Vob2xkZXIiOiAiIiwgInByZWZpeCI6ICJwcm9wZXJ0aWVzIiwg
InJlYWRfb25seSI6IGZhbHNlLCAicmljaF90ZXh0IjogZmFsc2UsICJ0YWdzIjogW10sICJ0ZW1w
bGF0ZXMiOiBbXSwgInRleHQiOiAiRGF0YSBGZWVkZXIgU3luYyBJbmNpZGVudCBJZCIsICJ0b29s
dGlwIjogIkRhdGEgRmVlZGVyIFN5bmMgT3JpZ2luYXRpbmcgSW5jaWRlbnQgSWQiLCAidHlwZV9p
ZCI6IDAsICJ1dWlkIjogImE1ZjdhNjM3LTBkMjMtNDYzYS1iOGMyLTlhMzdjYWI0Njc4NyIsICJ2
YWx1ZXMiOiBbXX0sIHsiYWxsb3dfZGVmYXVsdF92YWx1ZSI6IGZhbHNlLCAiYmxhbmtfb3B0aW9u
IjogZmFsc2UsICJjYWxjdWxhdGVkIjogZmFsc2UsICJjaGFuZ2VhYmxlIjogdHJ1ZSwgImNob3Nl
biI6IGZhbHNlLCAiZGVmYXVsdF9jaG9zZW5fYnlfc2VydmVyIjogZmFsc2UsICJkZXByZWNhdGVk
IjogZmFsc2UsICJleHBvcnRfa2V5IjogImluY2lkZW50L2RmX29yZ19pZCIsICJoaWRlX25vdGlm
aWNhdGlvbiI6IGZhbHNlLCAiaWQiOiA5NzIsICJpbnB1dF90eXBlIjogIm51bWJlciIsICJpbnRl
cm5hbCI6IGZhbHNlLCAiaXNfdHJhY2tlZCI6IGZhbHNlLCAibmFtZSI6ICJkZl9vcmdfaWQiLCAi
b3BlcmF0aW9uX3Blcm1zIjoge30sICJvcGVyYXRpb25zIjogW10sICJwbGFjZWhvbGRlciI6ICIi
LCAicHJlZml4IjogInByb3BlcnRpZXMiLCAicmVhZF9vbmx5IjogZmFsc2UsICJyaWNoX3RleHQi
OiBmYWxzZSwgInRhZ3MiOiBbXSwgInRlbXBsYXRlcyI6IFtdLCAidGV4dCI6ICJEYXRhIEZlZWRl
ciBTeW5jIE9yZyBJZCIsICJ0b29sdGlwIjogIkRhdGEgRmVlZGVyIFN5bmMgT3JpZ2luYXRpbmcg
T3JnIElkIiwgInR5cGVfaWQiOiAwLCAidXVpZCI6ICJhYjYyYWU3ZS03Y2YyLTQ3YjQtODk0MC1m
MGUxZTEzYTU4MzQiLCAidmFsdWVzIjogW119LCB7ImV4cG9ydF9rZXkiOiAiaW5jaWRlbnQvaW50
ZXJuYWxfY3VzdG9taXphdGlvbnNfZmllbGQiLCAiaWQiOiAwLCAiaW5wdXRfdHlwZSI6ICJ0ZXh0
IiwgImludGVybmFsIjogdHJ1ZSwgIm5hbWUiOiAiaW50ZXJuYWxfY3VzdG9taXphdGlvbnNfZmll
bGQiLCAicmVhZF9vbmx5IjogdHJ1ZSwgInRleHQiOiAiQ3VzdG9taXphdGlvbnMgRmllbGQgKGlu
dGVybmFsKSIsICJ0eXBlX2lkIjogMCwgInV1aWQiOiAiYmZlZWMyZDQtMzc3MC0xMWU4LWFkMzkt
NGEwMDA0MDQ0YWExIn1dLCAiZnVuY3Rpb25zIjogW3siY3JlYXRvciI6IHsiZGlzcGxheV9uYW1l
IjogIlJlc2lsaWVudCBTeXNhZG1pbiIsICJpZCI6IDMsICJuYW1lIjogImFAZXhhbXBsZS5jb20i
LCAidHlwZSI6ICJ1c2VyIn0sICJkZXNjcmlwdGlvbiI6IHsiZm9ybWF0IjogInRleHQiLCAiY29u
dGVudCI6ICJTeW5jaHJvbml6ZSBJbmNpZGVudChzKSBhbmQgdGhlaXIgYXNzb2NpYXRlZCB0YXNr
cywgbm90ZXMsIGF0dGFjaG1lbnRzLCBhcnRpZmFjdHMsIG1pbGVzdG9uZXMgYW5kIGFzc29jaWF0
ZWQgZGF0YXRhYmxlcyJ9LCAiZGVzdGluYXRpb25faGFuZGxlIjogImZlZWRfZGF0YV91bnVzZWQi
LCAiZGlzcGxheV9uYW1lIjogIkRhdGEgRmVlZGVyOiBTeW5jIEluY2lkZW50cyIsICJleHBvcnRf
a2V5IjogImRhdGFfZmVlZGVyX3N5bmNfaW5jaWRlbnRzIiwgImlkIjogNDUsICJsYXN0X21vZGlm
aWVkX2J5IjogeyJkaXNwbGF5X25hbWUiOiAiUmVzaWxpZW50IFN5c2FkbWluIiwgImlkIjogMywg
Im5hbWUiOiAiYUBleGFtcGxlLmNvbSIsICJ0eXBlIjogInVzZXIifSwgImxhc3RfbW9kaWZpZWRf
dGltZSI6IDE2MDIyNDU0NzU0OTYsICJuYW1lIjogImRhdGFfZmVlZGVyX3N5bmNfaW5jaWRlbnRz
IiwgInRhZ3MiOiBbXSwgInV1aWQiOiAiN2ZmZWQ0ZTUtNzJmYi00MTYyLWJkZWYtNGVhM2ViZmE4
OWRlIiwgInZlcnNpb24iOiAyLCAidmlld19pdGVtcyI6IFt7ImNvbnRlbnQiOiAiYjgwZDExZDQt
OWM2Yi00Y2Q3LTk1MWEtNGZlOGM1NzJjOWVmIiwgImVsZW1lbnQiOiAiZmllbGRfdXVpZCIsICJm
aWVsZF90eXBlIjogIl9fZnVuY3Rpb24iLCAic2hvd19pZiI6IG51bGwsICJzaG93X2xpbmtfaGVh
ZGVyIjogZmFsc2UsICJzdGVwX2xhYmVsIjogbnVsbH0sIHsiY29udGVudCI6ICJlNzgyMGU0NC00
MDg3LTRjZTItODRhZi0wZmU5MzYzMGEwM2MiLCAiZWxlbWVudCI6ICJmaWVsZF91dWlkIiwgImZp
ZWxkX3R5cGUiOiAiX19mdW5jdGlvbiIsICJzaG93X2lmIjogbnVsbCwgInNob3dfbGlua19oZWFk
ZXIiOiBmYWxzZSwgInN0ZXBfbGFiZWwiOiBudWxsfSwgeyJjb250ZW50IjogIjczMWU5NGZmLTgy
MmYtNDhmMS04M2E5LWE3ODM4MGZkNjM2YiIsICJlbGVtZW50IjogImZpZWxkX3V1aWQiLCAiZmll
bGRfdHlwZSI6ICJfX2Z1bmN0aW9uIiwgInNob3dfaWYiOiBudWxsLCAic2hvd19saW5rX2hlYWRl
ciI6IGZhbHNlLCAic3RlcF9sYWJlbCI6IG51bGx9XSwgIndvcmtmbG93cyI6IFt7ImFjdGlvbnMi
OiBbXSwgImRlc2NyaXB0aW9uIjogbnVsbCwgIm5hbWUiOiAiRGF0YSBGZWVkZXI6IFN5bmMgSW5j
aWRlbnRzIiwgIm9iamVjdF90eXBlIjogImluY2lkZW50IiwgInByb2dyYW1tYXRpY19uYW1lIjog
ImRhdGFfZmVlZGVyX3N5bmNfaW5jaWRlbnRzIiwgInRhZ3MiOiBbXSwgInV1aWQiOiBudWxsLCAi
d29ya2Zsb3dfaWQiOiA1NX1dfV0sICJnZW9zIjogbnVsbCwgImdyb3VwcyI6IG51bGwsICJpZCI6
IDg4LCAiaW5ib3VuZF9tYWlsYm94ZXMiOiBudWxsLCAiaW5jaWRlbnRfYXJ0aWZhY3RfdHlwZXMi
OiBbXSwgImluY2lkZW50X3R5cGVzIjogW3sidXBkYXRlX2RhdGUiOiAxNjAyMjQ3NTg5ODUwLCAi
Y3JlYXRlX2RhdGUiOiAxNjAyMjQ3NTg5ODUwLCAidXVpZCI6ICJiZmVlYzJkNC0zNzcwLTExZTgt
YWQzOS00YTAwMDQwNDRhYTAiLCAiZGVzY3JpcHRpb24iOiAiQ3VzdG9taXphdGlvbiBQYWNrYWdl
cyAoaW50ZXJuYWwpIiwgImV4cG9ydF9rZXkiOiAiQ3VzdG9taXphdGlvbiBQYWNrYWdlcyAoaW50
ZXJuYWwpIiwgIm5hbWUiOiAiQ3VzdG9taXphdGlvbiBQYWNrYWdlcyAoaW50ZXJuYWwpIiwgImVu
YWJsZWQiOiBmYWxzZSwgInN5c3RlbSI6IGZhbHNlLCAicGFyZW50X2lkIjogbnVsbCwgImhpZGRl
biI6IGZhbHNlLCAiaWQiOiAwfV0sICJpbmR1c3RyaWVzIjogbnVsbCwgImxheW91dHMiOiBbXSwg
ImxvY2FsZSI6IG51bGwsICJtZXNzYWdlX2Rlc3RpbmF0aW9ucyI6IFt7ImFwaV9rZXlzIjogW10s
ICJkZXN0aW5hdGlvbl90eXBlIjogMCwgImV4cGVjdF9hY2siOiB0cnVlLCAiZXhwb3J0X2tleSI6
ICJmZWVkX2RhdGFfcmVzaWxpZW50IiwgIm5hbWUiOiAiZmVlZF9kYXRhX3Jlc2lsaWVudCIsICJw
cm9ncmFtbWF0aWNfbmFtZSI6ICJmZWVkX2RhdGFfcmVzaWxpZW50IiwgInRhZ3MiOiBbXSwgInVz
ZXJzIjogWyJhQGV4YW1wbGUuY29tIl0sICJ1dWlkIjogImZmNzE0NmU5LTZmNWItNDEyZS1hYzgw
LWJiNDNmMmFhNDUxZCJ9LCB7ImFwaV9rZXlzIjogW10sICJkZXN0aW5hdGlvbl90eXBlIjogMCwg
ImV4cGVjdF9hY2siOiB0cnVlLCAiZXhwb3J0X2tleSI6ICJmZWVkX2RhdGFfdW51c2VkIiwgIm5h
bWUiOiAiZmVlZF9kYXRhX3VudXNlZCIsICJwcm9ncmFtbWF0aWNfbmFtZSI6ICJmZWVkX2RhdGFf
dW51c2VkIiwgInRhZ3MiOiBbXSwgInVzZXJzIjogW10sICJ1dWlkIjogIjhjMzhiMzc3LTNhMjYt
NDQzZi04ZjNiLWI4M2UwNjEzNmU4ZSJ9XSwgIm5vdGlmaWNhdGlvbnMiOiBudWxsLCAib3ZlcnJp
ZGVzIjogW10sICJwaGFzZXMiOiBbXSwgInJlZ3VsYXRvcnMiOiBudWxsLCAicm9sZXMiOiBbXSwg
InNjcmlwdHMiOiBbXSwgInNlcnZlcl92ZXJzaW9uIjogeyJidWlsZF9udW1iZXIiOiAzMiwgIm1h
am9yIjogMzUsICJtaW5vciI6IDIsICJ2ZXJzaW9uIjogIjM1LjIuMzIifSwgInRhZ3MiOiBbXSwg
InRhc2tfb3JkZXIiOiBbXSwgInRpbWVmcmFtZXMiOiBudWxsLCAidHlwZXMiOiBbXSwgIndvcmtm
bG93cyI6IFt7ImFjdGlvbnMiOiBbXSwgImNvbnRlbnQiOiB7InZlcnNpb24iOiAxLCAid29ya2Zs
b3dfaWQiOiAiZGF0YV9mZWVkZXJfc3luY19pbmNpZGVudHMiLCAieG1sIjogIjw/eG1sIHZlcnNp
b249XCIxLjBcIiBlbmNvZGluZz1cIlVURi04XCI/PjxkZWZpbml0aW9ucyB4bWxucz1cImh0dHA6
Ly93d3cub21nLm9yZy9zcGVjL0JQTU4vMjAxMDA1MjQvTU9ERUxcIiB4bWxuczpicG1uZGk9XCJo
dHRwOi8vd3d3Lm9tZy5vcmcvc3BlYy9CUE1OLzIwMTAwNTI0L0RJXCIgeG1sbnM6b21nZGM9XCJo
dHRwOi8vd3d3Lm9tZy5vcmcvc3BlYy9ERC8yMDEwMDUyNC9EQ1wiIHhtbG5zOm9tZ2RpPVwiaHR0
cDovL3d3dy5vbWcub3JnL3NwZWMvREQvMjAxMDA1MjQvRElcIiB4bWxuczpyZXNpbGllbnQ9XCJo
dHRwOi8vcmVzaWxpZW50LmlibS5jb20vYnBtblwiIHhtbG5zOnhzZD1cImh0dHA6Ly93d3cudzMu
b3JnLzIwMDEvWE1MU2NoZW1hXCIgeG1sbnM6eHNpPVwiaHR0cDovL3d3dy53My5vcmcvMjAwMS9Y
TUxTY2hlbWEtaW5zdGFuY2VcIiB0YXJnZXROYW1lc3BhY2U9XCJodHRwOi8vd3d3LmNhbXVuZGEu
b3JnL3Rlc3RcIj48cHJvY2VzcyBpZD1cImRhdGFfZmVlZGVyX3N5bmNfaW5jaWRlbnRzXCIgaXNF
eGVjdXRhYmxlPVwidHJ1ZVwiIG5hbWU9XCJEYXRhIEZlZWRlcjogU3luYyBJbmNpZGVudHNcIj48
ZG9jdW1lbnRhdGlvbj5TeW5jaHJvbml6ZSBJbmNpZGVudChzKSBhbmQgdGhlaXIgYXNzb2NpYXRl
ZCB0YXNrcywgbm90ZXMsIGF0dGFjaG1lbnRzLCBhcnRpZmFjdHMsIG1pbGVzdG9uZXMgYW5kIGFz
c29jaWF0ZWQgZGF0YXRhYmxlczwvZG9jdW1lbnRhdGlvbj48c3RhcnRFdmVudCBpZD1cIlN0YXJ0
RXZlbnRfMTU1YXN4bVwiPjxvdXRnb2luZz5TZXF1ZW5jZUZsb3dfMWd2bG52Zzwvb3V0Z29pbmc+
PC9zdGFydEV2ZW50PjxzZXJ2aWNlVGFzayBpZD1cIlNlcnZpY2VUYXNrXzB5b2Y3aGlcIiBuYW1l
PVwiRGF0YSBGZWVkZXI6IFN5bmMgSW5jaWRlbnRzXCIgcmVzaWxpZW50OnR5cGU9XCJmdW5jdGlv
blwiPjxleHRlbnNpb25FbGVtZW50cz48cmVzaWxpZW50OmZ1bmN0aW9uIHV1aWQ9XCI3ZmZlZDRl
NS03MmZiLTQxNjItYmRlZi00ZWEzZWJmYTg5ZGVcIj57XCJpbnB1dHNcIjp7fSxcInBvc3RfcHJv
Y2Vzc2luZ19zY3JpcHRcIjpcIiMgeyd2ZXJzaW9uJzogJzEuMCcsICdzdWNjZXNzJzogVHJ1ZSwg
J3JlYXNvbic6IE5vbmUsICdjb250ZW50JzogeydudW1fb2Zfc3luY19pbmNpZGVudHMnOiAyfSwg
J3Jhdyc6ICd7XFxcIm51bV9vZl9zeW5jX2luY2lkZW50c1xcXCI6IDJ9JywgJ2lucHV0cyc6IHsn
ZGZfbWF4X2luY2lkZW50X2lkJzogTm9uZSwgJ2RmX21pbl9pbmNpZGVudF9pZCc6IDB9LCAnbWV0
cmljcyc6IHsndmVyc2lvbic6ICcxLjAnLCAncGFja2FnZSc6ICd1bmtub3duJywgJ3BhY2thZ2Vf
dmVyc2lvbic6ICd1bmtub3duJywgJ2hvc3QnOiAnTWFya3MtTUJQLmZpb3Mtcm91dGVyLmhvbWUn
LCAnZXhlY3V0aW9uX3RpbWVfbXMnOiAyMDYyLCAndGltZXN0YW1wJzogJzIwMTktMDUtMTQgMjE6
Mzc6MDUnfX1cXG5pbmNpZGVudC5hZGROb3RlKFxcXCJEYXRhIEZlZWRlciBTeW5jXFxcXG5NaW46
IHt9IE1heDoge31cXFxcbkluY2lkZW50cyBTeW5jJ2Q6IHt9XFxcIi5mb3JtYXQoXFxuICAgICAg
IHJlc3VsdHNbJ2lucHV0cyddWydkZl9taW5faW5jaWRlbnRfaWQnXSwgXFxuICAgICAgIHJlc3Vs
dHNbJ2lucHV0cyddWydkZl9tYXhfaW5jaWRlbnRfaWQnXSxcXG4gICAgICAgcmVzdWx0c1snY29u
dGVudCddWydudW1fb2Zfc3luY19pbmNpZGVudHMnXSkpXCIsXCJwcmVfcHJvY2Vzc2luZ19zY3Jp
cHRcIjpcInRyeTpcXG4gIGlucHV0cy5kZl9taW5faW5jaWRlbnRfaWQgPSBydWxlLnByb3BlcnRp
ZXMuZGF0YV9mZWVkZXJfbWluaW11bV9pbmNpZGVudF9pZFxcbiAgaW5wdXRzLmRmX21heF9pbmNp
ZGVudF9pZCA9IHJ1bGUucHJvcGVydGllcy5kYXRhX2ZlZWRlcl9tYXhpbXVtX2luY2lkZW50X2lk
XFxuICBpbnB1dHMuZGZfcXVlcnlfYXBpX21ldGhvZCA9IHJ1bGUucHJvcGVydGllcy5xdWVyeV9h
cGlfbWV0aG9kXFxuZXhjZXB0OlxcbiAgaGVscGVyLmZhaWwoXFxcIlRoaXMgdmVyc2lvbiBvZiBS
ZXNpbGllbnQgY2Fubm90IHVzZSB0aGlzIGZ1bmN0aW9uXFxcIilcXG4gIFwiLFwicmVzdWx0X25h
bWVcIjpcIlwifTwvcmVzaWxpZW50OmZ1bmN0aW9uPjwvZXh0ZW5zaW9uRWxlbWVudHM+PGluY29t
aW5nPlNlcXVlbmNlRmxvd18xZ3ZsbnZnPC9pbmNvbWluZz48b3V0Z29pbmc+U2VxdWVuY2VGbG93
XzFnN2Q2OTc8L291dGdvaW5nPjwvc2VydmljZVRhc2s+PHNlcXVlbmNlRmxvdyBpZD1cIlNlcXVl
bmNlRmxvd18xZ3ZsbnZnXCIgc291cmNlUmVmPVwiU3RhcnRFdmVudF8xNTVhc3htXCIgdGFyZ2V0
UmVmPVwiU2VydmljZVRhc2tfMHlvZjdoaVwiLz48ZW5kRXZlbnQgaWQ9XCJFbmRFdmVudF8xdmd3
MThmXCI+PGluY29taW5nPlNlcXVlbmNlRmxvd18xZzdkNjk3PC9pbmNvbWluZz48L2VuZEV2ZW50
PjxzZXF1ZW5jZUZsb3cgaWQ9XCJTZXF1ZW5jZUZsb3dfMWc3ZDY5N1wiIHNvdXJjZVJlZj1cIlNl
cnZpY2VUYXNrXzB5b2Y3aGlcIiB0YXJnZXRSZWY9XCJFbmRFdmVudF8xdmd3MThmXCIvPjx0ZXh0
QW5ub3RhdGlvbiBpZD1cIlRleHRBbm5vdGF0aW9uXzFreHhpeXRcIj48dGV4dD5TdGFydCB5b3Vy
IHdvcmtmbG93IGhlcmU8L3RleHQ+PC90ZXh0QW5ub3RhdGlvbj48YXNzb2NpYXRpb24gaWQ9XCJB
c3NvY2lhdGlvbl8xc2V1ajQ4XCIgc291cmNlUmVmPVwiU3RhcnRFdmVudF8xNTVhc3htXCIgdGFy
Z2V0UmVmPVwiVGV4dEFubm90YXRpb25fMWt4eGl5dFwiLz48dGV4dEFubm90YXRpb24gaWQ9XCJU
ZXh0QW5ub3RhdGlvbl8wMzMzNGNiXCI+PHRleHQ+Q3JlYXRlcyBhbiBpbmNpZGVudCBub3RlIHdp
dGggbnVtYmVyIG9mIGluY2lkZW50cyBzeW5jaHJvbml6ZWQ8L3RleHQ+PC90ZXh0QW5ub3RhdGlv
bj48YXNzb2NpYXRpb24gaWQ9XCJBc3NvY2lhdGlvbl8wN3RidXprXCIgc291cmNlUmVmPVwiU2Vy
dmljZVRhc2tfMHlvZjdoaVwiIHRhcmdldFJlZj1cIlRleHRBbm5vdGF0aW9uXzAzMzM0Y2JcIi8+
PHRleHRBbm5vdGF0aW9uIGlkPVwiVGV4dEFubm90YXRpb25fMWx2YnY2MlwiPjx0ZXh0PklucHV0
IGZyb20gUnVsZSBhY3Rpdml0eSBmaWVsZHM8L3RleHQ+PC90ZXh0QW5ub3RhdGlvbj48YXNzb2Np
YXRpb24gaWQ9XCJBc3NvY2lhdGlvbl8wbmlpendkXCIgc291cmNlUmVmPVwiU2VydmljZVRhc2tf
MHlvZjdoaVwiIHRhcmdldFJlZj1cIlRleHRBbm5vdGF0aW9uXzFsdmJ2NjJcIi8+PC9wcm9jZXNz
PjxicG1uZGk6QlBNTkRpYWdyYW0gaWQ9XCJCUE1ORGlhZ3JhbV8xXCI+PGJwbW5kaTpCUE1OUGxh
bmUgYnBtbkVsZW1lbnQ9XCJ1bmRlZmluZWRcIiBpZD1cIkJQTU5QbGFuZV8xXCI+PGJwbW5kaTpC
UE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJTdGFydEV2ZW50XzE1NWFzeG1cIiBpZD1cIlN0YXJ0RXZl
bnRfMTU1YXN4bV9kaVwiPjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiMzZcIiB3aWR0aD1cIjM2XCIg
eD1cIjE2MlwiIHk9XCIxODhcIi8+PGJwbW5kaTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWln
aHQ9XCIwXCIgd2lkdGg9XCI5MFwiIHg9XCIxNTdcIiB5PVwiMjIzXCIvPjwvYnBtbmRpOkJQTU5M
YWJlbD48L2JwbW5kaTpCUE1OU2hhcGU+PGJwbW5kaTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJU
ZXh0QW5ub3RhdGlvbl8xa3h4aXl0XCIgaWQ9XCJUZXh0QW5ub3RhdGlvbl8xa3h4aXl0X2RpXCI+
PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIzMFwiIHdpZHRoPVwiMTAwXCIgeD1cIjk5XCIgeT1cIjI1
NFwiLz48L2JwbW5kaTpCUE1OU2hhcGU+PGJwbW5kaTpCUE1ORWRnZSBicG1uRWxlbWVudD1cIkFz
c29jaWF0aW9uXzFzZXVqNDhcIiBpZD1cIkFzc29jaWF0aW9uXzFzZXVqNDhfZGlcIj48b21nZGk6
d2F5cG9pbnQgeD1cIjE2OVwiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMjIwXCIvPjxv
bWdkaTp3YXlwb2ludCB4PVwiMTUzXCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIyNTRc
Ii8+PC9icG1uZGk6QlBNTkVkZ2U+PGJwbW5kaTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJTZXJ2
aWNlVGFza18weW9mN2hpXCIgaWQ9XCJTZXJ2aWNlVGFza18weW9mN2hpX2RpXCI+PG9tZ2RjOkJv
dW5kcyBoZWlnaHQ9XCI4MFwiIHdpZHRoPVwiMTAwXCIgeD1cIjI5MVwiIHk9XCIxNjZcIi8+PC9i
cG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTkVkZ2UgYnBtbkVsZW1lbnQ9XCJTZXF1ZW5jZUZs
b3dfMWd2bG52Z1wiIGlkPVwiU2VxdWVuY2VGbG93XzFndmxudmdfZGlcIj48b21nZGk6d2F5cG9p
bnQgeD1cIjE5OFwiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMjA2XCIvPjxvbWdkaTp3
YXlwb2ludCB4PVwiMjkxXCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIyMDZcIi8+PGJw
bW5kaTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIxM1wiIHdpZHRoPVwiMFwiIHg9
XCIyNDQuNVwiIHk9XCIxODRcIi8+PC9icG1uZGk6QlBNTkxhYmVsPjwvYnBtbmRpOkJQTU5FZGdl
PjxicG1uZGk6QlBNTlNoYXBlIGJwbW5FbGVtZW50PVwiRW5kRXZlbnRfMXZndzE4ZlwiIGlkPVwi
RW5kRXZlbnRfMXZndzE4Zl9kaVwiPjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiMzZcIiB3aWR0aD1c
IjM2XCIgeD1cIjQ2OC41MjcxNjQ2ODU5MDgzXCIgeT1cIjE4OFwiLz48YnBtbmRpOkJQTU5MYWJl
bD48b21nZGM6Qm91bmRzIGhlaWdodD1cIjEzXCIgd2lkdGg9XCIwXCIgeD1cIjQ4Ni41MjcxNjQ2
ODU5MDgzXCIgeT1cIjIyN1wiLz48L2JwbW5kaTpCUE1OTGFiZWw+PC9icG1uZGk6QlBNTlNoYXBl
PjxicG1uZGk6QlBNTkVkZ2UgYnBtbkVsZW1lbnQ9XCJTZXF1ZW5jZUZsb3dfMWc3ZDY5N1wiIGlk
PVwiU2VxdWVuY2VGbG93XzFnN2Q2OTdfZGlcIj48b21nZGk6d2F5cG9pbnQgeD1cIjM5MVwiIHhz
aTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMjA2XCIvPjxvbWdkaTp3YXlwb2ludCB4PVwiNDY5
XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIyMDZcIi8+PGJwbW5kaTpCUE1OTGFiZWw+
PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIxM1wiIHdpZHRoPVwiMFwiIHg9XCI0MzBcIiB5PVwiMTg0
XCIvPjwvYnBtbmRpOkJQTU5MYWJlbD48L2JwbW5kaTpCUE1ORWRnZT48YnBtbmRpOkJQTU5TaGFw
ZSBicG1uRWxlbWVudD1cIlRleHRBbm5vdGF0aW9uXzAzMzM0Y2JcIiBpZD1cIlRleHRBbm5vdGF0
aW9uXzAzMzM0Y2JfZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1cIjU5XCIgd2lkdGg9XCIxNzZc
IiB4PVwiMzg0XCIgeT1cIjY3XCIvPjwvYnBtbmRpOkJQTU5TaGFwZT48YnBtbmRpOkJQTU5FZGdl
IGJwbW5FbGVtZW50PVwiQXNzb2NpYXRpb25fMDd0YnV6a1wiIGlkPVwiQXNzb2NpYXRpb25fMDd0
YnV6a19kaVwiPjxvbWdkaTp3YXlwb2ludCB4PVwiMzg1XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2lu
dFwiIHk9XCIxNzBcIi8+PG9tZ2RpOndheXBvaW50IHg9XCI0MzhcIiB4c2k6dHlwZT1cIm9tZ2Rj
OlBvaW50XCIgeT1cIjEyNlwiLz48L2JwbW5kaTpCUE1ORWRnZT48YnBtbmRpOkJQTU5TaGFwZSBi
cG1uRWxlbWVudD1cIlRleHRBbm5vdGF0aW9uXzFsdmJ2NjJcIiBpZD1cIlRleHRBbm5vdGF0aW9u
XzFsdmJ2NjJfZGlcIj48b21nZGM6Qm91bmRzIGhlaWdodD1cIjQ2XCIgd2lkdGg9XCIxMzNcIiB4
PVwiMTQ1XCIgeT1cIjgyXCIvPjwvYnBtbmRpOkJQTU5TaGFwZT48YnBtbmRpOkJQTU5FZGdlIGJw
bW5FbGVtZW50PVwiQXNzb2NpYXRpb25fMG5paXp3ZFwiIGlkPVwiQXNzb2NpYXRpb25fMG5paXp3
ZF9kaVwiPjxvbWdkaTp3YXlwb2ludCB4PVwiMjk2XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwi
IHk9XCIxNzFcIi8+PG9tZ2RpOndheXBvaW50IHg9XCIyNDFcIiB4c2k6dHlwZT1cIm9tZ2RjOlBv
aW50XCIgeT1cIjEyOFwiLz48L2JwbW5kaTpCUE1ORWRnZT48L2JwbW5kaTpCUE1OUGxhbmU+PC9i
cG1uZGk6QlBNTkRpYWdyYW0+PC9kZWZpbml0aW9ucz4ifSwgImNvbnRlbnRfdmVyc2lvbiI6IDEs
ICJjcmVhdG9yX2lkIjogImFAZXhhbXBsZS5jb20iLCAiZGVzY3JpcHRpb24iOiAiU3luY2hyb25p
emUgSW5jaWRlbnQocykgYW5kIHRoZWlyIGFzc29jaWF0ZWQgdGFza3MsIG5vdGVzLCBhdHRhY2ht
ZW50cywgYXJ0aWZhY3RzLCBtaWxlc3RvbmVzIGFuZCBhc3NvY2lhdGVkIGRhdGF0YWJsZXMiLCAi
ZXhwb3J0X2tleSI6ICJkYXRhX2ZlZWRlcl9zeW5jX2luY2lkZW50cyIsICJsYXN0X21vZGlmaWVk
X2J5IjogImFAZXhhbXBsZS5jb20iLCAibGFzdF9tb2RpZmllZF90aW1lIjogMTU5MTcyMTQzMDgy
MSwgIm5hbWUiOiAiRGF0YSBGZWVkZXI6IFN5bmMgSW5jaWRlbnRzIiwgIm9iamVjdF90eXBlIjog
ImluY2lkZW50IiwgInByb2dyYW1tYXRpY19uYW1lIjogImRhdGFfZmVlZGVyX3N5bmNfaW5jaWRl
bnRzIiwgInRhZ3MiOiBbXSwgInV1aWQiOiAiNDMzNzA2YTUtMmI2MS00OGQ4LTliMTMtYjQyNDYy
YTRlOTA5IiwgIndvcmtmbG93X2lkIjogNTV9XSwgIndvcmtzcGFjZXMiOiBbXX0=
""")
