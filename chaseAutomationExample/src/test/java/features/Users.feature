Feature: users Feature

   Scenario: getting all the users
   Given when I get all the users with the response code 200
     Then validate the list of the users populated

  Scenario Outline: getting user by user Id
    When I search a user by "<userId>" with 200
    Examples:
      | userId |
      | 1      |
      | 2      |
      | 3      |
      | 4      |
      | 5      |
      | 6      |
      | 7      |
      | 8      |
      | 9      |
      | 10     |

    Scenario Outline: non existant user
      When I search a user by "<userId>" with 404
      Examples:
        | userId |
        | 11     |

