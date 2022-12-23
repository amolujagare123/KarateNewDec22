Feature:  data driven examples

  Scenario: To check the AddJob Request with random number as jobID
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    * def randomNumber = function() {return Math.floor(Math.random() * 10);}
    * def userId = randomNumber();
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
