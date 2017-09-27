Feature: Customer Search

  @some
  Scenario Outline: search of a total priced for a list clients

    Given Go to the customer search page
    When I enter the Name customer "<name>"
    And  I enter the ID Customer "<id>"
    And  I enter the  Total priced "<total priced>"
    Examples:
      | name | id  | total priced |
      | Yury | 123 | $100         |
      | Yver | 234 | $200         |


  @any
  Scenario: search for a client

    Given Go to the customer search page
    When I enter the Name customer "Yury"
    And  I enter the ID Customer "123"
    And  I enter the  Total priced "$100"


