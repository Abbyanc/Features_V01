Feature: Visualizar promedio de calificaciones del establecimiento (admin)
  Como administrador de un establecimiento que utiliza SmartQueue
  Quiero visualizar el promedio de calificaciones que dejan los clientes
  Para conocer el nivel de satisfacción con el servicio brindado

  Scenario: Administrador visualiza el promedio de calificaciones
    Given el administrador inició sesión en el panel administrativo de SmartQueue
    And el establecimiento ya cuenta con varias calificaciones registradas por los clientes durante la última semana
    When el administrador ingresa a la sección "Calificaciones" del sistema
    Then el sistema muestra el promedio general de las calificaciones recibido por el establecimiento
    And muestra la cantidad total de opiniones registradas
    And el administrador puede visualizar el resultado sin necesidad de realizar otra acción

  Scenario: Establecimiento sin calificaciones registradas
    Given el administrador accede al panel administrativo de un establecimiento que todavía no ha recibido calificaciones
    When abre la sección "Calificaciones"
    Then el sistema indica que aún no existen calificaciones registradas
    And el promedio de estrellas aparece como no disponible