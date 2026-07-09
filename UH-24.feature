Feature: Visualizar actividad reciente de la cuenta
  Como estudiante universitario de la UPC que usa SmartQueue
  Quiero poder ver la actividad reciente de mi cuenta
  Para llevar un control de mis acciones dentro de la aplicación

  Scenario: Visualización del historial de actividad
    Dado que el estudiante ha iniciado sesión en SmartQueue
    Y se encuentra en la sección de su perfil
    Cuando accede a la opción "Actividad reciente"
    Entonces la aplicación muestra un registro de las acciones realizadas por el usuario
    Y el usuario puede revisar su historial dentro de la app

  Scenario: Actualización de la actividad en tiempo real
    Dado que el estudiante está en la sección de actividad reciente
    Cuando el usuario realiza nuevas acciones dentro de la aplicación
    Entonces el sistema registra y actualiza la actividad automáticamente
    Y el usuario ve los nuevos eventos en su historial