Feature: Form validation

  Scenario: Form Validation 
    Given User is on the Google registration form page
    When User sets first name as "Richard"
    And  User sets Last name as "Severich"
    And  User sets Username as "RichardSeverich"
    And  User sets Password as "MyPassword123"
    And  User sets Month as "May"
    And  User sets Days as "26"
    And  User sets Year as "1991"
    And  User sets Gender as "Male"
    And  User sets Phone as "59176479666"
    And  User sets Email as "Richard.Severich@fundacion-jala.org"
    Then verify
