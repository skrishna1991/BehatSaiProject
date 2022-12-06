Feature: Registration, Login and MyAccount

  @regression @testing
  Scenario: Verify Login Functionality
    Given I am on the homepage
    And I should see "Log in"
    When I follow "Log in"
    And I fill in "edit-name" with "krishna1991"
    And I fill in "edit-pass" with "Swetha@2020"
    And I press "edit-submit"
    Then I should see "My account"
    And I should see "My account"
    But I should not see "Log in"