Feature: Embedded expression demo


  Scenario: to check the get single user request
    Given url 'https://reqres.in'
    * def userId = 4
    And  path '/api/users/' + userId
    When method get
    Then status 200


  @postJob
  Scenario: To check the AddJob Request
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    * def userId = 4
    And request
    """
     {
    "jobId": '#(userId)',
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


  @postJob
  Scenario: To check the AddJob Request with random number as jobID
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    * def randomNumber = function() {return Math.floor(Math.random() * 10);}
    * def userId = randomNumber();
    And request
    """
     {
    "jobId": '#(userId)',
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


  @postJobXml
  Scenario: To check the AddJob Request
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    * def randomNumber = function() {return Math.floor(Math.random() * 10);}
    * def userId = randomNumber();
    And request
    """
    <jobId> #(userId) </jobId>
    <jobTitle>Software Developer</jobTitle>
    <jobDescription>To develop Java application</jobDescription>
    <experience>Google</experience>
    <experience>Apple</experience>
    <experience>Mobile Iron</experience>
    <project>
      <projectName>HRM App</projectName>
      <technology>JAVA</technology>
      <technology>SQL</technology>
      <technology>Maven</technology>
    </project>

    """
    #And header Content-Type = 'application/json'
    And headers {accept :'application/xml',Content-Type :'application/xml'}
    When method post
    Then status 201