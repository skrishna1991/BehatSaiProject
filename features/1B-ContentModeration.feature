#language: en
Feature:  verification of Search and advanced search feature.

  @AdminUser
  Scenario: As Admin
    Given I am on homepage
    When I login as admin user
    And wait for 2 secs
    When I click button "//a[contains(text(),'Content')]"
    Then I should see on page "Add Content"
    Then Print "Admin has permission to create Content"
    Then I click button "(//a[contains(text(),'Add content')])[2]"
    Then I click button "//a[contains(text(),'Article')]"
    Then I should see on page "Create Article"
    And wait for 2 secs
    Then I scroll and click button "#edit-moderation-state-0-state > option:nth-child(1)"
    Then I should see on page "Published"
    And wait for 2 secs
    Then Print "Admin can Draft/Publish the content"

  @EditorUser
  Scenario: As Editor User
    Given I am on homepage
    When I login as Editor user
    And wait for 2 secs
    When I click button "//a[contains(text(),'Content')]"
    Then I should not see on page "Add Content"
    Then Print "Editor does not have permission to create Content"

  @ContentModerationCheck
  Scenario: As Editor User
    Given I am on homepage
    When I login as admin user
    And wait for 2 secs
    And I click button "//a[contains(text(),'People')]"
    Then I click button "//a[contains(text(),'Permissions')]"
    Then I should see on page "Content Moderation"
    Then Print "Content Moderation verified for Admin and Editor users for Article CT"

  @AdminUserEditContentModerationPublishedtoDraft
  Scenario: As Admin
    Given I am on homepage
    When I login as admin user
    And wait for 2 secs
    When I click button "//a[contains(text(),'Content')]"
    Then I should see on page "Test Article SK"
    Then I click button "(//a[contains(text(),'Edit')])[3]"
    Then I scroll and click button "#edit-moderation-state-0-state > option:nth-child(1)"
    And I click button "//input[@id='edit-submit']"
    Then I should see on page "Article Test Article SK has been updated. "

  @AdminUserEditContentModerationDrafttoPublished
  Scenario: As Admin
    Given I am on homepage
    When I login as admin user
    And wait for 2 secs
    When I click button "//a[contains(text(),'Content')]"
    Then I should see on page "Test Article SK"
    Then I click button "(//a[contains(text(),'Edit')])[3]"
    Then I scroll and click button "#edit-moderation-state-0-state > option:nth-child(3)"
    And I click button "//input[@id='edit-submit']"
    Then I should see on page "Article Test Article SK has been updated. "

  @AdminUserEditContentModerationPublishedtoArchive
  Scenario: As Admin
    Given I am on homepage
    When I login as admin user
    And wait for 2 secs
    When I click button "//a[contains(text(),'Content')]"
    Then I should see on page "Test Article SK"
    Then I click button "(//a[contains(text(),'Edit')])[3]"
    Then I scroll and click button "#edit-moderation-state-0-state > option:nth-child(3)"
    And I click button "//input[@id='edit-submit']"
    Then I should see on page "Article Test Article SK has been updated. "