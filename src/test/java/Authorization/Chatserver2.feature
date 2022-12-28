Feature: all get requests of job portal

  @chatGetAllUSerUsingJsFile
  Scenario: to check the get all chat users
    Given url 'http://localhost/chat/lhc_web/index.php/site_admin'
    And path '/restapi/getusers'
    * def authFile = call read('basic-auth.js') {username:'admin', password: 'admin123'}
    And headers {Accept: 'application/json' , Authorization: '#(authFile)'}
    When method get
    And print response
    Then status 200