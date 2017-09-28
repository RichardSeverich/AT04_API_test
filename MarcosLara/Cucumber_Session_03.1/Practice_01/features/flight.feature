Feature: Airport departure

  Scenario Outline: Departure flight
    Given I am on the "Departure" page
    When I set the flight <flight> to leave today
    Then I should get the message "Changes successfully saved"
    Examples:
      | flight  |
      | EZY4567 |
      | C038    |
      | BA01618 |
