#1A
  # language: en
Feature: Test the Contact form in EN
  Scenario: To test Contact form in EN
    Given I am on homepage
    And I follow "English"
    Then I follow "Contact"
    When I enter following details
      | Your name     | Your email address        | Subject      | Message  |
      | SK    | sk@test.com  | Test subject | test |
    And I press "Send message"
#    And I fill in "Your name" with "SK"
#    And I fill in "Your email address" with "test@axel.com"
#    And I fill in "Subject" with "Test Behat Subject"
#    And I fill in "Message" with "Contact form Test"
#    And I press "Send message"


## language: es
#    Característica: Prueba de inicio de sesión
#    Escenario: Mi primer inicio de sesión
#    Dadas estoy en la página de inicio
#    Entonces sigo "Español"
#    Entonces debo ver "Iniciar sesión"

