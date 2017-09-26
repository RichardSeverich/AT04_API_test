#
# Author: Marcos Lara
#

Feature: Search product
  As a user of the Apple Store website.
  I want to perform a search of a product based in keywords.
  So that I can get the search result with all the products related to the keywords.

  Scenario Outline: Get search result based in valid keywords
    Given I am on the Apple Store homepage
    When I fill the search box with <keyword>
    And I click on the search button
    Then I should get a table with the products names that contain <keyword>

    Examples:
    | keyword   |
    | iPhone    |
    | iPad      |
    | iWatch    |
