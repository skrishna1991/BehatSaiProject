@contactus
Feature: As an Ecommerce store owner,
  I want customer are able to contact me in case of any query

  @regression
  Scenario: Fill in Contact Us form
    Given I am on the homepage
    And I follow "Contact"
    When I fill in "email" with "goswami.tarun77@gmail.com"
    And I fill in "edit-message-0-value" with:
      """
      Dear,

      Its been more than a week, I have not received my order.

      Thanks,
      Tarun Goswami
      """