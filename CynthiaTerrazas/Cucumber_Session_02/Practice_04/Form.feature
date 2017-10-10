#Create 1 feature file with 1 scenario :
#Add validation steps for :
#ZipCode (only digits)
#Username (only lower case)
#Country  (any character except digits)

Feature: Basic form
  Scenario: Save personal information
    Given User is on Home Page
    When I fill ZipCode field with "123454567"
    And I fill Username field with "cynthia"
    And I fill Country field with "Bolivia"
    And I click on save button
    Then Message displayed saved Successfully


