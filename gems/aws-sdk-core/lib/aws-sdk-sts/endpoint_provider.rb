# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::STS
  class EndpointProvider
    def initialize(rule_set = nil)
      @@rule_set ||= begin
        endpoint_rules = Aws::Json.load(Base64.decode64(RULES))
        Aws::Endpoints::RuleSet.new(
          version: endpoint_rules['version'],
          service_id: endpoint_rules['serviceId'],
          parameters: endpoint_rules['parameters'],
          rules: endpoint_rules['rules']
        )
      end
      @provider = Aws::Endpoints::RulesProvider.new(rule_set || @@rule_set)
    end

    def resolve_endpoint(parameters)
      @provider.resolve_endpoint(parameters)
    end

    # @api private
    RULES = <<-JSON
eyJ2ZXJzaW9uIjoiMS4wIiwicGFyYW1ldGVycyI6eyJSZWdpb24iOnsiYnVp
bHRJbiI6IkFXUzo6UmVnaW9uIiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1bWVu
dGF0aW9uIjoiVGhlIEFXUyByZWdpb24gdXNlZCB0byBkaXNwYXRjaCB0aGUg
cmVxdWVzdC4iLCJ0eXBlIjoiU3RyaW5nIn0sIlVzZUR1YWxTdGFjayI6eyJi
dWlsdEluIjoiQVdTOjpVc2VEdWFsU3RhY2siLCJyZXF1aXJlZCI6dHJ1ZSwi
ZGVmYXVsdCI6ZmFsc2UsImRvY3VtZW50YXRpb24iOiJXaGVuIHRydWUsIHVz
ZSB0aGUgZHVhbC1zdGFjayBlbmRwb2ludC4gSWYgdGhlIGNvbmZpZ3VyZWQg
ZW5kcG9pbnQgZG9lcyBub3Qgc3VwcG9ydCBkdWFsLXN0YWNrLCBkaXNwYXRj
aGluZyB0aGUgcmVxdWVzdCBNQVkgcmV0dXJuIGFuIGVycm9yLiIsInR5cGUi
OiJCb29sZWFuIn0sIlVzZUZJUFMiOnsiYnVpbHRJbiI6IkFXUzo6VXNlRklQ
UyIsInJlcXVpcmVkIjp0cnVlLCJkZWZhdWx0IjpmYWxzZSwiZG9jdW1lbnRh
dGlvbiI6IldoZW4gdHJ1ZSwgc2VuZCB0aGlzIHJlcXVlc3QgdG8gdGhlIEZJ
UFMtY29tcGxpYW50IHJlZ2lvbmFsIGVuZHBvaW50LiBJZiB0aGUgY29uZmln
dXJlZCBlbmRwb2ludCBkb2VzIG5vdCBoYXZlIGEgRklQUyBjb21wbGlhbnQg
ZW5kcG9pbnQsIGRpc3BhdGNoaW5nIHRoZSByZXF1ZXN0IHdpbGwgcmV0dXJu
IGFuIGVycm9yLiIsInR5cGUiOiJCb29sZWFuIn0sIkVuZHBvaW50Ijp7ImJ1
aWx0SW4iOiJTREs6OkVuZHBvaW50IiwicmVxdWlyZWQiOmZhbHNlLCJkb2N1
bWVudGF0aW9uIjoiT3ZlcnJpZGUgdGhlIGVuZHBvaW50IHVzZWQgdG8gc2Vu
ZCB0aGlzIHJlcXVlc3QiLCJ0eXBlIjoiU3RyaW5nIn0sIlVzZUdsb2JhbEVu
ZHBvaW50Ijp7ImJ1aWx0SW4iOiJBV1M6OlNUUzo6VXNlR2xvYmFsRW5kcG9p
bnQiLCJyZXF1aXJlZCI6dHJ1ZSwiZGVmYXVsdCI6ZmFsc2UsImRvY3VtZW50
YXRpb24iOiJXaGV0aGVyIHRoZSBnbG9iYWwgZW5kcG9pbnQgc2hvdWxkIGJl
IHVzZWQsIHJhdGhlciB0aGVuIHRoZSByZWdpb25hbCBlbmRwb2ludCBmb3Ig
dXMtZWFzdC0xLiIsInR5cGUiOiJCb29sZWFuIn19LCJydWxlcyI6W3siY29u
ZGl0aW9ucyI6W3siZm4iOiJhd3MucGFydGl0aW9uIiwiYXJndiI6W3sicmVm
IjoiUmVnaW9uIn1dLCJhc3NpZ24iOiJQYXJ0aXRpb25SZXN1bHQifV0sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9v
bGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUdsb2JhbEVuZHBvaW50
In0sdHJ1ZV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVm
IjoiVXNlRklQUyJ9LGZhbHNlXX0seyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJh
cmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSxmYWxzZV19LHsiZm4iOiJu
b3QiLCJhcmd2IjpbeyJmbiI6ImlzU2V0IiwiYXJndiI6W3sicmVmIjoiRW5k
cG9pbnQifV19XX1dLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRp
b25zIjpbeyJmbiI6InN0cmluZ0VxdWFscyIsImFyZ3YiOlt7InJlZiI6IlJl
Z2lvbiJ9LCJhcC1ub3J0aGVhc3QtMSJdfV0sImVuZHBvaW50Ijp7InVybCI6
Imh0dHBzOi8vc3RzLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1
dGhTY2hlbWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6InN0
cyIsInNpZ25pbmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7
fX0sInR5cGUiOiJlbmRwb2ludCJ9LHsiY29uZGl0aW9ucyI6W3siZm4iOiJz
dHJpbmdFcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJSZWdpb24ifSwiYXAtc291
dGgtMSJdfV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vc3RzLmFtYXpv
bmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1l
Ijoic2lndjQiLCJzaWduaW5nTmFtZSI6InN0cyIsInNpZ25pbmdSZWdpb24i
OiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2lu
dCJ9LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJpbmdFcXVhbHMiLCJhcmd2
IjpbeyJyZWYiOiJSZWdpb24ifSwiYXAtc291dGhlYXN0LTEiXX1dLCJlbmRw
b2ludCI6eyJ1cmwiOiJodHRwczovL3N0cy5hbWF6b25hd3MuY29tIiwicHJv
cGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2ln
bmluZ05hbWUiOiJzdHMiLCJzaWduaW5nUmVnaW9uIjoidXMtZWFzdC0xIn1d
fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNvbmRpdGlv
bnMiOlt7ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiUmVn
aW9uIn0sImFwLXNvdXRoZWFzdC0yIl19XSwiZW5kcG9pbnQiOnsidXJsIjoi
aHR0cHM6Ly9zdHMuYW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnsiYXV0
aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoic3Rz
Iiwic2lnbmluZ1JlZ2lvbiI6InVzLWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9
fSwidHlwZSI6ImVuZHBvaW50In0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0
cmluZ0VxdWFscyIsImFyZ3YiOlt7InJlZiI6IlJlZ2lvbiJ9LCJhd3MtZ2xv
YmFsIl19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9zdHMuYW1hem9u
YXdzLmNvbSIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVtZXMiOlt7Im5hbWUi
OiJzaWd2NCIsInNpZ25pbmdOYW1lIjoic3RzIiwic2lnbmluZ1JlZ2lvbiI6
InVzLWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50
In0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0cmluZ0VxdWFscyIsImFyZ3Yi
Olt7InJlZiI6IlJlZ2lvbiJ9LCJjYS1jZW50cmFsLTEiXX1dLCJlbmRwb2lu
dCI6eyJ1cmwiOiJodHRwczovL3N0cy5hbWF6b25hd3MuY29tIiwicHJvcGVy
dGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmlu
Z05hbWUiOiJzdHMiLCJzaWduaW5nUmVnaW9uIjoidXMtZWFzdC0xIn1dfSwi
aGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMi
Olt7ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiUmVnaW9u
In0sImV1LWNlbnRyYWwtMSJdfV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBz
Oi8vc3RzLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hl
bWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6InN0cyIsInNp
Z25pbmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5
cGUiOiJlbmRwb2ludCJ9LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJpbmdF
cXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJSZWdpb24ifSwiZXUtbm9ydGgtMSJd
fV0sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vc3RzLmFtYXpvbmF3cy5j
b20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1lIjoic2ln
djQiLCJzaWduaW5nTmFtZSI6InN0cyIsInNpZ25pbmdSZWdpb24iOiJ1cy1l
YXN0LTEifV19LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9LHsi
Y29uZGl0aW9ucyI6W3siZm4iOiJzdHJpbmdFcXVhbHMiLCJhcmd2IjpbeyJy
ZWYiOiJSZWdpb24ifSwiZXUtd2VzdC0xIl19XSwiZW5kcG9pbnQiOnsidXJs
IjoiaHR0cHM6Ly9zdHMuYW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnsi
YXV0aFNjaGVtZXMiOlt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoi
c3RzIiwic2lnbmluZ1JlZ2lvbiI6InVzLWVhc3QtMSJ9XX0sImhlYWRlcnMi
Ont9fSwidHlwZSI6ImVuZHBvaW50In0seyJjb25kaXRpb25zIjpbeyJmbiI6
InN0cmluZ0VxdWFscyIsImFyZ3YiOlt7InJlZiI6IlJlZ2lvbiJ9LCJldS13
ZXN0LTIiXX1dLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL3N0cy5hbWF6
b25hd3MuY29tIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFt
ZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJzdHMiLCJzaWduaW5nUmVnaW9u
IjoidXMtZWFzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9p
bnQifSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJn
diI6W3sicmVmIjoiUmVnaW9uIn0sImV1LXdlc3QtMyJdfV0sImVuZHBvaW50
Ijp7InVybCI6Imh0dHBzOi8vc3RzLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0
aWVzIjp7ImF1dGhTY2hlbWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5n
TmFtZSI6InN0cyIsInNpZ25pbmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJo
ZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9LHsiY29uZGl0aW9ucyI6
W3siZm4iOiJzdHJpbmdFcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJSZWdpb24i
fSwic2EtZWFzdC0xIl19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9z
dHMuYW1hem9uYXdzLmNvbSIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVtZXMi
Olt7Im5hbWUiOiJzaWd2NCIsInNpZ25pbmdOYW1lIjoic3RzIiwic2lnbmlu
Z1JlZ2lvbiI6InVzLWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6
ImVuZHBvaW50In0seyJjb25kaXRpb25zIjpbeyJmbiI6InN0cmluZ0VxdWFs
cyIsImFyZ3YiOlt7InJlZiI6IlJlZ2lvbiJ9LCJ1cy1lYXN0LTEiXX1dLCJl
bmRwb2ludCI6eyJ1cmwiOiJodHRwczovL3N0cy5hbWF6b25hd3MuY29tIiwi
cHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwi
c2lnbmluZ05hbWUiOiJzdHMiLCJzaWduaW5nUmVnaW9uIjoidXMtZWFzdC0x
In1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNvbmRp
dGlvbnMiOlt7ImZuIjoic3RyaW5nRXF1YWxzIiwiYXJndiI6W3sicmVmIjoi
UmVnaW9uIn0sInVzLWVhc3QtMiJdfV0sImVuZHBvaW50Ijp7InVybCI6Imh0
dHBzOi8vc3RzLmFtYXpvbmF3cy5jb20iLCJwcm9wZXJ0aWVzIjp7ImF1dGhT
Y2hlbWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6InN0cyIs
InNpZ25pbmdSZWdpb24iOiJ1cy1lYXN0LTEifV19LCJoZWFkZXJzIjp7fX0s
InR5cGUiOiJlbmRwb2ludCJ9LHsiY29uZGl0aW9ucyI6W3siZm4iOiJzdHJp
bmdFcXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJSZWdpb24ifSwidXMtd2VzdC0x
Il19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9zdHMuYW1hem9uYXdz
LmNvbSIsInByb3BlcnRpZXMiOnsiYXV0aFNjaGVtZXMiOlt7Im5hbWUiOiJz
aWd2NCIsInNpZ25pbmdOYW1lIjoic3RzIiwic2lnbmluZ1JlZ2lvbiI6InVz
LWVhc3QtMSJ9XX0sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In0s
eyJjb25kaXRpb25zIjpbeyJmbiI6InN0cmluZ0VxdWFscyIsImFyZ3YiOlt7
InJlZiI6IlJlZ2lvbiJ9LCJ1cy13ZXN0LTIiXX1dLCJlbmRwb2ludCI6eyJ1
cmwiOiJodHRwczovL3N0cy5hbWF6b25hd3MuY29tIiwicHJvcGVydGllcyI6
eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6InNpZ3Y0Iiwic2lnbmluZ05hbWUi
OiJzdHMiLCJzaWduaW5nUmVnaW9uIjoidXMtZWFzdC0xIn1dfSwiaGVhZGVy
cyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifSx7ImNvbmRpdGlvbnMiOltdLCJl
bmRwb2ludCI6eyJ1cmwiOiJodHRwczovL3N0cy57UmVnaW9ufS57UGFydGl0
aW9uUmVzdWx0I2Ruc1N1ZmZpeH0iLCJwcm9wZXJ0aWVzIjp7ImF1dGhTY2hl
bWVzIjpbeyJuYW1lIjoic2lndjQiLCJzaWduaW5nTmFtZSI6InN0cyIsInNp
Z25pbmdSZWdpb24iOiJ7UmVnaW9ufSJ9XX0sImhlYWRlcnMiOnt9fSwidHlw
ZSI6ImVuZHBvaW50In1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiaXNTZXQi
LCJhcmd2IjpbeyJyZWYiOiJFbmRwb2ludCJ9XX0seyJmbiI6InBhcnNlVVJM
IiwiYXJndiI6W3sicmVmIjoiRW5kcG9pbnQifV0sImFzc2lnbiI6InVybCJ9
XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0aW9ucyI6W3siZm4i
OiJib29sZWFuRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRy
dWVdfV0sImVycm9yIjoiSW52YWxpZCBDb25maWd1cmF0aW9uOiBGSVBTIGFu
ZCBjdXN0b20gZW5kcG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0eXBlIjoi
ZXJyb3IifSx7ImNvbmRpdGlvbnMiOltdLCJ0eXBlIjoidHJlZSIsInJ1bGVz
IjpbeyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5FcXVhbHMiLCJhcmd2
IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1dLCJlcnJvciI6Iklu
dmFsaWQgQ29uZmlndXJhdGlvbjogRHVhbHN0YWNrIGFuZCBjdXN0b20gZW5k
cG9pbnQgYXJlIG5vdCBzdXBwb3J0ZWQiLCJ0eXBlIjoiZXJyb3IifSx7ImNv
bmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOnsicmVmIjoiRW5kcG9p
bnQifSwicHJvcGVydGllcyI6e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVu
ZHBvaW50In1dfV19LHsiY29uZGl0aW9ucyI6W3siZm4iOiJib29sZWFuRXF1
YWxzIiwiYXJndiI6W3sicmVmIjoiVXNlRklQUyJ9LHRydWVdfSx7ImZuIjoi
Ym9vbGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUR1YWxTdGFjayJ9
LHRydWVdfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMi
Olt7ImZuIjoiYm9vbGVhbkVxdWFscyIsImFyZ3YiOlt0cnVlLHsiZm4iOiJn
ZXRBdHRyIiwiYXJndiI6W3sicmVmIjoiUGFydGl0aW9uUmVzdWx0In0sInN1
cHBvcnRzRklQUyJdfV19LHsiZm4iOiJib29sZWFuRXF1YWxzIiwiYXJndiI6
W3RydWUseyJmbiI6ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRp
b25SZXN1bHQifSwic3VwcG9ydHNEdWFsU3RhY2siXX1dfV0sInR5cGUiOiJ0
cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1
cmwiOiJodHRwczovL3N0cy1maXBzLntSZWdpb259LntQYXJ0aXRpb25SZXN1
bHQjZHVhbFN0YWNrRG5zU3VmZml4fSIsInByb3BlcnRpZXMiOnt9LCJoZWFk
ZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9XX0seyJjb25kaXRpb25zIjpb
XSwiZXJyb3IiOiJGSVBTIGFuZCBEdWFsU3RhY2sgYXJlIGVuYWJsZWQsIGJ1
dCB0aGlzIHBhcnRpdGlvbiBkb2VzIG5vdCBzdXBwb3J0IG9uZSBvciBib3Ro
IiwidHlwZSI6ImVycm9yIn1dfSx7ImNvbmRpdGlvbnMiOlt7ImZuIjoiYm9v
bGVhbkVxdWFscyIsImFyZ3YiOlt7InJlZiI6IlVzZUZJUFMifSx0cnVlXX1d
LCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6
ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIs
ImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0ZJ
UFMiXX1dfV0sInR5cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMi
OltdLCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJm
biI6InN0cmluZ0VxdWFscyIsImFyZ3YiOlsiYXdzLXVzLWdvdiIseyJmbiI6
ImdldEF0dHIiLCJhcmd2IjpbeyJyZWYiOiJQYXJ0aXRpb25SZXN1bHQifSwi
bmFtZSJdfV19XSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9zdHMue1Jl
Z2lvbn0ue1BhcnRpdGlvblJlc3VsdCNkbnNTdWZmaXh9IiwicHJvcGVydGll
cyI6e30sImhlYWRlcnMiOnt9fSwidHlwZSI6ImVuZHBvaW50In0seyJjb25k
aXRpb25zIjpbXSwiZW5kcG9pbnQiOnsidXJsIjoiaHR0cHM6Ly9zdHMtZmlw
cy57UmVnaW9ufS57UGFydGl0aW9uUmVzdWx0I2Ruc1N1ZmZpeH0iLCJwcm9w
ZXJ0aWVzIjp7fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQifV19
XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJGSVBTIGlzIGVuYWJsZWQg
YnV0IHRoaXMgcGFydGl0aW9uIGRvZXMgbm90IHN1cHBvcnQgRklQUyIsInR5
cGUiOiJlcnJvciJ9XX0seyJjb25kaXRpb25zIjpbeyJmbiI6ImJvb2xlYW5F
cXVhbHMiLCJhcmd2IjpbeyJyZWYiOiJVc2VEdWFsU3RhY2sifSx0cnVlXX1d
LCJ0eXBlIjoidHJlZSIsInJ1bGVzIjpbeyJjb25kaXRpb25zIjpbeyJmbiI6
ImJvb2xlYW5FcXVhbHMiLCJhcmd2IjpbdHJ1ZSx7ImZuIjoiZ2V0QXR0ciIs
ImFyZ3YiOlt7InJlZiI6IlBhcnRpdGlvblJlc3VsdCJ9LCJzdXBwb3J0c0R1
YWxTdGFjayJdfV19XSwidHlwZSI6InRyZWUiLCJydWxlcyI6W3siY29uZGl0
aW9ucyI6W10sImVuZHBvaW50Ijp7InVybCI6Imh0dHBzOi8vc3RzLntSZWdp
b259LntQYXJ0aXRpb25SZXN1bHQjZHVhbFN0YWNrRG5zU3VmZml4fSIsInBy
b3BlcnRpZXMiOnt9LCJoZWFkZXJzIjp7fX0sInR5cGUiOiJlbmRwb2ludCJ9
XX0seyJjb25kaXRpb25zIjpbXSwiZXJyb3IiOiJEdWFsU3RhY2sgaXMgZW5h
YmxlZCBidXQgdGhpcyBwYXJ0aXRpb24gZG9lcyBub3Qgc3VwcG9ydCBEdWFs
U3RhY2siLCJ0eXBlIjoiZXJyb3IifV19LHsiY29uZGl0aW9ucyI6W10sInR5
cGUiOiJ0cmVlIiwicnVsZXMiOlt7ImNvbmRpdGlvbnMiOlt7ImZuIjoic3Ry
aW5nRXF1YWxzIiwiYXJndiI6W3sicmVmIjoiUmVnaW9uIn0sImF3cy1nbG9i
YWwiXX1dLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczovL3N0cy5hbWF6b25h
d3MuY29tIiwicHJvcGVydGllcyI6eyJhdXRoU2NoZW1lcyI6W3sibmFtZSI6
InNpZ3Y0Iiwic2lnbmluZ05hbWUiOiJzdHMiLCJzaWduaW5nUmVnaW9uIjoi
dXMtZWFzdC0xIn1dfSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQi
fSx7ImNvbmRpdGlvbnMiOltdLCJlbmRwb2ludCI6eyJ1cmwiOiJodHRwczov
L3N0cy57UmVnaW9ufS57UGFydGl0aW9uUmVzdWx0I2Ruc1N1ZmZpeH0iLCJw
cm9wZXJ0aWVzIjp7fSwiaGVhZGVycyI6e319LCJ0eXBlIjoiZW5kcG9pbnQi
fV19XX1dfQ==

    JSON
  end
end
