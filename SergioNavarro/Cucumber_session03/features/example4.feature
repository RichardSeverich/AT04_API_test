Feature: Character class
	 ZipCode (only digits)
     Username (only lower case)
     Country  (any character except digits)


Scenario: Examples
   Given I have a ZipCode as "032485"
   And I have a Username like "sergiop"
   And I have a country as "Bolivia"
   Then i could fill the form



