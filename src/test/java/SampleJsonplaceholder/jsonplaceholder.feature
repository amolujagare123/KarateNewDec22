Feature: all jsonplaceholder requests

  Background: base url
    Given url 'https://jsonplaceholder.typicode.com'

  Scenario: to check the get all user resource
   # Given url 'https://jsonplaceholder.typicode.com/'
    Given path '/posts'
    When method get
    Then status 200
    And print 'this is a karate framework'
    And print response


  Scenario: to check the get single user resource
   # Given url 'https://jsonplaceholder.typicode.com'
    Given path '/posts/1'
    When method get
    Then status 200
    #And print response
    And match response ==
    """
    {
      "userId": 1,
      "id": 2,
      "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }

    """


  Scenario: to check the get single user resource
   # Given url 'https://jsonplaceholder.typicode.com'
    Given path '/posts/1'
    When method get
    Then status 200
    #And print response
    And match response !=
    """
    {
      "userId": 1,
      "id": 2,
      "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
      "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
    }

    """

  Scenario: to check the get single user resource
   # Given url 'https://jsonplaceholder.typicode.com'
    Given path '/posts/1'
    When method get
    Then status 200
    #And print response
    And match response.title == "123 sunt aut facere repellat provident occaecati excepturi optio reprehenderit"

