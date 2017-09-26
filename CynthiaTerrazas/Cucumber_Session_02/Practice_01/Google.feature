#Consider you will be in charge of testing google main page.
#Create a feature file describing your feature, and adding all the scenarios that
#you consider that need to be add to be sure that page is working as expected
#Add the validation steps using Given, Then, When and also sing And /But or *.


Feature: Search in Google

  Scenario: search information in google page
    Given I am on the Google search page
    When I fill "Search" field with the word that I want to search
    And I click on "Google Search" button
    Then I should see the results of the search


  Scenario: search images in google page
    Given I am on the Google search page
    When I click on "images" button
    And I fill "Search" field with the word that I want to search the images
    And I click on "Google Search" button
    Then I should see the results of the images that I search

  Scenario: search gmail page
    * I am on the Google search page
    * I click on "Gmail" button
    * I should be on Gmail home page


  Scenario: search login google page
    * I am on the Google search page
    * I click on "login" button
    * I should be on login page


  Scenario: search notices for spend time page
    * I am on the Google search page
    * I click on "I am Feeling lucky " button
    * I should see diferentes proposes of google.

