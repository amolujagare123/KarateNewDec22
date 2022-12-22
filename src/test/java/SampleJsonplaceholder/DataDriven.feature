Feature:  data driven examples

  Background: defining file
    * def datafile = read("dataprovider.csv")

  Scenario Outline: check data retrieve in karate using method <method>
    Given print '<url>'
    And print '<path>'
    When print '<method>'
    Then print '<status>'
    Examples:
      | url | path | method | status |
      | http://localhost:9897/ | /normal/webapi/all | get | 200 |
      | http://localhost:9897/ | /normal/webapi/add | post | 201 |
      | http://localhost:9897/ | /normal/webapi/update | put | 201 |

  @postJob
  Scenario Outline: To check the AddJob Request with random number as jobID
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    * def randomNumber = function() {return Math.floor(Math.random() * 10);}
    * def userId = randomNumber();
    And headers {accept :'application/json',Content-Type :'application/json'}
    And request
    """
     {
    "jobId": '#(userId)',
    "jobTitle": '#(jobTitle)',
    "jobDescription": "<jobDescription>",
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

    When method post
    Then status <status>
    Examples:
      | jobTitle  | jobDescription | status |
      | Developer | 3 years exp.   | 201    |
      | Tester    | 4 years exp.   | 201    |


  @postJob @csv
  Scenario Outline: To check the AddJob Request with random number as jobID with csv
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    * def randomNumber = function() {return Math.floor(Math.random() * 10);}
    * def userId = randomNumber();
    And headers {accept :'application/json',Content-Type :'application/json'}
    And request
    """
     {
    "jobId": '#(userId)',
    "jobTitle": '#(jobTitle)',
    "jobDescription": "<jobDescription>",
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

    When method post
    Then status <status>

    Examples:
    | read("data/dataprovider.csv") |


  @postJob @json
  Scenario Outline: To check the AddJob Request with random number as jobID with json file
    Given url 'http://localhost:9897'
    And path '/normal/webapi/add'
    * def randomNumber = function() {return Math.floor(Math.random() * 10);}
    * def userId = randomNumber();
    And headers {accept :'application/json',Content-Type :'application/json'}
    And request
    """
     {
    "jobId": '#(userId)',
    "jobTitle": '#(jobTitle)',
    "jobDescription": "<jobDescription>",
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

    When method post
    Then status <status>

    Examples:
      | read("data/dataprovider.json") |

