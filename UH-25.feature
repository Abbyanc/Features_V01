Feature: Recuperar contraseña mediante correo electrónico
  Como estudiante universitario de la UPC registrado en la aplicación SmartQueue
  Quiero recuperar el acceso a mi cuenta mediante mi correo electrónico registrado
  Para poder ingresar nuevamente a la aplicación cuando haya olvidado mi contraseña

  Scenario: Recuperación exitosa de contraseña
    Given el estudiante universitario de la UPC posee una cuenta registrada en la aplicación SmartQueue
    And el estudiante accede a la pantalla de inicio de sesión
    When el estudiante selecciona la opción "Olvidé mi contraseña"
    And ingresa el correo electrónico asociado a su cuenta
    Then la aplicación envía un enlace de recuperación al correo electrónico registrado
    And la aplicación muestra el mensaje "Se ha enviado un enlace de recuperación a su correo electrónico"

  Scenario: Correo electrónico no registrado
    Given el estudiante universitario de la UPC accede a la opción "Olvidé mi contraseña"
    When el estudiante ingresa un correo electrónico que no se encuentra registrado en la aplicación
    Then la aplicación muestra el mensaje "El correo electrónico ingresado no se encuentra registrado"
    And la aplicación no envía ningún enlace de recuperación

  Scenario: Restablecimiento exitoso de contraseña
    Given el estudiante universitario de la UPC recibió el enlace de recuperación en su correo electrónico
    When el estudiante accede al enlace enviado
    And registra una nueva contraseña válida
    Then la aplicación actualiza la contraseña de la cuenta
    And la aplicación muestra el mensaje "Contraseña actualizada correctamente"
    And el estudiante puede iniciar sesión con la nueva contraseña