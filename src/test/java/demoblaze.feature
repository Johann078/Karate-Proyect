Feature: DemoBlaze Signup and Login Tests

  Background:
    * url 'https://api.demoblaze.com'

  Scenario: Successful user signup
    Given path '/signup'
    * def randomNum = Math.random() * 1000000
    * def uniqueUsername = 'johantest' + randomNum.toString().substring(0, 6)
    And request { username: '#(uniqueUsername)', password: 'passjohan' }
    When method post
    Then status 200
    * print response


 Scenario: Failed user signup (existing user)
    Given path '/signup'
    And request {"username":"johantest02","password":"passjohan"}
    When method post
    Then status 200
    * print response
    And match $.errorMessage == 'This user already exist.'


 Scenario: Successful user login
   Given path '/login'
   And request {"username": "johantest01","password": "MTIzNDU=" }
   When method post
   Then status 200
   * print response
   * def responseText = response
   And def loginToken = response.split(':')[1].trim().replace('"', '')
   * print 'Token:', loginToken


   * def tokenExists = loginToken != null && loginToken.length() > 0
   * assert tokenExists == true

# Validacion del login
   Given path '/check'
   And request { "token": "#(loginToken)" }
   When method post
   Then status 200
   * print response
   And match $.Item.username == 'johantest01'

   Scenario: Failed user login (invalid credentials)
   Given path '/login'
   And request {"username": "johantest01","password": "12345" }
   When method post
   Then status 200
   * print response
   * def responseText = response
     And match $.errorMessage == 'Wrong password.'

