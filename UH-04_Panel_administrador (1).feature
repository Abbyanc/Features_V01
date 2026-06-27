UH-04: # language: es
Feature: Administrar filas mediante panel de control

  Como administrador de establecimiento
  Quiero visualizar las filas en tiempo real
  Para mejorar la organización de atención


  Background:
    Dado que el administrador inició sesión en SmartQueue


  Scenario: Administrador revisa cantidad de usuarios esperando

    Dado que existen usuarios registrados en la fila virtual
    Cuando el administrador ingresa al panel
    Entonces visualiza la cantidad de personas esperando
    Y observa los tiempos promedio de atención


  Scenario: Administrador gestiona la demanda alta

    Dado que existe una alta cantidad de usuarios esperando
    Cuando el administrador revisa el flujo de atención
    Entonces puede reorganizar los recursos disponibles
    Y reducir la congestión del establecimiento