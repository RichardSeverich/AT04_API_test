# Google main page scenarios

Feature: User main page
  As a public user of Google
  I want to access to the main services pages from the main page
  So that I can access to the Google services

  Background:
    Given I am in the Google main page

   Scenario Outline: Perform a search with the Google Search button
    When I fill the search box with <keywords>
    Given I fill the search box with <keywords>
    And I click on "Google Search" button
    Then I should get a page with search results that contains <keywords>

    Examples:
      | keywords  |
      | something |
      | someone   |
      | somewhere |

  Scenario Outline: Perform a search with the I'm Feeling Lucky button
    Given I fill the search box with <keywords>
    And I click on "I'm Feeling Lucky" button
    Then I should get a page with search results that contains <keywords>

    Examples:
      | keywords  |
      | something |
      | someone   |
      | somewhere |

  Scenario: Enter to Sign in main page
    Given I click on "Sign in" button
    Then I should get the "Sign in" home page

  Scenario: Enter to Advertising main page
    Given I click on "Advertising" text link
    Then I should get the "Advertising" home page

  Scenario: Enter to Business main page
    Given I click on "Business" text link
    Then I should get the "Business" home page

  Scenario: Enter to About main page
    Given I click on "About" text link
    Then I should get the "About" home page

  Scenario: Enter to Privacy main page
    Given I click on "Privacy" text link
    Then I should get the "Privacy" home page

  Scenario: Enter to Terms main page
    Given I click on "Terms" text link
    Then I should get the "Terms" home page

  Scenario: Enter to Settings main page
    Given I click on "Settings" text link
    Then I should get the "Settings" home page

  Scenario: Enter to My Account main page
    Given I click on "Google apps" button
    And I click on "My Account" icon button
    Then I should get the "My Account" home page

  Scenario: Enter to Maps main page
    Given I click on "Google apps" button
    And I click on "Maps" icon button
    Then I should get the "Maps" home page

  Scenario: Enter to Youtube main page
    Given I click on "Google apps" button
    And I click on "Youtube" icon button
    Then I should get the "Youtube" home page

  Scenario: Enter to Google Play main page
    Given I click on "Google apps" button
    And I click on "Google Play" icon button
    Then I should get the "Google Play" home page

  Scenario: Enter to News main page
    Given I click on "Google apps" button
    And I click on "News" icon button
    Then I should get the "News" home page

  Scenario: Enter to News main page
    Given I click on "Google apps" button
    And I click on "News" icon button
    Then I should get the "News" home page

  Scenario: Enter to GMail main page
    Given I click on "Google apps" button
    And I click on "GMail" icon button
    Then I should get the "GMail" home page

  Scenario: Enter to Drive main page
    Given I click on "Google apps" button
    And I click on "Drive" icon button
    Then I should get the "Drive" home page

  Scenario: Enter to Calendar main page
    Given I click on "Google apps" button
    And I click on "Calendar" icon button
    Then I should get the "Calendar" home page

  Scenario: Enter to Google Plus main page
    Given I click on "Google apps" button
    And I click on "Google Plus" icon button
    Then I should get the "Google Plus" home page

  Scenario: Enter to Translate main page
    Given I click on "Google apps" button
    And I click on "Translate" icon button
    Then I should get the "Translate" home page

  Scenario: Enter to Photos main page
    Given I click on "Google apps" button
    And I click on "Photos" icon button
    Then I should get the "Photos" home page

  Scenario: Enter to Shopping main page
    Given I click on "Google apps" button
    And I click on "Shopping" icon button
    Then I should get the "Shopping" home page

  Scenario: Enter to Wallet main page
    Given I click on "Google apps" button
    And I click on "Wallet" icon button
    Then I should get the "Wallet" home page

  Scenario: Enter to Finance main page
    Given I click on "Google apps" button
    And I click on "Finance" icon button
    Then I should get the "Finance" home page

  Scenario: Enter to Docs main page
    Given I click on "Google apps" button
    And I click on "Docs" icon button
    Then I should get the "Docs" home page

  Scenario: Enter to Books main page
    Given I click on "Google apps" button
    And I click on "Books" icon button
    Then I should get the "Books" home page

  Scenario: Enter to Blogger main page
    Given I click on "Google apps" button
    And I click on "Blogger" icon button
    Then I should get the "Blogger" home page

  Scenario: Enter to Contacts main page
    Given I click on "Google apps" button
    And I click on "Contacts" icon button
    Then I should get the "Contacts" home page

  Scenario: Enter to Hangouts main page
    Given I click on "Google apps" button
    And I click on "Hangouts" icon button
    Then I should get the "Hangouts" home page

  Scenario: Enter to Keep main page
    * I click on "Google apps" button
    * I click on "Keep" icon button
    * I should get the "Keep" home page
