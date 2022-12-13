
#language: en
Feature:  verification of Search and advanced search feature.
  Background:
    Given I am on homepage
    And wait for 2 secs
  @Header
  Scenario: Header actions test
    And I follow "Home"
    And I follow "Articles"
    And I follow "Recipes"
    And wait for 2 secs

  @Footer
  Scenario: Footer actions test
    And I follow "Alcohol free"
    And I follow "Chocolate"
    And I follow "Drinks"
    And I follow "Herbs"
    And wait for 2 secs