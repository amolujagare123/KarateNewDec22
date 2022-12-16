Feature: all get requests of job portal

  Scenario: to check the get request of job portal
    Given url 'http://localhost:9897/'
    And path '/normal/webapi/all'
    When method get
    And print response
    Then status 200

  Scenario: to check the get request of job portal in xml format
    Given url 'http://localhost:9897/'
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    And print response
    Then status 200
    And match response ==
    """
    <List>
  <item>
    <jobId>1</jobId>
    <jobTitle>Software Tester</jobTitle>
    <jobDescription>To develop andriod application</jobDescription>
    <experience>
      <experience>Google</experience>
      <experience>Apple</experience>
      <experience>Mobile Iron</experience>
    </experience>
    <project>
      <project>
        <projectName>Movie App</projectName>
        <technology>
          <technology>Kotlin</technology>
          <technology>SQL Lite</technology>
          <technology>Gradle</technology>
        </technology>
      </project>
    </project>
  </item>
</List>
    """


  Scenario: to check the get request of job portal in xml format and validate JobTitle
    Given url 'http://localhost:9897/'
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    And print response
    Then status 200
    And match response !=
    """
    <List>
  <item>
    <jobId>1</jobId>
    <jobTitle>Software Tester</jobTitle>
    <jobDescription>To develop andriod application</jobDescription>
    <experience>
      <experience>Google</experience>
      <experience>Apple</experience>
      <experience>Mobile Iron</experience>
    </experience>
    <project>
      <project>
        <projectName>Movie App</projectName>
        <technology>
          <technology>Kotlin</technology>
          <technology>SQL Lite</technology>
          <technology>Gradle</technology>
        </technology>
      </project>
    </project>
  </item>
</List>
    """


  Scenario: to check the get request of job portal in xml format and validate with negate operator
    Given url 'http://localhost:9897/'
    And path '/normal/webapi/all'
    And header Accept = 'application/xml'
    When method get
    And print response
    Then status 200
    #And match response/List/item/jobTitle =='Software Engg'
    #And match response//jobTitle =='Software Engg'
    And match //jobTitle =='Software Engg'
    #And match response.List.item.jobTitle =='Software Engg'


  @jsonFile
  Scenario: to check the get request of job portal
    Given url 'http://localhost:9897/'
    And path '/normal/webapi/all'
    When method get
    Then status 200
    And def respJson = read('/data/JobPortalGetResponse.json')
    And print respJson
    And match response == respJson