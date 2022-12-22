Feature: check Json Path API

  Scenario: to check the get request of job portal
    Given url 'http://localhost:9897/'
    And path '/normal/webapi/all'
    When method get
    And print response
    Then status 200
    * def jobTitle = karate.jasonPath(response,"$.[?(@.jobId==9)].jobTitle")
    * print 'jobTitle==>'