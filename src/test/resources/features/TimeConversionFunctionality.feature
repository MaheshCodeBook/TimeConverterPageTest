Feature: Time Conversion Functionality
  As a user of the Time Converter page
  I want to be able to enter inputs
  So that I can view the correct time conversion

  Scenario: Time conversion with empty hours input

    Given I am on the Time Converter page
    When I click on the 'Convert to Seconds' button
    Then an error message 'Please enter a valid number of hours.' should be visible

  Scenario: Time conversion with empty minutes input

    Given I am on the Time Converter page
    When I enter a valid hours input
    And I click on the 'Convert to Seconds' button
    Then an error message 'Please enter a valid number of minutes.' should be visible

  Scenario: Successful time conversion

    Given I am on the Time Converter page
    When I enter a valid hours input
    And I enter a valid minutes input
    And I click on the 'Convert to Seconds' button
    Then I can view the expected time conversion text