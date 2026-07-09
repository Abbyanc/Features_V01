Feature: Iniciar sesión en la aplicación con credenciales válidas
  Como estudiante universitario de la UPC
  Quiero iniciar sesión en SmartQueue con mi correo y contraseña
  Para acceder a mi perfil y a la fila virtual del comedor

  Scenario: Inicio de sesión exitoso con credenciales correctas
    Given el estudiante ya tiene una cuenta registrada en SmartQueue
    When el estudiante abre la aplicación e ingresa su correo nombre@upc.edu.pe y su contraseña
    And presiona el botón "Iniciar sesión"
    Then el sistema autentica al estudiante y redirige a la pantalla principal
    And el sistema muestra el mensaje "Bienvenido de vuelta, (nombre del estudiante)"

  Scenario: Inicio de sesión fallido por contraseña incorrecta
    Given el estudiante ya tiene una cuenta registrada en SmartQueue
    When el estudiante ingresa su correo nombre@upc.edu.pe y una contraseña incorrecta
    And presiona el botón "Iniciar sesión"
    Then el sistema muestra el mensaje "Contraseña incorrecta. Inténtalo nuevamente"
    And el sistema no permite el acceso a la aplicación