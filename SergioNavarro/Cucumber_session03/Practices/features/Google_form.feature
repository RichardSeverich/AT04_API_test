Feature: Fill Google form

Scenario: User Name and Last Name
	Given User is on the new account form
	When User write his name as "Sergio"
	And User write his last name as "Navarro"
	Then no message of error shows

Scenario: Username validation
	Given User is on the new account form
	When User write a username has a "sergio.navarro"
	Then no message of user already taken shows

Scenario: User password validation
	Given User is on the new account form
	When User write a password has a "Abc123."
	Then No message of low security password shows

Scenario: User Birthday validation
	Given User is on the new account form
	When User select Month, Day and Year as "July", "27", "1999" 
	Then No message of error of the date shows

Scenario: User Gender Validation
	Given User is on the new account form
	When User select an option "Male"
	Then Gender es showed in the option.

Scenario: User Number Validation
	Given User is on the new account form
	When User write a Mobile Phone as "79621658"
	Then no message of error shows

Scenario: User Email Validation
	Given User is on the new account form
	When User write an Email as "sergio.navarro@fundacion-jala.org"
	Then no message of error shows