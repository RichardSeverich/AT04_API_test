Feature: Write a feature file that contains 2 scenarios,
  each one with steps that need a step definition with:

  Scenario: Question mark modified for singular and plurar
    Given I eat $1 apple
    And I eat $2 apples
    And I eat $10 apples

  Scenario: Multiple captures of data
    Given I drink juice of $banana with $milk and $2 $cookies
    And I drink juice of $pineapple with $water and $1 $pie

  Scenario: Noncapturing group
    Given I visit the homepage
    And I go to the homepage
