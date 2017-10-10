#Create 1 feature file with 1 scenario that is going to contain :
#Steps for preconditions/results where you can send only two possible options E.g:
#Given I select “Sign in”
#or
#Given I select “Create and account”
#
#Create the steps definition considering the argument received with two possible options.
#
#Crate the step in your feature file for Given and Then, using both values and verify that both are recognized by the step definition.
#
#(you can try to insert also any other value in order to see that other values are not matching)

Feature:Gmail Page
  Scenario: gmail page information
    Given I am on the Gmail page
    When I click on For work option
    And  I click on Start option
    Then I should be on Welcome Gmail home page