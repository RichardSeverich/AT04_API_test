Feature: Google
  In order to test Google main page.
  As a new client.
  I want to verify of Google main page functions.

  Scenario: Google Home Page load correctly
    Given the user opens the browser
    When the user accesses the page of www.google.com
    Then the user can see the main page of google

  Scenario: Perform a search
    Given the user is on Google home page
    When the user sets "Cucumber" in search section
    And the user presses the "search" button
    Then the user gets the result of the search

  Scenario: Perform a voice search
    Given the user is on Google home page
    When the user presses the "voice search" button
    And the user describes by voice the search
    Then the user gets the result of the search

  Scenario: G-mail
    Given the user is on Google home page
    When the user presses the "Gmail" button
    Then the user is redirected to "Gmail" page

  Scenario: Images
    Given the user is on Google home page
    When the user presses the "Images" button
    Then the user is redirected to "Google Images" page

  Scenario: Google Apps button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    Then the user get the Google Apps options

  Scenario: Google Apps button with My Account Button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    And the user presses the "My Account" button
    Then the user is redirected to "User account" page

  Scenario: Google Apps button with Search Button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    And the user presses the "Search" button
    Then the user is redirected to "Google" page

  Scenario: Google Apps button with Maps Button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    And the user presses the "Maps" button
    Then the user is redirected to "Google Maps" page

  Scenario: Google Apps button with Play Button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    And the user presses the "Play" button
    Then the user is redirected to "Google Play" page

  Scenario: Google Apps button with Gmail Button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    And the user presses the "G-mail" button
    Then the user is redirected to "G-mail" page

  Scenario: Google Apps button with Drive Button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    And the user presses the "Drive" button
    Then the user is redirected to "Google Drive" page

  Scenario: Google Apps button with Calendar Button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    And the user presses the "Calendar" button
    Then the user is redirected to "Google Calendar" page

  Scenario: Google Apps button with Translate Button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    And the user presses the "Translate" button
    Then the user is redirected to "Google Translate" page

  Scenario: Google Apps button with Photos Button
    Given the user is on Google home page
    When the user presses the "Google Apps" button
    And the user presses the "Photos" button
    Then the user is redirected to "User's photos" page
