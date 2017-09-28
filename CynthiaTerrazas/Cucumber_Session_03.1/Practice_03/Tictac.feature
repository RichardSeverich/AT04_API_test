#Modify the second step:
#When player x plays in row 2, column 1
#
#so that you are able to add different players to the game :
#When player y plays in row 2, column 1


Feature: tic tac
Scenario:
Given a board like this:
|    | 1 | 2 | 3 |
| 1 |   |   |   |
| 2 |   |   |   |
| 3 |   |   |   |

  When player x plays in row 2, column 1
Then the board should look like this:
|    | 1 | 2 | 3 |
| 1 |    |   |   |
| 2 | x  |   |   |
| 3 |    |   |   |

When player y plays in row 3, column 2
  Then the board should look like this:
    |    | 1 | 2 | 3 |
    | 1 |    |   |   |
    | 2 | x  |   |   |
    | 3 |    | y |   |

  When player x plays in row 3, column 3
  Then the board should look like this:
    |   | 1 | 2 | 3 |
    | 1 |   |   |   |
    | 2 | x |   |   |
    | 3 |   | y | x |

  When player y plays in row 1, column 3
  Then the board should look like this:
    |   | 1 | 2 | 3 |
    | 1 |   |   | y |
    | 2 | x |   |   |
    | 3 |   | y | x |