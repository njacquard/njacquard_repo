Feature: Testing various values on the site: https://www.exercise1.com/values

  Scenario: Need to verify the right count of values appear on the screen
    Given a user is on the webpage and counting all the text fields
    When a count is applied to the number of text fields on the screen
    Then the count should equal 6

  Scenario: Need to verify the values on the screen are greater than 0
    Given: a user is on the webpage and comparing all values on the screen
    When a value is evaluated on the screen
    Then the value is greater than 0

  Scenario: Need to verify the total balance is correct based on the values listed on the screen
    Given a user is on the webpage and counting all values on the screen
    When each value of a field is added together
    Then the total should equal 1,000,000.00

  Scenario: Need to verify the values are formatted as currencies
    Given a user is on the webpage and looking at the values for the text fields
    When each value of a field is evaluated for number format
    Then the values should be in a valid currency

  Scenario: Need to verify the total balance matches the sum of the values
    Given a user is on the webpage and is counting all values on the screen
    When each value of a field is added together
    Then the total amount of the values should equal the value of the total balance field
