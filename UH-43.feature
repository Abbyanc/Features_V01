Feature: Cerrar sesión en la aplicación
  Como estudiante universitario de la UPC en el horario de 12:30 p.m. a 2:30 p.m.
  Quiero cerrar sesión en SmartQueue cuando termine de usar la aplicación
  Para proteger mi cuenta

  Scenario: Estudiante cierra sesión exitosamente desde el menú de perfil
    Given el estudiante de la UPC está autenticado en la aplicación SmartQueue
    And el estudiante se encuentra en la pantalla "Mi Perfil"
    When el estudiante presiona el botón "Cerrar sesión"
    And confirma la acción presionando "Sí, cerrar sesión"
    Then el sistema cierra la sesión del estudiante inmediatamente
    And el sistema redirige al estudiante a la pantalla de inicio de sesión
    And el sistema muestra el mensaje "Has cerrado sesión correctamente"

  Scenario: Estudiante intenta acceder a su perfil después de cerrar sesión
    Given el estudiante de la UPC cerró sesión en SmartQueue
    And el estudiante ya no está autenticado en la aplicación
    When el estudiante intenta acceder a la pantalla "Mi Perfil"
    Then el sistema detecta que el estudiante no tiene una sesión activa
    And el sistema redirige automáticamente al estudiante a la pantalla "Iniciar sesión"
    And el sistema muestra el mensaje "Debes iniciar sesión para ver tu perfil y tus turnos"