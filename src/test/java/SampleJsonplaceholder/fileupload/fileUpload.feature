Feature: checking file upload

  Scenario: test the file upload request
    Given url 'http://localhost:9897'
    And path '/normal/webapi/upload'
    # file path , file name , content-type
    And multipart file file = {read:'dummyFile.txt' , file:'dummyFile.txt' , Content-Type:'multipart/form-data'}
    When method post
    Then status 200
    And print response

  Scenario: test the file upload request at another location
    Given url 'http://localhost:9897'
    And path '/normal/webapi/upload'
    # file path , file name , content-type
    And multipart file file = {read:'../data/dummyFile2.txt' , file:'dummyFile2.txt' , Content-Type:'multipart/form-data'}
    When method post
    Then status 200
    And print response
    And match response.message contains 'dummyFile2.txt'