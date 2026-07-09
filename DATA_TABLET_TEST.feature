# language: es
Feature: Prueba de Data Table con Lógica Real

  Scenario Outline: Registro de estudiantes con diferentes correos institucionales
    Given el estudiante descarga la aplicación SmartQueue
    When el estudiante ingresa el correo "<Correo>"
    And completa los campos obligatorios
    And presiona "Registrarse"
    Then el sistema "<Resultado>"
    And muestra el mensaje "<Mensaje>"

    Examples:
      | Correo                    | Resultado | Mensaje                                      |
      | nombre@upc.edu.pe         | acepta    | Revisa tu correo para verificar tu cuenta    |
      | nombre@unmsm.edu.pe       | acepta    | Revisa tu correo para verificar tu cuenta    |
      | nombre@pucp.edu.pe        | acepta    | Revisa tu correo para verificar tu cuenta    |
      | nombre@gmail.com          | rechaza   | Debes usar un correo institucional válido    |
      | nombre@hotmail.com        | rechaza   | Debes usar un correo institucional válido    |