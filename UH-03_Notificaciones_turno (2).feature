UH-03: # language: es
Feature: Recibir notificaciones antes de la atención

  Como usuario esperando atención
  Quiero recibir una alerta antes de mi turno
  Para acercarme al establecimiento en el momento correcto


  Background:
    Dado que el usuario tiene activadas las notificaciones


  Scenario: Usuario recibe aviso de próximo turno

    Dado que faltan pocos turnos para la atención del usuario
    Cuando el sistema detecta que su turno está próximo
    Entonces envía una notificación push
    Y muestra el mensaje "Tu turno está próximo"


  Scenario: Usuario desactiva notificaciones

    Dado que el usuario desactiva las alertas
    Cuando cambia la configuración
    Entonces el sistema deja de enviar notificaciones