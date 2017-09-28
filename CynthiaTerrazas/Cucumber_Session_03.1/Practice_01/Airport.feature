#Imagine you’re building a system for airport departure lounge screens.
#Write an scenario with step(s) that consider the 3 cases below:
#
#Given the flight EZY4567 is leaving today
#...
#Given the flight C038 is leaving today
#...
#Given a flight BA01618 is leaving today
#
#Start by writing a step definition that works for the first step,
# and then make it more and more generic so that it works with the other steps too.
Feature: airport departure

  Scenario: fliight EZY4567 information
    Given I am in the airport
    When the flight EZY4567 is leaving today
    Then I can board the plane

  Scenario: fliight C038 information
    Given I am in the airport
    When the flight C038 is leaving today
    Then I can board the plane

  Scenario: fliight BA01618 information
    Given I am in the airport
    When the flight BA01618 is leaving today
    Then I can board the plane