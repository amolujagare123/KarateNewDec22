Feature: all get requests of job portal

  Scenario: to check the get request of job portal
    Given url 'http://localhost:9897/'
    And path '/secure/webapi/all'
    And headers {Accept: 'application/json' , Authorization : 'Basic YWRtaW46d2VsY29tZQ=='}
    When method get
    And print response
    Then status 200
