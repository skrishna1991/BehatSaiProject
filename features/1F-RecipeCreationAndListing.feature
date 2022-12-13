#language: en
Feature:  verification of Article CT

  Background:
    Given I am on homepage
    When I login as admin user
    And wait for 2 secs

  @api
  Scenario:
    Given "Tags" terms:
      | name    |
      | Tag SK |
    Given "recipe_category" terms:
      | name    |
      | Recipe SK |
    When I go to "/en/admin/structure/taxonomy/manage/tags/overview"
    Then I should see on page "Tag SK"
    When I go to "/en/admin/structure/taxonomy/manage/recipe_category/overview"
    And I should see on page "Recipe SK"

