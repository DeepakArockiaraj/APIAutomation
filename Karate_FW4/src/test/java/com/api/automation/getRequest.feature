Feature: To test the Get end point of the application.

Background: Set up the Base path
Given url 'http://jobportalkarate.herokuapp.com'
And print '---Start of Test---'
Scenario: To test the get end point with JSON.
 
 Given path 'normal/webapi/all'
 And header Accept = 'application/json'
 When method get # Send the request
 And print response
 * def projectSchema = { "projectName": '#string',"technology": '#[] #string'}
 
 # two ## needed , one for fuzzy match and one for embedded exp
* def mainSchema = { "jobId": '#number',"jobTitle": '#string',"jobDescription":'#string',"experience": '#[] #string',"project":'#[] ##(projectSchema)' }
# fuzzy and embedded validation

And match response == 
"""

'#[] ##(mainSchema)'

"""

 
 
 
  

