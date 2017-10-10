Feature: Google Main Page
  As a new user
  I want to use Google Main Page
  So that I can search for information

  Scenario: Normal Search with button
    Given I am on "Google Main" page
    When I search for information
    Then I click on "Google Search" button
    And The information is displayed

  Scenario: Normal Search with Enter
    Given I am on "Google Main" page
    When I search for information
    Then I press Enter
    And The information is displayed

  Scenario: Voice Search
    Given I am on "Google Main" page
    When I search for information
    Then I click on "Search by voice" button
    And I can speak to perform the search
    And The information is displayed
    And The important information is read

  Scenario: Feeling Lucky
    Given I am on "Google Main" page
    When I want to search random information
    Then I click on "I'm Feeling Lucky" button
