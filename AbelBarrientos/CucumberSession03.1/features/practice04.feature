Feature: Daily activities

  Background:
    Given I wake up at 07:00 am
    And I have breakfast at 08:00 am
    And I go to Jala Foundation at 10:00 am

  Scenario: First
    When I start "practices" for "API test"
    And I research about "ruby" for "API test"
    Then I finish early

  Scenario: Second
    When I do these activities:
    | activity  | subject  |
    | practice  | API test |
    | ruby      | API test |
    | test plan | English  |
    Then I finish early
