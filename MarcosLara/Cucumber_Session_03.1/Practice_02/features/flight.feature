Feature: Buy flight passage form

  Scenario: Register a passage with credit card successfully
    Given I am on the "Buy" page
    When I set the quantity to "1" passage
    And I set the payment method to "credit card" and code to "0123456"
    And I click on "Buy" button
    Then I should get a confirmation message for the passage

  Scenario: Register a passage with credit card successfully
    Given I am on the "Buy" page
    When I set the quantity to "5" passages
    And I set the payment method to "pay pal" and code to "987654"
    And I click on "Buy" button
    Then I should get a confirmation message for every passage
