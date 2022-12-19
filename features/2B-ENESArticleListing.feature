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

  @api @test1
  Scenario Outline:
    And I enter keyword "<title>" in textbox "input#edit-title-0-value"
    When I enter keyword "<tags>" in textbox "input#edit-field-tags-target-id"
    Then I click button "<save>"

    Examples:
      | url | title | body | lang | tags | save |
      | /en/node/add/article | new article | english body | English | Cocktail party | //input[@id='edit-submit'] |
      | /es/node/add/article | espanyol article | espanyol body | Spanish | Carrots | //input[@id='edit-submit'] |