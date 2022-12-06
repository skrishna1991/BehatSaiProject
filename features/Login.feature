#Test
Feature: Login
  Scenario: Login with existing user
    Given I am on homepage
    Then I follow "Log in"
  @tag1
  Scenario: Enter Login details and login
    When I fill in "edit-name" with "krishna1991"
    When I fill in "edit-pass" with "Swetha@2020"
    And I press "edit-submit"
  @tag2
  Scenario: Enter Login details and login
    When I fill in "edit-keys" with "test"
    And I press "edit-submit"


## language: es
#    Característica: Prueba de inicio de sesión
#    Escenario: Mi primer inicio de sesión
#    Dadas estoy en la página de inicio
#    Entonces sigo "Español"
#    Entonces debo ver "Iniciar sesión"

