# -*- coding: utf-8 -*-
# (c) Copyright IBM Corp. 2018. All Rights Reserved.

"""Generate the Resilient customizations required for fn_twitter_most_popular"""

from __future__ import print_function
from resilient_circuits.util import *

def codegen_reload_data():
    """Parameters to codegen used to generate the fn_twitter_most_popular package"""
    reload_params = {"package": u"fn_twitter_most_popular",
                    "incident_fields": [], 
                    "action_fields": [], 
                    "function_params": [u"twitter_search_tweet_count", u"twitter_search_tweet_string"], 
                    "datatables": [], 
                    "message_destinations": [u"fn_twitter_most_popular"], 
                    "functions": [u"twitter_most_popular_tweets"], 
                    "phases": [], 
                    "automatic_tasks": [], 
                    "scripts": [], 
                    "workflows": [u"twitter_most_popular_tweets_for_tag"], 
                    "actions": [u"Get Popular Tweets For Specified Tag(s)"] 
                    }
    return reload_params


def customization_data(client=None):
    """Produce any customization definitions (types, fields, message destinations, etc)
       that should be installed by `resilient-circuits customize`
    """

    # This import data contains:
    #   Function inputs:
    #     twitter_search_tweet_count
    #     twitter_search_tweet_string
    #   Message Destinations:
    #     fn_twitter_most_popular
    #   Functions:
    #     twitter_most_popular_tweets
    #   Workflows:
    #     twitter_most_popular_tweets_for_tag
    #   Rules:
    #     Get Popular Tweets For Specified Tag(s)


    yield ImportDefinition(u"""
eyJpZCI6IDgsICJmaWVsZHMiOiBbeyJjaG9zZW4iOiBmYWxzZSwgImludGVybmFsIjogZmFsc2Us
ICJ1dWlkIjogImMzZjBlM2VkLTIxZTEtNGQ1My1hZmZiLWZlNWNhMzMwOGNjYSIsICJvcGVyYXRp
b25zIjogW10sICJ2YWx1ZXMiOiBbXSwgImNoYW5nZWFibGUiOiB0cnVlLCAiaWQiOiAzOCwgIm5h
bWUiOiAiaW5jX3RyYWluaW5nIiwgInRleHQiOiAiU2ltdWxhdGlvbiIsICJwcmVmaXgiOiBudWxs
LCAidHlwZV9pZCI6IDAsICJ0b29sdGlwIjogIldoZXRoZXIgdGhlIGluY2lkZW50IGlzIGEgc2lt
dWxhdGlvbiBvciBhIHJlZ3VsYXIgaW5jaWRlbnQuICBUaGlzIGZpZWxkIGlzIHJlYWQtb25seS4i
LCAiaW5wdXRfdHlwZSI6ICJib29sZWFuIiwgImhpZGVfbm90aWZpY2F0aW9uIjogZmFsc2UsICJk
ZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImJsYW5rX29wdGlvbiI6IGZhbHNlLCAi
b3BlcmF0aW9uX3Blcm1zIjoge30sICJyZWFkX29ubHkiOiB0cnVlLCAicmljaF90ZXh0IjogZmFs
c2UsICJleHBvcnRfa2V5IjogImluY2lkZW50L2luY190cmFpbmluZyIsICJ0ZW1wbGF0ZXMiOiBb
XX0sIHsiY2hvc2VuIjogZmFsc2UsICJpbnRlcm5hbCI6IGZhbHNlLCAidXVpZCI6ICJmNzlhNTQ0
MC0xN2QyLTQyM2ItOTFmZi1mMGQwZjg2ZGIyY2UiLCAib3BlcmF0aW9ucyI6IFtdLCAidmFsdWVz
IjogW10sICJjaGFuZ2VhYmxlIjogdHJ1ZSwgImlkIjogMTIxLCAibmFtZSI6ICJ0d2l0dGVyX3Nl
YXJjaF90d2VldF9jb3VudCIsICJ0ZXh0IjogInR3aXR0ZXJfc2VhcmNoX3R3ZWV0X2NvdW50Iiwg
InByZWZpeCI6IG51bGwsICJ0eXBlX2lkIjogMTEsICJ0b29sdGlwIjogIkEgbnVtYmVyIG9mIHR3
ZWV0cyB0byBiZSByZXR1cm5lZCBieSB0aGUgZnVuY3Rpb24uIElmIG5vIHZhbHVlIGlzIHByb3Zp
ZGVkLCBkZWZhdWx0cyB0byAxNS4iLCAicGxhY2Vob2xkZXIiOiAiMTUiLCAiaW5wdXRfdHlwZSI6
ICJudW1iZXIiLCAiaGlkZV9ub3RpZmljYXRpb24iOiBmYWxzZSwgImRlZmF1bHRfY2hvc2VuX2J5
X3NlcnZlciI6IGZhbHNlLCAiYmxhbmtfb3B0aW9uIjogZmFsc2UsICJvcGVyYXRpb25fcGVybXMi
OiB7fSwgInJlYWRfb25seSI6IGZhbHNlLCAicmljaF90ZXh0IjogZmFsc2UsICJleHBvcnRfa2V5
IjogIl9fZnVuY3Rpb24vdHdpdHRlcl9zZWFyY2hfdHdlZXRfY291bnQiLCAidGVtcGxhdGVzIjog
W119LCB7ImNob3NlbiI6IGZhbHNlLCAiaW50ZXJuYWwiOiBmYWxzZSwgInV1aWQiOiAiZDdiNDFk
NDQtMzVlOS00YzRhLTljNzktNmMzZjBmYTZhNDAxIiwgIm9wZXJhdGlvbnMiOiBbXSwgInZhbHVl
cyI6IFtdLCAiY2hhbmdlYWJsZSI6IHRydWUsICJpZCI6IDEyMiwgIm5hbWUiOiAidHdpdHRlcl9z
ZWFyY2hfdHdlZXRfc3RyaW5nIiwgInRleHQiOiAidHdpdHRlcl9zZWFyY2hfdHdlZXRfc3RyaW5n
IiwgInByZWZpeCI6IG51bGwsICJ0eXBlX2lkIjogMTEsICJ0b29sdGlwIjogIkEgbnVtYmVyIG9m
IGhhc2h0YWdzIHRvIHF1ZXJ5IGZvciBwb3B1bGFyIHR3ZWV0cy4gSW5wdXQgaXMgYSBKU09OIE9i
amVjdCIsICJwbGFjZWhvbGRlciI6ICJ7IFwiaGFzaHRhZ3NcIjpbIFwiTWFsd2FyZVwiXSB9Iiwg
ImlucHV0X3R5cGUiOiAidGV4dGFyZWEiLCAicmVxdWlyZWQiOiAiYWx3YXlzIiwgImhpZGVfbm90
aWZpY2F0aW9uIjogZmFsc2UsICJkZWZhdWx0X2Nob3Nlbl9ieV9zZXJ2ZXIiOiBmYWxzZSwgImJs
YW5rX29wdGlvbiI6IGZhbHNlLCAib3BlcmF0aW9uX3Blcm1zIjoge30sICJyZWFkX29ubHkiOiBm
YWxzZSwgInJpY2hfdGV4dCI6IGZhbHNlLCAiZXhwb3J0X2tleSI6ICJfX2Z1bmN0aW9uL3R3aXR0
ZXJfc2VhcmNoX3R3ZWV0X3N0cmluZyIsICJ0ZW1wbGF0ZXMiOiBbeyJ1dWlkIjogImRlOTFlOGM2
LWJhYmQtNDFiZS05OGVlLTQzY2ViODgxZjU3ZSIsICJpZCI6IDYsICJuYW1lIjogIk1hbHdhcmUg
TW9zdCBQb3B1bGFyIiwgInRlbXBsYXRlIjogeyJmb3JtYXQiOiAidGV4dCIsICJjb250ZW50Ijog
IntcblwiaGFzaHRhZ3NcIjpbIFwiTWFsd2FyZVwiXVxufSJ9fSwgeyJ1dWlkIjogIjJiYTBiNTE1
LWYxZWYtNDE3NC1iOWJhLWFjYTZlNTIwZWU3MyIsICJpZCI6IDQsICJuYW1lIjogIkNyeXB0b2N1
cnJlbmN5IiwgInRlbXBsYXRlIjogeyJmb3JtYXQiOiAidGV4dCIsICJjb250ZW50IjogIntcblwi
aGFzaHRhZ3NcIjpbIFwiQ3J5cHRvY3VycmVuY3lcIl1cbn0ifX0sIHsidXVpZCI6ICI1YWVlYjYw
MS1jMDBjLTQ4NzgtYjNkYy02NTY5YmRlMjVkOWMiLCAiaWQiOiA1LCAibmFtZSI6ICI1IHR5cGVz
IG9mIFRocmVhdHMiLCAidGVtcGxhdGUiOiB7ImZvcm1hdCI6ICJ0ZXh0IiwgImNvbnRlbnQiOiAi
e1xuXCJoYXNodGFnc1wiOlsgXCJNYWdlY2FydFwiLCBcIldhbm5hY3J5XCIsIFwiU3BlY3RyZVwi
LCBcIlhGVEFTXCIsIFwiRW1vdGV0XCJdXG59In19LCB7InV1aWQiOiAiYzIwZTE3ZGYtYjI1Ni00
YzQzLThmMjctYmNiMTVhOWQ3NzI4IiwgImlkIjogMywgIm5hbWUiOiAiQm90bmV0LCBDeWJlcnNl
Y3VyaXR5LCBNYWx3YXJlIiwgInRlbXBsYXRlIjogeyJmb3JtYXQiOiAidGV4dCIsICJjb250ZW50
IjogIntcblwiaGFzaHRhZ3NcIjpbIFwiQm90bmV0XCIsIFwiQ3liZXJzZWN1cml0eVwiLCBcIk1h
bHdhcmVcIl1cbn0ifX1dfV0sICJwaGFzZXMiOiBbXSwgIm92ZXJyaWRlcyI6IFtdLCAiYWN0aW9u
cyI6IFt7ImlkIjogMzcsICJuYW1lIjogIkdldCBQb3B1bGFyIFR3ZWV0cyBGb3IgU3BlY2lmaWVk
IFRhZyhzKSIsICJ0eXBlIjogMSwgIm9iamVjdF90eXBlIjogImluY2lkZW50IiwgImNvbmRpdGlv
bnMiOiBbXSwgImF1dG9tYXRpb25zIjogW10sICJtZXNzYWdlX2Rlc3RpbmF0aW9ucyI6IFtdLCAi
d29ya2Zsb3dzIjogWyJ0d2l0dGVyX21vc3RfcG9wdWxhcl90d2VldHNfZm9yX3RhZyJdLCAidmll
d19pdGVtcyI6IFtdLCAidGltZW91dF9zZWNvbmRzIjogODY0MDAsICJ1dWlkIjogIjM3YzUxMDQ4
LTY0MzEtNDg0NC1iODhjLTlhZmEyYTUxYjc2NCIsICJleHBvcnRfa2V5IjogIkdldCBQb3B1bGFy
IFR3ZWV0cyBGb3IgU3BlY2lmaWVkIFRhZyhzKSIsICJsb2dpY190eXBlIjogImFsbCJ9XSwgImxh
eW91dHMiOiBbXSwgIm5vdGlmaWNhdGlvbnMiOiBudWxsLCAidGltZWZyYW1lcyI6IG51bGwsICJp
bmR1c3RyaWVzIjogbnVsbCwgInJlZ3VsYXRvcnMiOiBudWxsLCAiZ2VvcyI6IG51bGwsICJmdW5j
dGlvbnMiOiBbeyJpZCI6IDI1LCAibmFtZSI6ICJ0d2l0dGVyX21vc3RfcG9wdWxhcl90d2VldHMi
LCAiZGVzY3JpcHRpb24iOiB7ImZvcm1hdCI6ICJ0ZXh0IiwgImNvbnRlbnQiOiAiQSBmdW5jdGlv
biB3aGljaCB0YXJnZXRzIHRoZSBUd2l0dGVyIFNlYXJjaCBBUEkuIFRha2VzIGluIGFuIGlucHV0
IG9mIGEgbXVsdGlwbGUgcG9zc2libGUgaGFzaHRhZ3MgYW5kIGEgbnVtYmVyIG9mIFR3ZWV0cyB0
byBiZSByZXR1cm5lZCBhbmQgY29udGFjdHMgdGhlIFR3aXR0ZXIgU2VhcmNoIEFQSSB0byByZXR1
cm4gdGhlIHJlc3VsdHMuIFJlcXVpcmVzIFR3aXR0ZXIgQWNjZXNzIEtleSBhbmQgU2VjcmV0IHRv
IG9idGFpbiBhIE9BdXRoMiByZWFkLW9ubHkgdG9rZW4uIn0sICJ1dWlkIjogImE3ZjUzOGNmLWEw
N2MtNGQ3NS05NWVjLTk0YzFhYmFhZTQ1MCIsICJ2ZXJzaW9uIjogMSwgImNyZWF0b3IiOiB7Imlk
IjogMiwgInR5cGUiOiAidXNlciIsICJuYW1lIjogImFAYS5jb20iLCAiZGlzcGxheV9uYW1lIjog
IlJlc2lsaWVudCBTeXNhZG1pbiJ9LCAid29ya2Zsb3dzIjogW3siZGVzY3JpcHRpb24iOiBudWxs
LCAidXVpZCI6IG51bGwsICJ3b3JrZmxvd19pZCI6IDIyLCAibmFtZSI6ICJFeGFtcGxlIFR3aXR0
ZXI6IFBvcHVsYXIgVHdlZXRzIEZvciBUYWcocykiLCAicHJvZ3JhbW1hdGljX25hbWUiOiAidHdp
dHRlcl9tb3N0X3BvcHVsYXJfdHdlZXRzX2Zvcl90YWciLCAib2JqZWN0X3R5cGUiOiAiaW5jaWRl
bnQiLCAiYWN0aW9ucyI6IFtdfV0sICJkaXNwbGF5X25hbWUiOiAiR2V0IFBvcHVsYXIgVHdlZXRz
IEZvciBTcGVjaWZpZWQgVGFnKHMpIiwgImRlc3RpbmF0aW9uX2hhbmRsZSI6ICJmbl90d2l0dGVy
X21vc3RfcG9wdWxhciIsICJleHBvcnRfa2V5IjogInR3aXR0ZXJfbW9zdF9wb3B1bGFyX3R3ZWV0
cyIsICJsYXN0X21vZGlmaWVkX2J5IjogeyJpZCI6IDIsICJ0eXBlIjogInVzZXIiLCAibmFtZSI6
ICJhQGEuY29tIiwgImRpc3BsYXlfbmFtZSI6ICJSZXNpbGllbnQgU3lzYWRtaW4ifSwgImxhc3Rf
bW9kaWZpZWRfdGltZSI6IDE1NDExNzk1MDU1NTgsICJ2aWV3X2l0ZW1zIjogW3sic3RlcF9sYWJl
bCI6IG51bGwsICJzaG93X2lmIjogbnVsbCwgImVsZW1lbnQiOiAiZmllbGRfdXVpZCIsICJmaWVs
ZF90eXBlIjogIl9fZnVuY3Rpb24iLCAiY29udGVudCI6ICJkN2I0MWQ0NC0zNWU5LTRjNGEtOWM3
OS02YzNmMGZhNmE0MDEiLCAic2hvd19saW5rX2hlYWRlciI6IGZhbHNlfSwgeyJzdGVwX2xhYmVs
IjogbnVsbCwgInNob3dfaWYiOiBudWxsLCAiZWxlbWVudCI6ICJmaWVsZF91dWlkIiwgImZpZWxk
X3R5cGUiOiAiX19mdW5jdGlvbiIsICJjb250ZW50IjogImY3OWE1NDQwLTE3ZDItNDIzYi05MWZm
LWYwZDBmODZkYjJjZSIsICJzaG93X2xpbmtfaGVhZGVyIjogZmFsc2V9XX1dLCAic2VydmVyX3Zl
cnNpb24iOiB7Im1ham9yIjogMzAsICJtaW5vciI6IDAsICJidWlsZF9udW1iZXIiOiAzNDc2LCAi
dmVyc2lvbiI6ICIzMC4wLjM0NzYifSwgImV4cG9ydF9mb3JtYXRfdmVyc2lvbiI6IDIsICJleHBv
cnRfZGF0ZSI6IDE1NDExODcyNzQ4MTMsICJpbmNpZGVudF90eXBlcyI6IFt7InVwZGF0ZV9kYXRl
IjogMTU0MTQyMjI2ODg3MCwgImNyZWF0ZV9kYXRlIjogMTU0MTQyMjI2ODg3MCwgInV1aWQiOiAi
YmZlZWMyZDQtMzc3MC0xMWU4LWFkMzktNGEwMDA0MDQ0YWEwIiwgImRlc2NyaXB0aW9uIjogIkN1
c3RvbWl6YXRpb24gUGFja2FnZXMgKGludGVybmFsKSIsICJleHBvcnRfa2V5IjogIkN1c3RvbWl6
YXRpb24gUGFja2FnZXMgKGludGVybmFsKSIsICJuYW1lIjogIkN1c3RvbWl6YXRpb24gUGFja2Fn
ZXMgKGludGVybmFsKSIsICJlbmFibGVkIjogZmFsc2UsICJzeXN0ZW0iOiBmYWxzZSwgInBhcmVu
dF9pZCI6IG51bGwsICJoaWRkZW4iOiBmYWxzZSwgImlkIjogMH1dLCAiYXV0b21hdGljX3Rhc2tz
IjogW10sICJtZXNzYWdlX2Rlc3RpbmF0aW9ucyI6IFt7Im5hbWUiOiAiZm5fdHdpdHRlcl9tb3N0
X3BvcHVsYXIiLCAicHJvZ3JhbW1hdGljX25hbWUiOiAiZm5fdHdpdHRlcl9tb3N0X3BvcHVsYXIi
LCAiZGVzdGluYXRpb25fdHlwZSI6IDAsICJleHBlY3RfYWNrIjogdHJ1ZSwgInVzZXJzIjogWyJh
QGEuY29tIl0sICJ1dWlkIjogImZjYTVmMjc3LTgzNWUtNDkwNS1hMGQ3LTQ3YmM5Y2ExMTdkOCIs
ICJleHBvcnRfa2V5IjogImZuX3R3aXR0ZXJfbW9zdF9wb3B1bGFyIn1dLCAidGFza19vcmRlciI6
IFtdLCAiYWN0aW9uX29yZGVyIjogW10sICJ0eXBlcyI6IFtdLCAic2NyaXB0cyI6IFtdLCAiaW5j
aWRlbnRfYXJ0aWZhY3RfdHlwZXMiOiBbXSwgIndvcmtmbG93cyI6IFt7ImRlc2NyaXB0aW9uIjog
IkFuIGV4YW1wbGUgd29ya2Zsb3cgd2hpY2ggaXMgdXNlZCB0byByZXRyaWV2ZSBhIG51bWJlciBv
ZiBwb3B1bGFyIHR3ZWV0cyBmb3IgMSBvciBtb3JlIHByb3ZpZGVkIHRhZ3MuIERlZmF1bHQgYW1v
dW50IHJldHVybmVkIGlzIDE1IGhvd2V2ZXIgdGhpcyBpcyBjdXN0b21pemFibGUgdXNpbmcgYW4g
aW5wdXQgdmFyaWFibGUuIEhhcmQgbGltaXQgaXMgMTAwLiBBZGRzIGEgcmljaCB0ZXh0IG5vdGUg
dG8gdGhlIGluY2lkZW50IHdpdGggdGhlIHJldHJpZXZlZCB0d2VldHMiLCAidXVpZCI6ICJlMDM5
NjlhNS00OTM1LTRkY2QtYmM2MS1jMTg3MzBmOWUzNTAiLCAid29ya2Zsb3dfaWQiOiAyMiwgIm5h
bWUiOiAiRXhhbXBsZSBUd2l0dGVyOiBQb3B1bGFyIFR3ZWV0cyBGb3IgVGFnKHMpIiwgInByb2dy
YW1tYXRpY19uYW1lIjogInR3aXR0ZXJfbW9zdF9wb3B1bGFyX3R3ZWV0c19mb3JfdGFnIiwgIm9i
amVjdF90eXBlIjogImluY2lkZW50IiwgImNyZWF0b3JfaWQiOiAiYUBhLmNvbSIsICJsYXN0X21v
ZGlmaWVkX2J5IjogImFAYS5jb20iLCAibGFzdF9tb2RpZmllZF90aW1lIjogMTU0MTE4NzA0OTE5
OSwgImV4cG9ydF9rZXkiOiAidHdpdHRlcl9tb3N0X3BvcHVsYXJfdHdlZXRzX2Zvcl90YWciLCAi
Y29udGVudCI6IHsieG1sIjogIjw/eG1sIHZlcnNpb249XCIxLjBcIiBlbmNvZGluZz1cIlVURi04
XCI/PjxkZWZpbml0aW9ucyB4bWxucz1cImh0dHA6Ly93d3cub21nLm9yZy9zcGVjL0JQTU4vMjAx
MDA1MjQvTU9ERUxcIiB4bWxuczpicG1uZGk9XCJodHRwOi8vd3d3Lm9tZy5vcmcvc3BlYy9CUE1O
LzIwMTAwNTI0L0RJXCIgeG1sbnM6b21nZGM9XCJodHRwOi8vd3d3Lm9tZy5vcmcvc3BlYy9ERC8y
MDEwMDUyNC9EQ1wiIHhtbG5zOm9tZ2RpPVwiaHR0cDovL3d3dy5vbWcub3JnL3NwZWMvREQvMjAx
MDA1MjQvRElcIiB4bWxuczpyZXNpbGllbnQ9XCJodHRwOi8vcmVzaWxpZW50LmlibS5jb20vYnBt
blwiIHhtbG5zOnhzZD1cImh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hXCIgeG1sbnM6
eHNpPVwiaHR0cDovL3d3dy53My5vcmcvMjAwMS9YTUxTY2hlbWEtaW5zdGFuY2VcIiB0YXJnZXRO
YW1lc3BhY2U9XCJodHRwOi8vd3d3LmNhbXVuZGEub3JnL3Rlc3RcIj48cHJvY2VzcyBpZD1cInR3
aXR0ZXJfbW9zdF9wb3B1bGFyX3R3ZWV0c19mb3JfdGFnXCIgaXNFeGVjdXRhYmxlPVwidHJ1ZVwi
IG5hbWU9XCJFeGFtcGxlIFR3aXR0ZXI6IFBvcHVsYXIgVHdlZXRzIEZvciBUYWcocylcIj48ZG9j
dW1lbnRhdGlvbj5BbiBleGFtcGxlIHdvcmtmbG93IHdoaWNoIGlzIHVzZWQgdG8gcmV0cmlldmUg
YSBudW1iZXIgb2YgcG9wdWxhciB0d2VldHMgZm9yIDEgb3IgbW9yZSBwcm92aWRlZCB0YWdzLiBE
ZWZhdWx0IGFtb3VudCByZXR1cm5lZCBpcyAxNSBob3dldmVyIHRoaXMgaXMgY3VzdG9taXphYmxl
IHVzaW5nIGFuIGlucHV0IHZhcmlhYmxlLiBIYXJkIGxpbWl0IGlzIDEwMC4gQWRkcyBhIHJpY2gg
dGV4dCBub3RlIHRvIHRoZSBpbmNpZGVudCB3aXRoIHRoZSByZXRyaWV2ZWQgdHdlZXRzPC9kb2N1
bWVudGF0aW9uPjxzdGFydEV2ZW50IGlkPVwiU3RhcnRFdmVudF8xNTVhc3htXCI+PG91dGdvaW5n
PlNlcXVlbmNlRmxvd18wcnhjamR0PC9vdXRnb2luZz48L3N0YXJ0RXZlbnQ+PHNlcnZpY2VUYXNr
IGlkPVwiU2VydmljZVRhc2tfMTI5eHViOVwiIG5hbWU9XCJHZXQgUG9wdWxhciBUd2VldHMgRm9y
IFNwZWNpZmllZCAuLi5cIiByZXNpbGllbnQ6dHlwZT1cImZ1bmN0aW9uXCI+PGV4dGVuc2lvbkVs
ZW1lbnRzPjxyZXNpbGllbnQ6ZnVuY3Rpb24gdXVpZD1cImE3ZjUzOGNmLWEwN2MtNGQ3NS05NWVj
LTk0YzFhYmFhZTQ1MFwiPntcImlucHV0c1wiOntcImQ3YjQxZDQ0LTM1ZTktNGM0YS05Yzc5LTZj
M2YwZmE2YTQwMVwiOntcImlucHV0X3R5cGVcIjpcInN0YXRpY1wiLFwic3RhdGljX2lucHV0XCI6
e1wibXVsdGlzZWxlY3RfdmFsdWVcIjpbXSxcInRleHRfY29udGVudF92YWx1ZVwiOntcImZvcm1h
dFwiOlwidGV4dFwiLFwiY29udGVudFwiOlwie1xcblxcXCJoYXNodGFnc1xcXCI6WyBcXFwiTWFn
ZWNhcnRcXFwiLCBcXFwiV2FubmFjcnlcXFwiLCBcXFwiU3BlY3RyZVxcXCIsIFxcXCJYRlRBU1xc
XCIsIFxcXCJFbW90ZXRcXFwiXVxcbn1cIn19fSxcImY3OWE1NDQwLTE3ZDItNDIzYi05MWZmLWYw
ZDBmODZkYjJjZVwiOntcImlucHV0X3R5cGVcIjpcInN0YXRpY1wiLFwic3RhdGljX2lucHV0XCI6
e1wibXVsdGlzZWxlY3RfdmFsdWVcIjpbXSxcIm51bWJlcl92YWx1ZVwiOjV9fX0sXCJwb3N0X3By
b2Nlc3Npbmdfc2NyaXB0XCI6XCJcXG5cXFwiXFxcIlxcXCJcXG5FeGFtcGxlIG9mIHRoZSByZXN1
bHRzIHJldHVybmVkIGJ5IHRoaXMgd29ya2Zsb3cuXFxuXFxucmVzdWx0cyA9IHtcXG4gIHN1Y2Nl
c3MgPSBUcnVlLFxcbiAgaW5wdXRzIDp7XFxuICAgIHR3aXR0ZXJfc2VhcmNoX3R3ZWV0X3N0cmlu
ZzogJ3tcXFwiaGFzaHRhZ3NcXFwiOlsgXFxcIk1hbHdhcmVcXFwiLCBcXFwiUmFuc29td2FyZVxc
XCIsIFxcXCJQaGlzaGluZ1xcXCJdfScsXFxuICAgIHR3aXR0ZXJfc2VhcmNoX3R3ZWV0X2NvdW50
OiAxMFxcbiAgfVxcbiAgdHdlZXRzOiB7XFxuICAgIHN0YXR1c2VzOiBbe1xcbiAgICAgIHRleHQ6
IFxcXCJIZWxsbyBXb3JsZFxcXCIsXFxuICAgICAgaWRfc3RyOiBcXFwiMTIzXFxcIixcXG4gICAg
ICBlbnRpdGllczoge1xcbiAgICAgICAgICB1cmxzOlt7XFxuICAgICAgICAgICAgdXJsIDogXFxc
Imh0dHBzOi8vdHdpdHRlci5jb20vaS93ZWIvc3RhdHVzLzEyM1xcXCJcXG4gICAgICAgICAgfV1c
XG4gICAgICAgIH0sXFxuICAgICAgICAuLi5PdGhlckF0dHJpYnV0ZXNcXG4gICAgICB9XFxuICAg
IH1dXFxuICB9XFxufVxcblxcXCJcXFwiXFxcIlxcblxcbiNQcmVwYXJlIHRoZSBzdGFydCBvZiB0
aGUgbm90ZSB0ZXh0XFxubm90ZVRleHQgPSB1XFxcIlxcXCJcXFwiJmx0O2JyJmd0OyZsdDtiJmd0
O1R3aXR0ZXIgU2VhcmNoOiZsdDsvYiZndDtcXG4gICAgICAgICAgICAgICAgJmx0O2ImZ3Q7U2Vh
cmNoZWQgVGFnczogJmx0Oy9iJmd0O3swfVxcXCJcXFwiXFxcIi5mb3JtYXQocmVzdWx0c1tcXFwi
aW5wdXRzXFxcIl1bXFxcInR3aXR0ZXJfc2VhcmNoX3R3ZWV0X3N0cmluZ1xcXCJdKVxcblxcbmlm
IChyZXN1bHRzLnN1Y2Nlc3MpOlxcbiAgIyBGb3IgZWFjaCByZXR1cm5lZCB0d2VldCBhZGQgdGhl
IHRleHQgYW5kIFVSTCBvZiB0aGUgdHdlZXQgdG8gdGhlIG5vdGVUZXh0XFxuICBmb3IgdHdlZXQg
aW4gcmVzdWx0cy50d2VldHNbXFxcInN0YXR1c2VzXFxcIl06XFxuICAgIG5vdGVUZXh0ICs9IHVc
XFwiXFxcIlxcXCImbHQ7YnImZ3Q7Jmx0O2JyJmd0OyZsdDtiJmd0O1R3ZWV0IFRleHQ6Jmx0Oy9i
Jmd0OyZsdDticiZndDt7MH1cXG4gICAgJmx0O2ImZ3Q7VHdlZXQgVVJMJmx0Oy9iJmd0OzogJmx0
O2EgaHJlZj1cXFwiezF9XFxcIiZndDt7MX0mbHQ7L2EmZ3Q7XFxcIlxcXCJcXFwiLmZvcm1hdCh0
d2VldFtcXFwiZnVsbF90ZXh0XFxcIl0sdVxcXCJodHRwczovL3R3aXR0ZXIuY29tL2kvd2ViL3N0
YXR1cy97MH1cXFwiLmZvcm1hdCh0d2VldFtcXFwiaWRfc3RyXFxcIl0pKSBcXG5lbHNlOlxcbiAg
bm90ZVRleHQgKz0gdVxcXCJcXFwiXFxcIiZsdDtiJmd0O05vIFJlc3VsdHMgZm91bmQmbHQ7L2Im
Z3Q7XFxcIlxcXCJcXFwiXFxuIyBOb3cgYWRkIHRoZSBub3RlIHRvIG91ciBpbmNpZGVudFxcbmlu
Y2lkZW50LmFkZE5vdGUoaGVscGVyLmNyZWF0ZVJpY2hUZXh0KG5vdGVUZXh0KSlcIn08L3Jlc2ls
aWVudDpmdW5jdGlvbj48L2V4dGVuc2lvbkVsZW1lbnRzPjxpbmNvbWluZz5TZXF1ZW5jZUZsb3df
MHJ4Y2pkdDwvaW5jb21pbmc+PG91dGdvaW5nPlNlcXVlbmNlRmxvd18wc2Y5dHd5PC9vdXRnb2lu
Zz48L3NlcnZpY2VUYXNrPjxlbmRFdmVudCBpZD1cIkVuZEV2ZW50XzA2YTFzajJcIj48aW5jb21p
bmc+U2VxdWVuY2VGbG93XzBzZjl0d3k8L2luY29taW5nPjwvZW5kRXZlbnQ+PHNlcXVlbmNlRmxv
dyBpZD1cIlNlcXVlbmNlRmxvd18wcnhjamR0XCIgc291cmNlUmVmPVwiU3RhcnRFdmVudF8xNTVh
c3htXCIgdGFyZ2V0UmVmPVwiU2VydmljZVRhc2tfMTI5eHViOVwiLz48c2VxdWVuY2VGbG93IGlk
PVwiU2VxdWVuY2VGbG93XzBzZjl0d3lcIiBzb3VyY2VSZWY9XCJTZXJ2aWNlVGFza18xMjl4dWI5
XCIgdGFyZ2V0UmVmPVwiRW5kRXZlbnRfMDZhMXNqMlwiLz48dGV4dEFubm90YXRpb24gaWQ9XCJU
ZXh0QW5ub3RhdGlvbl8xa3h4aXl0XCI+PHRleHQ+U3RhcnQgeW91ciB3b3JrZmxvdyBoZXJlPC90
ZXh0PjwvdGV4dEFubm90YXRpb24+PGFzc29jaWF0aW9uIGlkPVwiQXNzb2NpYXRpb25fMXNldWo0
OFwiIHNvdXJjZVJlZj1cIlN0YXJ0RXZlbnRfMTU1YXN4bVwiIHRhcmdldFJlZj1cIlRleHRBbm5v
dGF0aW9uXzFreHhpeXRcIi8+PC9wcm9jZXNzPjxicG1uZGk6QlBNTkRpYWdyYW0gaWQ9XCJCUE1O
RGlhZ3JhbV8xXCI+PGJwbW5kaTpCUE1OUGxhbmUgYnBtbkVsZW1lbnQ9XCJ1bmRlZmluZWRcIiBp
ZD1cIkJQTU5QbGFuZV8xXCI+PGJwbW5kaTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJTdGFydEV2
ZW50XzE1NWFzeG1cIiBpZD1cIlN0YXJ0RXZlbnRfMTU1YXN4bV9kaVwiPjxvbWdkYzpCb3VuZHMg
aGVpZ2h0PVwiMzZcIiB3aWR0aD1cIjM2XCIgeD1cIjE5MlwiIHk9XCIxODhcIi8+PGJwbW5kaTpC
UE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIwXCIgd2lkdGg9XCI5MFwiIHg9XCIxODdc
IiB5PVwiMjIzXCIvPjwvYnBtbmRpOkJQTU5MYWJlbD48L2JwbW5kaTpCUE1OU2hhcGU+PGJwbW5k
aTpCUE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJUZXh0QW5ub3RhdGlvbl8xa3h4aXl0XCIgaWQ9XCJU
ZXh0QW5ub3RhdGlvbl8xa3h4aXl0X2RpXCI+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIzMFwiIHdp
ZHRoPVwiMTAwXCIgeD1cIjk5XCIgeT1cIjI1NFwiLz48L2JwbW5kaTpCUE1OU2hhcGU+PGJwbW5k
aTpCUE1ORWRnZSBicG1uRWxlbWVudD1cIkFzc29jaWF0aW9uXzFzZXVqNDhcIiBpZD1cIkFzc29j
aWF0aW9uXzFzZXVqNDhfZGlcIj48b21nZGk6d2F5cG9pbnQgeD1cIjE5NlwiIHhzaTp0eXBlPVwi
b21nZGM6UG9pbnRcIiB5PVwiMjE3XCIvPjxvbWdkaTp3YXlwb2ludCB4PVwiMTYwXCIgeHNpOnR5
cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIyNTRcIi8+PC9icG1uZGk6QlBNTkVkZ2U+PGJwbW5kaTpC
UE1OU2hhcGUgYnBtbkVsZW1lbnQ9XCJTZXJ2aWNlVGFza18xMjl4dWI5XCIgaWQ9XCJTZXJ2aWNl
VGFza18xMjl4dWI5X2RpXCI+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCI4MFwiIHdpZHRoPVwiMTAw
XCIgeD1cIjQxOVwiIHk9XCIxNjZcIi8+PC9icG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTlNo
YXBlIGJwbW5FbGVtZW50PVwiRW5kRXZlbnRfMDZhMXNqMlwiIGlkPVwiRW5kRXZlbnRfMDZhMXNq
Ml9kaVwiPjxvbWdkYzpCb3VuZHMgaGVpZ2h0PVwiMzZcIiB3aWR0aD1cIjM2XCIgeD1cIjY4OVwi
IHk9XCIxODhcIi8+PGJwbW5kaTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIxM1wi
IHdpZHRoPVwiOTBcIiB4PVwiNjYyXCIgeT1cIjIyN1wiLz48L2JwbW5kaTpCUE1OTGFiZWw+PC9i
cG1uZGk6QlBNTlNoYXBlPjxicG1uZGk6QlBNTkVkZ2UgYnBtbkVsZW1lbnQ9XCJTZXF1ZW5jZUZs
b3dfMHJ4Y2pkdFwiIGlkPVwiU2VxdWVuY2VGbG93XzByeGNqZHRfZGlcIj48b21nZGk6d2F5cG9p
bnQgeD1cIjIyOFwiIHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMjA2XCIvPjxvbWdkaTp3
YXlwb2ludCB4PVwiNDE5XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIyMDZcIi8+PGJw
bW5kaTpCUE1OTGFiZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIxM1wiIHdpZHRoPVwiOTBcIiB4
PVwiMjc4LjVcIiB5PVwiMTg0LjVcIi8+PC9icG1uZGk6QlBNTkxhYmVsPjwvYnBtbmRpOkJQTU5F
ZGdlPjxicG1uZGk6QlBNTkVkZ2UgYnBtbkVsZW1lbnQ9XCJTZXF1ZW5jZUZsb3dfMHNmOXR3eVwi
IGlkPVwiU2VxdWVuY2VGbG93XzBzZjl0d3lfZGlcIj48b21nZGk6d2F5cG9pbnQgeD1cIjUxOVwi
IHhzaTp0eXBlPVwib21nZGM6UG9pbnRcIiB5PVwiMjA2XCIvPjxvbWdkaTp3YXlwb2ludCB4PVwi
Njg5XCIgeHNpOnR5cGU9XCJvbWdkYzpQb2ludFwiIHk9XCIyMDZcIi8+PGJwbW5kaTpCUE1OTGFi
ZWw+PG9tZ2RjOkJvdW5kcyBoZWlnaHQ9XCIxM1wiIHdpZHRoPVwiOTBcIiB4PVwiNTU5XCIgeT1c
IjE4NC41XCIvPjwvYnBtbmRpOkJQTU5MYWJlbD48L2JwbW5kaTpCUE1ORWRnZT48L2JwbW5kaTpC
UE1OUGxhbmU+PC9icG1uZGk6QlBNTkRpYWdyYW0+PC9kZWZpbml0aW9ucz4iLCAidmVyc2lvbiI6
IDEzLCAid29ya2Zsb3dfaWQiOiAidHdpdHRlcl9tb3N0X3BvcHVsYXJfdHdlZXRzX2Zvcl90YWci
fSwgImFjdGlvbnMiOiBbXX1dLCAicm9sZXMiOiBbXSwgIndvcmtzcGFjZXMiOiBbXX0=
"""
    )