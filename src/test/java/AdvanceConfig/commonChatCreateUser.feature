
Feature: common chat create user request


      Background: initialize url
            *  url _url
            * def resultId = 0

Scenario:  check the user is added or not

And path '/restapi/user'
And header Authorization = call read('basic-auth.js') {username:'#(username)',password:'#(password)'}
* def newUsername = 'shridhar111'
* def newPassword = 'shridhar123'
* def email = 'shridhar@gmail.com'

And request
"""
      {
          "username": "#(newUsername)",
          "password": "#(newPassword)",
          "email": "#(email)",
          "name": "shalini",
          "surname": "xyz",
          "chat_nickname": "sh",
          "departments": [
            1,
            2
          ],
          "departments_read": [
            2
          ],
          "department_groups": [
            1
          ],
          "user_groups": [
            1
          ]
        }
      """
When method post
Then status 200
* print response.result.id
# * resultId =  response.result.id

      @putRequest
      Scenario:  check the user is updated or not

            And path '/restapi/user/' + resultId
            And header Authorization = call read('basic-auth.js') {username:'#(username)',password:'#(password)'}
            * def newUsername = 'shridhar111'
            * def newPassword = 'shridhar123'
            * def email = 'shridhar@gmail.com'


            And request
"""
      {
          "username": "#(newUsername)",
          "password": "#(newPassword)",
          "email": "#(email)",
          "name": "shalini",
          "surname": "xyz",
          "chat_nickname": "sh",
          "departments": [
            1,
            2
          ],
          "departments_read": [
            2
          ],
          "department_groups": [
            1
          ],
          "user_groups": [
            1
          ]
        }
      """
            When method put
            Then status 200


            @deleteRequest
      Scenario:  check the user is deleted or not

            And path '/restapi/user/' + resultId
            And header Authorization = call read('basic-auth.js') {username:'#(username)',password:'#(password)'}
                  When method delete
                  Then status 200