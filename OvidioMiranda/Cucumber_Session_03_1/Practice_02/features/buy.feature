Feature: Buy

  Background:
    Given I am in the supermarket

#  Write a feature file that contains 2 scenarios, each one with steps that need a step definition with:
#  1. Question mark modified for singular and plurar
#  2. Multiple captures of data
#  3. Noncapturing group

  Scenario: Buy an apple
    When I want buy 1 apple
    And I go to the cashier
    And I want to pay with cash the total of the purchase which is  2 Bs
    Then I can take home an apple

  Scenario: Buy more than one apple
    When I want buy 10 apples
    And I go to the cashier
    And I want to pay with credit card the total of the purchase which is  20 Bs
    Then I can take home apples

