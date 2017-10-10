Feature: Daily activities
  Background:
    Given I installed "ruby"
    And I installed "cucumber gem"

  Scenario: API Testing
    When I start the following tasks:
      | Ruby      |  In progress    |
      | Cucumber  |  In progress    |
      | Test Plan |  In progress    |
      | Framework |  In progress    |
    And I mark as finiched the following tasks
      | Ruby      |  finished    |
      | Cucumber  |  finished    |
    Then I should see the following table:
      | Ruby      |  finished       |
      | Cucumber  |  finished   	|
      | Test Plan |  In progress    |
      | Framework |  In progress    |
