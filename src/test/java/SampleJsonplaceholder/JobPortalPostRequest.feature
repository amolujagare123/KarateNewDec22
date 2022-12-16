Feature:  All Post requests from Job portal

  @postJob
  Scenario: To check the AddJob Request
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    And request
    """
     {
    "jobId": 2,
    "jobTitle": "Software Developer",
    "jobDescription": "To develop Java application",
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
    #And header Content-Type = 'application/json'
    And headers {accept :'application/json',Content-Type :'application/json'}
    When method post
    Then status 201