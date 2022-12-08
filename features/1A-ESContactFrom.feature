#language: es
@spanishContactForm
Característica: validación del formulario de contacto

  @Escenario
  Escenario: para comprobar la página de contacto
    Dadas estoy en la página de inicio
    Entonces sigo "Spanish"
    Entonces sigo "Contacto"
    Cuando Ingreso los siguientes detalles
      | Your name     | Your email address        | Subject      | Message  |
      | SK    | sk@test.com  | Test subject | test |