Feature: Testing various values on the site: https://www.exercise1.com/values

  Scenario: Need to verify the right count of values appear on the screen
    Given a user is on the webpage and counting all values
    When a count is applied to the number of text fields on the screen
    Then the count should equal 6

  Scenario: Need to verify the values on the screen are greater than 0
    Given: a user is on the webpage and comparing all values on the screen
    When a value is evaluated on the screen
    Then the value is greater than 0
