#language: en
@login
Feature: Login Functionality

  Background:
    Given I am on homepage
    When I follow "Sign in"
    And I wait 3 seconds

  @smoke
  Scenario: Verify user Login
    And I fill in "email" with "goswami.tarun77+1@gmail.com"
    And I fill in "passwd" with "Test1234"
    And I press "SubmitLogin"
    And I wait 10 seconds

  @regression @dev
  Scenario Outline: Verify user Login for multiple users
    And I fill in "email" with "<username>"
    And I fill in "passwd" with "<password>"
    And I press "SubmitLogin"
    And I wait 10 seconds
    Examples:
      | username                    | password |
      | goswami.tarun77+1@gmail.com | Test1234 |
      | tarun.goswami77@gmail.com   | Test1234 |