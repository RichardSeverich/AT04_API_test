Feature: Create the steps definition considering the argument received with two or more possible options.
    ZipCode (only digits)
    Username (only lower case)
    Country  (any character except digits)

   Scenario: ZipCode
    Given User sets "8050200" ZipCode
    Then verify "8050200"

  Scenario: Username
    Given User sets "richardseverich" Username
    Then verify "richardseverich"

  Scenario: Country 
    Given User sets "Bolivia" Country
     Then verify "Bolivia"
