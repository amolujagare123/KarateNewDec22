Feature: all sample user requests

  Scenario: to check the get single user request
    Given url 'https://reqres.in'
    And  path '/api/users/2'
    When method get
    Then status 200
    And match response ==
    """
    {
    "data": {
        "id": 2,
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "last_name": "Weaver",
        "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
    "support": {
        "url": "https://reqres.in/#support-heading",
        "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
    }
}

    """

  Scenario: to check the get single user request using negate operator
    Given url 'https://reqres.in'
    And  path '/api/users/2'
    When method get
    Then status 200
    And match response !=
    """
    {
    "data": {
        "id": 2,
        "email": "janet.weaver@reqres.in",
        "first_name": "Janet",
        "last_name": "Weaver",
        "avatar": "https://reqres.in/img/faces/2-image.jpg"
    },
    "support": {
        "url": "https://reqres.in/#support-heading",
        "text": "To keep ReqRes free, contributions towards server costs are appreciated!"
    }
}

    """


    @sampleGet
  Scenario: to check the get single user request using deep
    Given url 'https://reqres.in'
    And  path '/api/users?page=2'
    When method get
    Then status 200
    And match response.data[2].name == 'fuchsia rose'

