Feature: all get requests of job portal

  @queryParam
  Scenario: to check the get request of job portal

    Given url 'http://localhost:9897/'
    And path '/normal/webapi/find'
    # And param id = 3
    # And param jobTitle = 'Software Developer - 3'
    And params {id :3 , jobTitle:'Software Developer - 3'}
    When method get
    And print response
    Then status 200
