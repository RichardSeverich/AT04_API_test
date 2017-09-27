Feature: Home Page
  In order to test Home Page of application
  As a Registered user
  I want to specify the features of home page

Background:
  Given a user signs up for a 30 day account

Scenario: Home Page Default content
	When user is on home page
    And user reload the page
    Then user gets a bootcamp section

Scenario: access before expiry
	When they login in 29 days
	Then they will be let in

Scenario: access after expiry
	When they login in 31 days
	Then they will be asked to renew
