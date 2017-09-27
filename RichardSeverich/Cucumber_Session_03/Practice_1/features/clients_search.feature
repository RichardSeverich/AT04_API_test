Feature: Clients Search
  You should send the name of the client
  The ID of the client
  The Total priced of purchase

  @ScenarioOutline
  Scenario Outline: Clients
    Given user is on Registration Page
    When user sets <name>, <id> and <total_price>
    Then clients are registered
    Examples:
      | name    | id | total_price |
      | Emily   |  0 |    100      |
      | Richard |  1 |    500      |
      | Homero  |  2 |    400      |
      | Barth   |  3 |    350      |
      | Liza    |  4 |    660      |
      | Meliza  |  5 |    680      |
      | Gonzalo |  6 |    655      |
      | Milo    |  7 |    900      |
      | Erika   |  8 |    550      |
      | Mulan   |  9 |    280      |

   @ScenarioOutline
  Scenario Outline: Search Clients Outline
    Given user is on Search Page
    When user search client by <id>
    Then user finds client registered as <name> and <total_price>
    Examples:
      | name    | id | total_price |
      | Emily   |  0 |    100      |
      | Richard |  1 |    500      |
      | Homero  |  2 |    400      |
      | Barth   |  3 |    350      |
      | Liza    |  4 |    660      |
      | Meliza  |  5 |    680      |
      | Gonzalo |  6 |    655      |
      | Milo    |  7 |    900      |
      | Erika   |  8 |    550      |
      | Mulan   |  9 |    280      |

  @ScenarioNormal
  Scenario: Clients Search Normal
    Given user is on Search Page
    When user search client registered
    Then user finds client