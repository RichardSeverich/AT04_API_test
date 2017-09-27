Feature: Google Main Page
  As a new user
  I want to use Google Main Page
  So that I can search for information

  Scenario: Normal Search with button
    But I am on "Google Main" page
    But I search for information
    And I click on "Google Search" button
    And The information is displayed

  Scenario: Normal Search with Enter
    * I am on "Google Main" page
    * I search for information
    * I press Enter
    * The information is displayed

  Scenario: Voice Search
    Then I am on "Google Main" page
    Given I search for information
    When I click on "Search by voice" button
    And I can speak to perform the search
    And The information is displayed
    But The important information is read

  Scenario: Feeling Lucky
    * I am on "Google Main" page
    * I want to search random information
    * I click on "I'm Feeling Lucky" button

# Is still working.
