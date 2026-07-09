Feature: Reasignar turnos automáticamente cuando alguien cancela
  Como sistema de SmartQueue
  Quiero reasignar automáticamente los turnos cuando un usuario cancela
  Para que la fila siga funcionando sin interrupciones

  Scenario: Reasignación automática de turno
    Dado que un usuario cancela su turno en la fila
    Cuando el sistema detecta la cancelación
    Entonces el sistema reasigna automáticamente el turno al siguiente usuario en espera
    Y actualiza el orden de la fila

  Scenario: Actualización del orden de la fila
    Dado que se ha reasignado un turno en la fila
    Cuando el sistema reorganiza la lista de usuarios
    Entonces todos los usuarios ven su nueva posición actualizada
    Y la fila continúa su funcionamiento normal