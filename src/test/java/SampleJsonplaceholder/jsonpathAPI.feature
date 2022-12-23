Feature: check Json Path API

  Scenario: to check the get request of job portal
    Given url 'http://localhost:9897/'
    And path '/normal/webapi/all'
    When method get
    And print response
    Then status 200
    * def jobTitle = karate.jsonPath(response,"$.[?(@.jobId==1)].jobTitle")
    * def jobDescription = karate.jsonPath(response,"$.[?(@.jobId==1)].jobDescription")
    * def experience = karate.jsonPath(response,"$.[?(@.jobId==1)].experience")
    * print 'jobTitle==>' , jobTitle
    * print 'jobDescription==>' , jobDescription
    * print 'experience==>' , experience
    And match jobTitle[0] == "Software Engg"