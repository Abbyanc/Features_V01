UH-02: # language: es
Feature: Visualizar estado del turno virtual

  Como usuario de SmartQueue
  Quiero visualizar mi posición en la fila
  Para saber cuánto tiempo falta para mi atención


  Background:
    Dado que el usuario tiene un turno asignado


  Scenario: Usuario consulta su turno actual

    Dado que el usuario tiene el turno T-025 asignado
    Cuando abre la aplicación SmartQueue
    Entonces visualiza su posición actual en la fila
    Y observa el tiempo estimado restante


  Scenario: Usuario recibe actualización del turno

    Dado que existen usuarios siendo atendidos antes que él
    Cuando el sistema actualiza la fila
    Entonces la aplicación modifica la posición del usuario
    Y muestra el nuevo tiempo estimado