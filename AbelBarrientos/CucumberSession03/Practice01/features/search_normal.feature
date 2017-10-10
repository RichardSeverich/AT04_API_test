Feature: Normal Search

  @normal
  Scenario: Search by name

    Given I am on search page
    When I search the list by client name "Yury"
    Then I should get an id "AT_01"

  @normal
  Scenario: Search by id

    Given I am on search page
    When I search the list by client id "AT_05"
    Then I should get a name "Sergio"

  @normal
  Scenario: Search by price

    Given I am on search page
    When I search the list by total price "$100"
    Then I should get an id "AT_01"
