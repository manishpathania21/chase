Feature: End to End flow

  Scenario Outline: Get a user by user id and create a post and comment on the post
    When I search a user by "<user>" with 200
    Given I create a post with "<title>" and "<body>" for "<user>" with response code 201
    Then  The new post is posted against the "<user>" with "<title>" and "<body>"
    When I create a comment with "<name>" and "<email>" and "<body>" with 201
    Then I can search for the comment with "<name>" and "<email>" and "<body>" with 200
    Examples:
      | title  | body  | user | name  | email          |
      | title1 | body1 | 1    | Jason | jason@mail.com |

  Scenario: Get all users create post for them and comment on the post
    Given when I get all the users with the response code 200
    When I create a post with "title1" and "body1" with response code 201
    When I create a comment with "name" and "email@mail.com" and "Body 123" with 201

