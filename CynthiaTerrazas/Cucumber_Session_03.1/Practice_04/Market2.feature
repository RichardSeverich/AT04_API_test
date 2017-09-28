#Write a feature file describing 2 scenarios of your daily activities using a background.
#
#In the second scenario add any information in a data table.(e.g list of task, etc)
#
#Using the same logic of the last example(game) perform a comparison between what result
#you are expecting after add or delete any option of the table.

Feature:
  Scenario: Receive the salary
    Given I worked a month
    When I receive my salary
    Then I have money

  Scenario: buy clothes
    Given I am in the market
    When I buy 2 clothes
    And I paid with "Money" the mount of 200 Bs
    Then I have new clothes

  Scenario: buy products
    Given I am in the market with this list:
   |    |   product |     kg   |
   |  1 |           |          |
   |  2 |           |          |
   |  3 |           |          |

    And I buy 5 Kg of sugar in the 1 position of the list
    Then I have this products:
      |    |  product  |     kg   |
      |  1 |  sugar    |     5    |
      |  2 |           |          |
      |  3 |           |          |


