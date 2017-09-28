#Suppose you create a feature file for a customer search
#
#1. Add an scenario outline to simulate a search of a total priced for a list clients
#
#You should send the name of the client
#The ID of the client
#The Total priced of purchase
#
#On behind you should create a singleton class with a hash containing the list of clients and the ID
#and another hash with the ID of the client and the Total_priced, to perform the comparison between
# this values and the expected sent in the feature file.
#
#2. Add a normal scenario to simulate the search of a client and verify that exists into the
# client list(using the first has created before).
#
#3. Include a different tag for each scenario and create a before  hook to
#print "I am running an outline scenario" for the first case
#and print "I am running a normal scenario" for the second case
#
#create and after hook
#print "I finished running the outline scenario" for the first case
#and print "I finished running a normal scenario" for the second case
#
#Also add a Message “CUSTOMER SEARCH TEST” when both tags are executed and print “SEARCHIN…..”
# only when scenario outline is executed

  Feature: Customer Search
    @firstCase
    Scenario Outline: search of a total priced for a list clients
      Given I am in the customer search page
      When I fill the Name customer with "<name>"
      And  I fill the ID Customer with <id>
      And  I fill the Total priced with <total priced>
      Then The result of the search is correct

      Examples:
        | name      | id     | total priced |
        | Cynthia   | 1001   | 700          |
        | Victoria  | 1002   | 1000         |
        | Roberto   | 1003   | 200          |

    @secondCase @firstCase
    Scenario: verify that exists into the client list
      Given I am in the customer search page
      When I fill the Name customer with "Cynthia"
      And  I fill the ID Customer with 1001
      And I fill the Total priced with 700
      Then The result of the search is correct

