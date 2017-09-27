#Create 1 feature file with 1 scenario that is going to contain :
#Steps for preconditions/results where you can send only two possible options E.g:
#Given I select “Sign in”
#or
#Given I select “Create and account”
#Create the steps definition considering the argument received with two possible options.
#Crate the step in your feature file for Given and Then, using both values and verify that both are
# recognized by the step definition.
#(you can try to insert also any other value in order to see that other values are not matching)

Feature: Home Page of Spotify
  Background:
    Given I am on Spotify home page

  Scenario: Use "Log in" button
    When I select "Log in"
    Then redirects to the page for Log in

  Scenario: Use "Sign up" button
    When I select "Sign up"
    Then redirects to the page for Sign up