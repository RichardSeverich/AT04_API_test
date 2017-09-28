Feature:Customer Search

  Background: I am on search page of customer
  @scenario_outline
  Scenario Outline: Search a customer
    When I fill in the customer id field with <id>
    And I fill in the name customer field with <name>
    And I fill in the total price field with <total_price>
    And I click on Search button
    Then I should display the message "The Client exists in the client list"
    Examples:
      | id | name   | total_price |
      | 1  | Ovidio | 358         |
      | 2  | Ana    | 85          |
      | 3  | Martha | 236         |

 #2. Add a normal scenario to simulate the search of a client and verify that exists into the client list
  @scenario_normal
  Scenario: Search a customer
    When I fill in the customer id field with 1
    And I fill in the name customer field with Ovidio
    And I fill in the total price field with 358
    And I click on Search button
    Then I should display the message "The Client exists in the client list"



