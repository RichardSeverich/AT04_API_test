Feature: Daily Activities

  Background: before get out
    Given I have breakfast
    And I ready to go to jalasfot
    Then I get out

  Scenario: I assist jalasoft
    Given I ago to jalasoft
    And I asist all class


  Scenario: I attend play soccer
    Given I play $soccer
    When take my
      | socks         |
      | short         |
      | jambs         |
      | soccer jersey |
    Then in my backpack i should have
      | socks         |
      | short         |
      | jambs         |
      | soccer jersey |

  Scenario: I attend play volleyball
    Given I play $volleyball
    When take my
      | socks             |
      | short             |
      | volleyball jersey |
    Then in my backpack i should have
      | socks             |
      | short             |
      | volleyball jersey |