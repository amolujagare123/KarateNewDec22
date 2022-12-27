Feature:  Calling feature file

  Background: creating user ID
   * def randomNumber = function() {return Math.floor(Math.random() * 10);}
    * def userId = randomNumber()
    * def jobTitle = 'Software Test Manager'
    * def jobDescription = 'Automation Testing with karate'
    Given url 'http://localhost:9897'

  Scenario: To check the AddJob Request with random number as jobID

    And path '/normal/webapi/add'
    And headers {accept :'application/json',Content-Type :'application/json'}
    And request
    """
  {
  "jobId": '#(userId)',
  "jobTitle": '#(jobTitle)',
  "jobDescription": '#(jobDescription)' ,
    "experience": [
      "Google",
      "Apple",
      "Mobile Iron"
    ],
    "project": [
      {
        "projectName": "HRM App",
        "technology": [
          "JAVA",
          "SQL",
          "Maven"
        ]
      }
    ]
  }
    """

    When method post
    Then status 201
    And print response