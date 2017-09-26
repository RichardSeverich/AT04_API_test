#Trying to make sure all features are working

  Feature: Google_test

    Scenario: Main Page cursor links
      Given user is on Google home page
      Then cursor is the textBox search
      And user gets a top links section from Google

    Scenario: It is possible do a search
      Given user is on Google home page
      When user type the text Google in the textBox of search
      And user click "search" button the top search section
      Then user gets the result of the search

    Scenario: Searching with the I'm Feeling Lucky button
       Given user is on Google home page
       When user presses the "I'm Felling Lucky" button the top search section
       Then user is redirected to Google Doodles Page

    Scenario: Using Gmail Buttom
       Given user is on Google home page
       When user presses the "Gmail" button to the top links section
       Then user is redirected to "Gmail" page