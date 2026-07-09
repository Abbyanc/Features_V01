Feature: Cerrar sesión de forma correcta mediante la aplicación
  Como estudiante universitario de la UPC que utiliza la aplicación SmartQueue desde un dispositivo móvil
  Quiero cerrar sesión de forma segura
  Para proteger mi información personal y evitar accesos no autorizados a mi cuenta

  Scenario: Cierre de sesión exitoso
    Given el estudiante universitario de la UPC ha iniciado sesión en la aplicación SmartQueue
    And el estudiante se encuentra en la pantalla principal de la aplicación
    When el estudiante selecciona la opción "Cerrar sesión"
    Then la aplicación finaliza la sesión activa del estudiante
    And la aplicación redirige al estudiante a la pantalla de inicio de sesión
    And la aplicación muestra el mensaje "Sesión cerrada correctamente"

  Scenario: Intento de acceso después de cerrar sesión
    Given el estudiante universitario de la UPC ha cerrado sesión correctamente
    When el estudiante intenta acceder a una sección restringida de la aplicación
    Then la aplicación solicita nuevamente las credenciales de acceso
    And la aplicación no permite el acceso sin autenticación