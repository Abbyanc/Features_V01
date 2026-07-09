Feature: Cambiar contraseña desde el perfil
  Como estudiante universitario de la UPC que usa SmartQueue
  Quiero poder cambiar mi contraseña desde mi perfil
  Para mantener mi cuenta segura cuando lo necesite

  Scenario: Cambio de contraseña exitoso
    Dado que el estudiante ha iniciado sesión en SmartQueue
    Y está dentro de la sección de perfil
    Cuando ingresa una nueva contraseña válida y confirma el cambio
    Entonces el sistema actualiza la contraseña
    Y muestra un mensaje de confirmación

  Scenario: Contraseña inválida
    Dado que el estudiante está cambiando su contraseña
    Cuando ingresa una contraseña que no cumple los requisitos
    Entonces el sistema no permite el cambio
    Y muestra un mensaje indicando que la contraseña no es válida