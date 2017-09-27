#Suppose you are going to test the form to create a new gmail account :
#
#Add the feature file and the scenarios for your testing, in your steps verify
#that arguments received for each field are specific (e.g. Birthday Year only numbers, etc, etc)

Feature: Gmail Account

  Scenario: Create a Gmail Account
    Given I am in the Gmail Account page
    And I fill the name with Cynthia
    And I fill Last name field with Terrazas
    And I fill the username with cynthiaT
    And I fill the password with jala123
    And I fill the confirm password with jala123
    And I fill the birthday month with September
    And I fill the birthday day with 20
    And I fill the birthday year with 1991
    And I fill the Gender with Female
    And I fill the Mobile phone with 60770206
    And I fill the Email adress with cynthia@fundacion.com
    And I click on Next step button
    Then Message displayed is the account was created successful


