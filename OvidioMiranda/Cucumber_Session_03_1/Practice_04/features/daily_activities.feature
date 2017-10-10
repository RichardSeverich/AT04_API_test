Feature: Daily Activities

  Background:
    Given I wake up at "7:30" a.m
    When I take a shower
    And I dress

  Scenario: Before leaving home
    When I checked food available
    And I prepare my breakfast
    And I eat my breakfast
    Then I leave home

  Scenario: After leaving home
    When I leave my house at "08:15" a.m
    And I drive my motorcycle to go to the foundation
    And I arrive to the foundation, I have to do the following tasks:
      | number_of_task | list_of_task           |
      | 1              | Write test plan        |
      | 2              | Perform Ruby Practices |
      | 3              |                        |
      | 4              |                        |
    And I add the task number 3 with name "Investigate Ruby"
    And at night I have to write my Daily Report
    Then My list of tasks should look like this:
      | number_of_task | list_of_task           |
      | 1              | Write test plan        |
      | 2              | Perform Ruby Practices |
      | 3              | Investigate Ruby       |
      | 4              |                        |

