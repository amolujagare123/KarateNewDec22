Feature:  data driven examples

  Background: creating user ID
    * def randomNumber = function() {return Math.floor(Math.random() * 10);}
    * def userId = randomNumber();
    Given url 'http://localhost:9897'

  Scenario: To check the AddJob Request with random number as jobID

    And path '/normal/webapi/add'
    And headers {accept :'application/json',Content-Type :'application/json'}
    And request
    """
     {
    "jobId": '#(userId)',
    "jobTitle": 'Software Test engineer',
    "jobDescription": "Automation Testing",
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

    And path '/normal/webapi/update'
    And headers {accept :'application/json',Content-Type :'application/json'}
    And request
    """
     {
    "experience": [
      "1 year"
    ],
  "jobDescription": "Automation Tester",
  "jobId": '#(userId)',
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
