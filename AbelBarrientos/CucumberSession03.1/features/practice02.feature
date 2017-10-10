Feature: Buying coffee

  Scenario: Buy 1 coffee
    Given I buy 1 coffee
    When the cost is $10 for each coffee
    Then I should pay $10 dollars

  Scenario: Buy 1 apple
    Given I buy 1 apple
    When the cost is $15 for each apple
    Then I should pay $15 dollars

  Scenario: Buy 10 coffees
    Given I buy 10 coffees
    When the cost is $10 for each coffee
    Then I should pay $100 dollars
