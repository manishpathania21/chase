Feature: Posts Feature
  Background: creating a post
    Given I create a post with "title1" and "body1" for "1" with response code 201
    Then  The new post is posted against the "<user>" with "<title>" and "<body>"

  Scenario Outline: Updating a post
    When I update the post with "<title>" and "<body>" for "<user>" with response code 200
    Then the post is updated for the "<user>" with "<title>" and "<body>"
    Examples:
      | title  | body  | user |
      | title2 | body2 | 1    |

  Scenario: Deleting the post
  When I delete the post with 200
  Then the search result for the post returns 404


  Scenario Outline: regression for the create post
    Given I create a post with "<title>" and "<body>" for "<user>" with response code 201
    Then  The new post is posted against the "<user>" with "<title>" and "<body>"
    Examples:
      | title  | body  | user |
      | title1 | body1 | 1    |
      | title2 | body2 | 2    |
      | title3 | body3 | 3   |
      | title4 | body4 | 4    |
      | title5 | body5 | 5    |
      | title6 | body6 | 6    |
      | title7 | body7 | 7    |
      | title8 | body8 | 8    |
      | title9 | body9 | 9    |
      | title0 | body10 | 10    |

  Scenario Outline: Get all the posts for a user
    When I search for all posts for a "<user>" with response code 200
    Then all the records are of the "<user>"
    Examples:
      | user |
      | 1    |
      | 2    |
      | 3    |
      | 4    |
      | 5    |
      | 6    |
      | 7    |
      | 8    |
      | 9    |
      | 10   |

  Scenario Outline: Get all the posts for a non existant user
    When I search for all posts for a "<user>" with response code 200
    Then the response is empty
    Examples:
      | user |
      | 11   |





