Feature: check the variables values

  # <BDD keyword> <def> <variable name> = <value>
  # <*> <def> <variable name> = <value>

  Background: global variables
    * def applicationName = 'Google'
    * def timeout = 200

  Scenario: To define and check the values of variables
    Given def var1 = 10
    And  def myName = "Karate framework"
    * def var2 = var1 + 10
    Then print "var1==>" , var1
    And print "myName ==>" , myName
    And print "var2 ==>" , var2
    And print "applicationName & timeout  ==>" , applicationName ,timeout

  Scenario: To define and check the values of variables in another scenario
    Given def var1 = 15
    And  def myName = "BDD framework"
    * def var2 = var1 + 90
    Then print "var1==>" , var1
    And print "myName ==>" , myName
    And print "var2 ==>" , var2
    And print "applicationName & timeout  ==>" , applicationName ,timeout
