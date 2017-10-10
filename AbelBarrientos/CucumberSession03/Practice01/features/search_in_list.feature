Feature: Search in a List of Clients

  @outline @normal
  Scenario Outline: Search by name

    Given I am on search page
    When I search the list by client name <Name>
    Then I should get an id <Result>
  Examples:
   | Name   | Result |
   | "Sergio" | "AT_05"  |
   | "Marcos" | "AT_04"  |
   | "Yury"   | "AT_01"  |

  @outline
  Scenario Outline: Search by id

    Given I am on search page
    When I search the list by client id <Id>
    Then I should get a name <Result>
  Examples:
   | Id    | Result  |
   | "AT_05" | "Sergio"  |
   | "AT_02" | "Simon"   |
   | "AT_03" | "Richard" |

   @outline
  Scenario Outline: Search by price

    Given I am on search page
    When I search the list by total price <Price>
    Then I should get an id <Id>
  Examples:
   | Price | Id    |
   | "$100"   | "AT_01" |
   | "$200"   | "AT_03" |
   | "$150"   | "AT_02" |
