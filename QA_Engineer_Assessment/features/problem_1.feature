Feature: Need to verify the right count of values appear on the screen
  Scenario: Verify count of value fields on webpage
    Given a user is on https://www.exercise1.com/values
    When a count is applied to the number of text fields
    Then the count should equal 6
