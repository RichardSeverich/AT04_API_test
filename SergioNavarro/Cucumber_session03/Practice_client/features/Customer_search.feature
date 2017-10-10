Feature: For customer search prices amount
@Outline_Scenario
Scenario Outline: Users amount
   Given User is in the MainPage 
   When User write a name:<name> with an ID:<id> and the Amount:<amount>
   Then User is showed
   Examples:
	| name  | id | amount |
  | User1 | 01 | 5      |
  | User2 | 02 | 150    |
  | User3 | 03 | 20     |

@Normal_Scenario
Scenario: Search User
	Given User is in the MainPage 
	When User uses the search button with "User1" to find
	Then Show message of success 