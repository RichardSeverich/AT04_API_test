#This feature was made by Richard Severich
#copyright – Richard Severich		                	

Feature: Login
  As account owner
  I want to login facebook page.
  So that I can do login successfully
  
  Scenario Outline: Login successfully with valid user and password
    Given I am on the Facebook page
    When I set username <Username> and <Password>
    And  click log in button
    Then I should see facebook home page
    Examples:
      | Username         					|    Password    	   |
      | richard.severich@fundacion.org 		|	 myPassword        |
      | RichardSeverich					    |	 myPassword        |
      | 7679666      					    |	 myPassword        |

Scenario: Given I have %100 my account
      Given I have $100 in my account
