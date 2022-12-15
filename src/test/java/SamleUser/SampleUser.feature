Feature: All scenarios related to sample user from reqres.in

  Scenario: to test the get all user request works correctly or not
    Given url 'https://reqres.in/api/users?page=2'
    When method get
    Then status 200