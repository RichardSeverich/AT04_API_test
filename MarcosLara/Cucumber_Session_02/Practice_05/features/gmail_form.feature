Feature: Register new GMail account

  Scenario Outline: User can be register a new account with valid parameters
    Given I am on the registration homepage
    When I fill the name field with <name>
    And I fill the last name field with <last name>
    And I fill the username field with <username>
    And I fill the password field with <password>
    And I fill the confirm password with <password>
    And I select <month> in Month drop down box
    And I fill the day field with <day>
    And I fill the year field with <year>
    And I select <gender> the Gender drop down box
    And I fill the Mobile Phone field with <phone>
    And I fill the Current email address field with <current>
    And I click in "Register" button
    Then I should get the message "Register successfully"

    Examples:
      | name   | last name | username     | password     | month    | day | year | gender | phone  | current           |
      | Nikola | Tesla     | nikola.tesla | NiK0La0T3Sl@ | July     | 10  | 1856 | Male   | 101856 | nikola.t@mail.com |
      | Johann | Gauss     | j.gauss      | G@uSS0ye@h   | February | 23  | 1855 | Male   | 101857 | gauss.j@mail.com  |