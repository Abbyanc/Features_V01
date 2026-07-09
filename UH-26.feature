Feature: Registrar un nuevo estudiante en la aplicación
  Como estudiante universitario de la UPC
  Quiero registrar una cuenta nueva en SmartQueue con mi correo institucional
  Para poder acceder a la fila virtual del comedor universitario

  Scenario: Registro exitoso con correo institucional UPC
    Given el estudiante descarga la aplicación SmartQueue y abre la pantalla "Registro"
    And el estudiante ingresa su correo electrónico institucional (ej. nombre@upc.edu.pe)
    When el estudiante completa todos los campos obligatorios (nombre, apellido, teléfono)
    And presiona el botón "Registrarse"
    Then el sistema envía un correo de verificación al correo nombre@upc.edu.pe
    And el sistema muestra el mensaje "Revisa tu correo para verificar tu cuenta"

  Scenario: Registro fallido por correo institucional inválido
    Given el estudiante abre la pantalla "Registro" en la aplicación SmartQueue
    When el estudiante ingresa un correo que no pertenece a UPC (ej. nombre@gmail.com)
    And presiona el botón "Registrarse"
    Then el sistema muestra el mensaje "Debes usar tu correo institucional UPC para registrarte"
    And el sistema no crea la cuenta