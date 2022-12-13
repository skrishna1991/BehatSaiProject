#language: en
Feature:  verification of Article CT

  Background:
    Given I am on homepage
    When I login as admin user
    And wait for 2 secs
    When I click button "//a[contains(text(),'Content')]"
    Then I should see on page "Add Content"
    Then Print "Admin has permission to create Content"
    Then I click button "(//a[contains(text(),'Add content')])[2]"
    Then I click button "//a[contains(text(),'Article')]"


  @ArticleCTNodes
  Scenario: Check Nodes in Article CT
    Then I should see on page "Create Article"
    And I should see on page "Title"
    And I should see on page "Body"
    And I should see on page "Language"
    And I should see on page "Tags"
    And I should see on page "Media Image"
    And I should see on page "Save As"
    And I should see on page "Author"
    And I should see on page "URL alias"
    Then Print "All contents in Article CT are showing fine"
    And wait for 2 secs

  @ArticleCTValidationFailScenario
  Scenario: Check validations in Article CT
    When I enter keyword " " in textbox "#edit-title-0-value"
    Then I click button "//input[@id='edit-submit']"
    And I should see on page "Please fill out this field."
    Then Print "Title is mandatory field to be filled."

  @ArticleCTValidationPassScenario
  Scenario: Check validations in Article CT
    When I enter keyword "ArticleTest SK" in textbox "#edit-title-0-value"
    Then I click button "//input[@id='edit-submit']"
    Then Print "All mandatory fields are filled."
    Then Print "Article is going to be created in Draft state."
    And I should see on page "Article ArticleTest SK has been created."