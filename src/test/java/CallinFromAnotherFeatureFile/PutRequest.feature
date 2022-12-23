Feature:  data driven examples

  Background: creating user ID
  #  * def randomNumber = function() {return Math.floor(Math.random() * 10);}
  #  * def userId = randomNumber();
    Given url 'http://localhost:9897'

  Scenario: To check the AddJob Request with random number as jobID

    Given call read('PostRequest.feature')

    And path '/normal/webapi/update'
    And headers {accept :'application/json',Content-Type :'application/json'}
    And request
    """
     {
    "experience": [
      "1 year"
    ],
  "jobDescription": "Automation Tester",
  "jobId": '6',
  "jobTitle": "Software Test Manager",
  "project": [
    {
      "projectName": "Management System",
      "technology": [
        "Java"
      ]
    }
  ]
}
    """

    When method put
    And print response
    Then status 200