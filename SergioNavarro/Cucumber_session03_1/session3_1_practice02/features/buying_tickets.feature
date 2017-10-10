Feature:Buying

  Scenario: Buying a ticket
    Given User wants to buy 1 ticket
    When User have to pay $25
    And User will pay with cash
    Then User pay for the ticket

  Scenario: Buying tickets
    Given User wants to buy 4 tickets
    When User have to pay $100
    And User will pay with check
    Then User pay for the tickets