Feature: Sign in and registration

  Background:
    Given I am on the homepage

  Scenario: Enter to Sign in page
    When I click in the "Sign in" button
    Then I should get the "Sign in" page

  Scenario: Enter to Registration page
    When I click in the "Registration" button
    Then I should get the "Registration" page
