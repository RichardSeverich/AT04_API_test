#Suppose you are going to test the form to create a new gmail account :
#Add the feature file and the scenarios for your testing, in your steps verify that arguments
#received for each field are specific (e.g. Birthday Year only numbers, etc, etc)
Feature:  Gmail Account

  Scenario Outline: Register an account
    Given I am in the  Gmail Account page
    And I fill in the firt name field with <first_name>
    And I fill in the last name field with <last_name>
    And I fill in the user name field with <user_name>
    And I fill in the password field with <password>
    And I fill in the confirm password field with <password>
    And I fill in the fields for the date of birth with Mouth:<month> Day: <day> Year: <year>
    And I fill in the gender field with <gender>
    And I fill in the mobile phone field with <mobile_phone>
    And I fill in the email address field with <email_address>
    And I click on save button of the form
    Then I should show the message "The account saved successfully"

    Examples:
      | first_name | last_name | user_name     | password  | month   | day | year | gender | mobile_phone | email_address        |
      | ovidio     | miranda   | ovidiomiranda | 2017.At04 | January | 1   | 1991 | Male   | 79732801     | ovidiocbba@gmail.com |

