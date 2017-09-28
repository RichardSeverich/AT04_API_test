
Feature: tic-tac-toe game 
Scenario: Board
Given a board like this:
|   | 1 | 2 | 3 |
| 1 |   |   |   |
| 2 |   |   |   |
| 3 |   |   |   |
When "player x" plays in row 2, column 1
And "player y" plays in row 1, column 3
Then the board should look like this:
|   | 1 | 2 | 3 |
| 1 |   |   | y |
| 2 | x |   |   |
| 3 |   |   |   |
