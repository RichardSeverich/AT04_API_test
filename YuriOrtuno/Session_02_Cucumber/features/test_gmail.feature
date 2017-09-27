Feature: Validate form gmail

  Scenario : Check email gmail form fields
    Given  A gmail form page
    When I enter the $first name: $Yury
    And I enter the $last name: $Ortuno
    And I enter the username Yury123
    And I enter the $password Password123
    And I enter the $password confirm_password Password123
    And I enter the birday "07/24/2009"
    And I enter the gender $Male
    And I enter the cellphone 71585245
    And I enter the currentEmail $yury@gmail.com