Feature:  Calling feature file

  Background: creating user ID
  #  * def randomNumber = function() {return Math.floor(Math.random() * 10);}
  #  * def userId = randomNumber();
    Given url 'http://localhost:9897'

  Scenario: To check the AddJob Request with random number as jobID

   # Given def featureFile = call read('PostRequest2.feature')
    Given def featureFile = call read('PostRequest3.feature') { _userId: 2, _jobTitle: 'Another title' ,_jobDescription: 'Another Description'}

    * print "Job Id : " ,  featureFile.userId
    * print "Job Title : " ,  featureFile.jobTitle
    * print "job Description : " ,  featureFile.jobDescription

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