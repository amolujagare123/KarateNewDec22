Feature:  Javascript demonstration

  Scenario: to check Javascript functions
    Given  def functionValue = function() {  return 15;  }
    * print 'function value ==>' , functionValue()
    * def functionParam = function(p1,p2) {  return p1 * p2;  }
    * print 'function with Parameter value ==>' , functionParam(10,25)
    * def functionText = function(str) {  return 'Hello' + str;  }
    * print 'function with Text value ==>' , functionText('World')
    * def functionRandom = function() {  return Math.floor(Math.random() * 10);  }
    * print 'function for random value ==>' , functionRandom()

