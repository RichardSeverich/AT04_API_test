Feature: Validation

  Scenario: Validating
    Given I insert the zipcode "102030"
    And I input the username "johndoe"
    And I introduce the country "Somewhere"

  Scenario: Invalid
    Given I insert the zipcode "102030a"
    And I input the username "Johndoe1"
    And I introduce the country "Somewhere1"
