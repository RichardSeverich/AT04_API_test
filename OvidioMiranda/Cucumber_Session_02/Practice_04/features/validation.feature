#Create 1 feature file with 1 scenario :
#Add validation steps for :
#ZipCode (only digits)
#Username (only lower case)
#Country  (any character except digits)

Feature:  Account

  Scenario: Register an account
    Given I fill in the zip code field with 102433
    And I fill in the user name field with "ovidiocbba"
    And I selected as country Bolivia
    And I click on save button
    Then message is displayed stating that the account was saved successfully