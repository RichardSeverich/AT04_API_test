Feature: Customer search
  As a user of the store web page
  I want to perform  a customer search
  So that I can get the clients search result

  @ScenarioOutline
  Scenario Outline: Register clients
    Given I am on the "Registration" page
    When I set the <id>, <name> and <total price> of new client
    And I click on "Register" button
    Then I should get the message "Register Successfully"
    Examples:
      | id | name   | total price |
      | 00 | Tesla  | 100         |
      | 01 | Gauss  | 250         |
      | 10 | Picard | 350         |
      | 11 | Newton | 50          |

  @ScenarioOutline
  Scenario Outline: Search Client
    Given I am on the "Search" page
    When I set the <id> in the search box
    And I click on "Search" button
    Then I should get the search result with <name> and <total price>
    Examples:
      | id | name   | total price |
      | 00 | Tesla  | 100         |
      | 01 | Gauss  | 250         |
      | 10 | Picard | 350         |
      | 11 | Newton | 50          |

  @ScenarioNormal
  Scenario: Search client
    Given I am on the "Search" page
    When I set the 11 in the search box
    And I click on "Search" button
    Then I should get a search result
