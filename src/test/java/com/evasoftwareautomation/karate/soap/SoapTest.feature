Feature: SOAP test

Background:
* url soapcalc
 
Scenario: Validate that SOAP request can be made and response is as expected
  
 Given request read('request.xml')
 When soap action 'http://tempuri.org/Multiply'
 Then status 200
 And match /Envelope/Body/MultiplyResponse/MultiplyResult == 100