Feature: Create new gmail account

  Scenario: Inserting values
    Given I am on Google Sing up page
    When I insert my firstname "John"
    And I insert my lastname "Doe"
    And I insert my username as "johndoe"
    And I insert my password as "secret"
    And I retype my password as "secret"
    And I select my birthday month "July"
    And I set my birthday day "20"
    And I set my birthday year "1800"
    And I select my gender as "Male"
    And I insert my phone number "+591 63772231"

