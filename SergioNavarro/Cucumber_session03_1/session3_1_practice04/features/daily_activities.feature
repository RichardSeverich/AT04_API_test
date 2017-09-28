Feature:

  Scenario: List of task for new day
    Given Is a new day
    When Student has a list of task
     |       | English | Frech | Spanish |
     | task1 |    x    |   x   |    x    |
     | task2 |    x    |   x   |    x    |
    Then The Student start to work

  Scenario: Student has planned to finish some task
    Given The list os task
    When The student finish task1 of English
    And The student finish task2 of Spanish
    Then The student should has the next table
      |       | English | Frech | Spanish |
      | task1 |    o    |   x   |    x    |
      | task2 |    x    |   x   |    o    |
