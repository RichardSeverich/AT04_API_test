Feature: Practice 03
  Scenario: Sign In
    Given I select "Sign in"
    Then I should see "Sign in" page

  Scenario: Registration
    Given I select "Create an account"
    Then I should see "Create an account" page

    Scenario: Failed
    Given I select "Failed"
    Then I should see "Failed" page
