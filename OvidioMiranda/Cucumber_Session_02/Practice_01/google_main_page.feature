Feature: Search

  Background:
    Given I am on the Google search main page

  Scenario Outline: Search a word
    When I write the word <word> in the search text field
    And I click on Google Search button
    Then The results of the search word should be displayed

    Examples:
      | word    |
      | snake   |
      | toyota  |
      | mac     |
      | windows |

  Scenario: Using the I'm Feeling Lucky button
    When I click on I'm Felling Lucky button
    Then I am redirected to Google Doodles Page

  Scenario: Using the hyperlink for Gmail
    When I click on gmail hyperlink
    Then I am redirected to Google Gmail Page

  Scenario: Using the hyperlink for Images
    When I click on Images hyperlink
    Then I am redirected to the page for Google Images Search

  Scenario: Using the Sign in button
    When I click on Sign in button
    Then I am redirected to the page for Sign in

  Scenario: Using the Google Apps button
    When I click on Google Apps button
    Then Show various Google apps