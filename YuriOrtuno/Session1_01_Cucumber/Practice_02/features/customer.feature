Feature: Search page
  'When I go to the Google search page, and search for an item,
  I expect to see some reference to that item in the result summary.'

  Scenario: yuye
    Given I have deposited $100 in my account
    When I have deposited $250 in my account
    When I add cats to the search box
    And click the Search Button
