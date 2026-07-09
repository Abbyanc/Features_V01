Feature: Detectar usuarios inactivos y removerlos de la fila
  Como sistema de SmartQueue
  Quiero detectar usuarios inactivos en la fila
  Para removerlos automáticamente y mantener un flujo ordenado de atención

  Background:
    Dado que un usuario está en la fila virtual

  Scenario: Detección y eliminación de inactividad
    Dado que el usuario no realiza ninguna acción durante 5 minutos
    Cuando el sistema detecta inactividad prolongada
    Entonces el usuario es eliminado automáticamente de la fila
    Y su turno se libera para otros usuarios

  Scenario: Usuario activo mantiene su turno
    Dado que el usuario interactúa con la aplicación cada 2 minutos
    Cuando el sistema monitorea su actividad
    Entonces el sistema mantiene su turno activo en la fila
    Y el usuario no es eliminado