Feature: test soap end point

Background:

# this live url should work if you want to try this on your own
Given url 'http://172.27.240.156:8003/cldwebservice/services/GetHCPCSCodes'

Scenario: soap 1.1
Given request
"""
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsd="http://reference.webservices.ecams.com/xsd"><soap:Header><uns:UserInfo xmlns:uns="http://member.webservices.ecams.com/xsd" accessId="supuser9999" accessKey="usr2" domain="UTAH" /><uns:TenantCode xmlns:uns="http://member.webservices.ecams.com/xsd">UT</uns:TenantCode></soap:Header><soap:Body><xsd:getHCPCSForProgram><!--Optional:--><xsd:programName>TD</xsd:programName><!--Optional:--><xsd:county>SALT LAKE</xsd:county></xsd:getHCPCSForProgram></soap:Body></soap:Envelope>

"""

When soap action 'Test1'
And print response
And  match response /Envelope/Body/getHCPCSForProgramResponse/return/errorCode == '100'

Scenario: soap 1.1
Given request
"""
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsd="http://reference.webservices.ecams.com/xsd"><soap:Header><uns:UserInfo xmlns:uns="http://member.webservices.ecams.com/xsd" accessId="supuser9999" accessKey="usr2" domain="UTAH" /><uns:TenantCode xmlns:uns="http://member.webservices.ecams.com/xsd">UT</uns:TenantCode></soap:Header><soap:Body><xsd:getHCPCSForProgram><!--Optional:--><xsd:programName>TD</xsd:programName><!--Optional:--><xsd:county>SALT LAKE</xsd:county></xsd:getHCPCSForProgram></soap:Body></soap:Envelope>

"""

When soap action 'Deepak'
And print response
And  match response /Envelope/Body/getHCPCSForProgramResponse/return/errorDescription == 'Success'

