Feature: Create and edit category
  As an administrator
  In order to Organize and categorize my blogs
  I want to create and edit a category

  Background: categories have been added to database

    Given the following categories exist:
    | name      | keywords | permalink | description |
    | General   |          | general   |             |

    And I am on the new category page

  Scenario: Create a new category
    When I fill in the following:
        | Name        | Foobar              |
        | Keywords    | Icelake             |
        | Permalink   | ABC                 |
        | Description | Foobar in Icelake.  |
    And I press "Save"
    Then I should see "Foobar" within category_container
    And I should see "Icelake" within category_container
    And I should see "ABC" within category_container
    And I should see "Foobar in Icelake." within category_container

  Scenario: Edit a category
    When I follow "Edit"
    And I fill in "category name" with "aaa"
    And I fill in the following:
        | Name        | Foobar              |
        | Keywords    | Icelake             |
        | Permalink   | ABC                 |
        | Description | Foobar in Icelake.  |
    And I press "Save"
    Then I should see "Foobar" within category_container
    And I should see "Icelake" within category_container
    And I should see "ABC" within category_container
    And I should see "Foobar in Icelake." within category_container