#language: en
Feature:  verification of Search and advanced search feature.
  Background:
    Given I am on homepage
    When I login as admin user
    And wait for 3 secs

  @searchwithResults
  Scenario: To test Search with Results

    When I enter keyword "recipe" in textbox "#edit-keys--2"
    Then I click button "//input[@id='edit-submit--3']"
    And wait for 3 secs
    Then I should see on page "Search for recipe"

  @searchwithNoResults
  Scenario: To test Search with No Results

    When I enter keyword "pcsfdsfsdfork" in textbox "#edit-keys--2"
    Then I click button "//input[@id='edit-submit--3']"
    And wait for 3 secs
    Then I should see on page "Your search yielded no results."

  @AdvancedSearch
  Scenario: To test Advanced Search
    When I enter keyword "pork" in textbox "#edit-keys--2"
    And  I click button "//input[@id='edit-submit--3']"
    And wait for 3 secs
    Then I click button "//details[@id='edit-advanced']/summary"
    And wait for 3 secs
    And I enter keyword "ribs" in textbox "#edit-or"
    And I click button "//input[@id='edit-submit--2']"
    And wait for 3 secs
    Then I should see on page "Borscht with pork ribs"