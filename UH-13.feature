Feature: Desactivar notificaciones de la fila virtual
  Como estudiante universitario de la UPC que usa la app SmartQueue
  Quiero poder desactivar las notificaciones de la fila virtual
  Para no recibir mensajes cuando estoy en horas de clases y distraerme

  Scenario: Desactivación de notificaciones
    Dado que el estudiante ha iniciado sesión en SmartQueue
    Y tiene activadas las notificaciones de la fila virtual
    Cuando entra a "Configuración de notificaciones"
    Y selecciona "Desactivar notificaciones"
    Entonces el sistema desactiva las notificaciones de la cuenta
    Y muestra el mensaje "Notificaciones desactivadas correctamente"

  Scenario: No se recibe notificaciones luego de desactivar
    Dado que el estudiante ya desactivó las notificaciones
    Cuando hay una actualización de su turno en la fila virtual
    Entonces el sistema no envía ninguna notificación
    Y la configuración sigue desactivada