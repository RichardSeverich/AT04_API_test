Feature: Buy apple

  Scenario: I buy one apple
    Given I am going to eat "1" apple
    When I am going to pay "2" dolars
    And I am going to pay with "money"
    Then I pay for the apple

  Scenario: I buy many apples
    Given I am going to eat "5" apples
    When I am going to pay "10" dolars
    And I am going to pay with "credit card"
    Then I pay for the apples
