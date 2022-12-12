
#language: en
Feature: As an anonymous user
  In order to navigate to respective header and footer links
  user should be able to see header and footer with its components

  Background:
    Given I am on the homepage

  @Header
  Scenario: As user perform various header actions
    When I go to "<Page>"
    And I follow "Menu1"
    And I follow "Menu2"
    And I follow "Menu3"
    And I follow "Menu4"
      | Menu1 | Menu2    | Menu3   | Menu4 |
      | Home  | Articles | Recipes | Home  |
    And wait for 2 secs
