Feature: comments feature

  Background: Creating Comment for Update comment and Delete comment
    When I create a comment with "name" and "email@mail.com" and "Body 123" with 201
    Then I can search for the comment with "<name>" and "<email>" and "<body>" with 200

  Scenario Outline: update the comment
    When I update the comment with "<name>" and "<email>" and "<body>" with 200
    Then I can search for the comment with "<name>" and "<email>" and "<body>" with 200
    Examples:
      | name         | email                    | body                                                                                                                          |
      | id labore ex | EliseoGarden@gardner.biz | quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium |

  Scenario: Delete the comment
    When I delete a comment with 200
    Then the search result for the comment returns 404

  Scenario Outline: Post a comment for a post regression
    When I create a comment with "<name>" and "<email>" and "<body>" with 201
    Then I can search for the comment with "<name>" and "<email>" and "<body>" with 200

    Examples:
      | name                           | email               | body                                                                                                                                                    |
      | id labore ex et quam laborum 1 | Eliseo@gardner.biz  | laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium |
      | id labore ex et quam laborum 2 | Eliseo2@gardner.biz | laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium |
      | id labore ex et quam laborum 3 | Eliseo3@gardner.biz | laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium |
      | id labore ex et quam laborum 4 | Eliseo4@gardner.biz | laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium |
      | id labore ex et quam laborum 5 | Eliseo5@gardner.biz | laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium |
      | id labore ex et quam laborum 6 | Eliseo6@gardner.biz | laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium |
      | id labore ex et quam laborum 7 | Eliseo7@gardner.biz | laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium |
      | id labore ex et quam laborum 8 | Eliseo8@gardner.biz | laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium |
