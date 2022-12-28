Feature: all get requests of job portal

  Scenario: to check the get request of job portal
    Given url 'http://localhost:9897/'
    And path '/secure/webapi/all'
    And headers {Accept: 'application/json' , Authorization : 'Basic YWRtaW46d2VsY29tZQ=='}
    When method get
    And print response
    Then status 200

 @getAllJobsAuthWithJsFile
  Scenario: to check the get request of job portal using js file
    Given url 'http://localhost:9897/'
    And path '/secure/webapi/all'
    * def auth = call read('basic-auth.js') {username:'admin', password: 'welcome'}
    And headers {Accept: 'application/json' , Authorization : '#(auth)'}
    When method get
    And print response
    Then status 200


  Scenario: to check the get request of job portal
    Given url 'http://localhost:9897/'
    And path '/secure/webapi/all'
    And headers {Accept: 'application/json' }
    When method get
    And print response
    Then status 401

