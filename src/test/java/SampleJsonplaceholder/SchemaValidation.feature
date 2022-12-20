
  Feature: Schema validation example

    @deckOfCards
    Scenario: to check deck of cards shuffled API
      Given url 'https://deckofcardsapi.com'
      And path '/api/deck/new/shuffle/'
      And param deck_count = 1
      When method get
      Then  status 200
      And  match response ==
      """
        {
      "success": '#boolean',
      "deck_id": '#string',
      "shuffled": '#boolean',
      "remaining": '#number'
       }
      """


    @deckOfCards @drawCards
    Scenario: to check deck of cards shuffled API
      Given url 'https://deckofcardsapi.com'
      And path '/api/deck/8la9t6q8e7kb/draw/'
      And param count = 2
      When method get
      Then  status 200
      And match response ==
      """
      {
    "success": '#boolean',
    "deck_id": '#string',
    "cards": '#[] #object',
    "remaining": '#number'
}
      """

      @jobPosts
      Scenario: to check get all job posts
        Given url 'http://localhost:9897/'
        And path '/normal/webapi/all'
        When method get
        Then status 200
        * def projectSchema = {"projectName": '#string',"technology":  '#[] #string'}
        * def mainSchema = { "jobId": '#number',"jobTitle": '#string',"jobDescription": '#string', "experience": '#[] #string' , "project": '#[] ##(projectSchema)' }

        And match response ==
        """
        '#[] ##(mainSchema)'
        """

        @sampleGetAllUsers
    Scenario: to check get all users response
      Given url 'https://reqres.in'
      And path '/api/users'
      And param page = 2
      When method get
      Then status 200
      And match response ==
          """
          {
    "page": '#number',
    "per_page": '#number',
    "total": '#number',
    "total_pages": '#number',
    "data": '#[] #object',
    "support": #object
}
          """