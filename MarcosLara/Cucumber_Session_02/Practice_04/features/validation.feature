Feature: Register new user

  Scenario Outline: User can be registered with valid parameters
    Given I am on the registration homepage
    When I fill the username field with <username>
    And I fill the country field with <country>
    And I fill the zip code field with <zip code>
    And I click on "Register" button
    Then I should get the message "Register successfully"

    Examples:
      | username | country | zip code |
      | marcos   | Bolivia | 123456   |
      | scott    | USA     | 987654   |
