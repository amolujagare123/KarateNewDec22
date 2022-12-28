Feature: all get requests of job portal

  @chatGetAllUSer
  Scenario: to check the get all chat users
    Given url 'http://localhost/chat/lhc_web/index.php/site_admin'
    And path '/restapi/getusers'
    And headers {Accept: 'application/json' , Authorization : 'Basic YWRtaW46YWRtaW4xMjM='}
    When method get
    And print response
    Then status 200