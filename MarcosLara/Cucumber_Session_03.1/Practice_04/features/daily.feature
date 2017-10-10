Feature: Daily activities

  Background:
    Given I attend to a class

  Scenario: I perform the English tasks
    When The English trainer assign tasks
      | Questions | pending |
      | Idioms    | pending |
      | Essay     | pending |

    And I perform some tasks
      | Questions | done |
      | Idioms    | done |

    Then the status tasks should be
      | Questions | done    |
      | Idioms    | done    |
      | Essay     | pending |
