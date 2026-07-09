Feature: Visualizar todos los establecimientos desde una cuenta
  Como administrador developer de sistemas administrativos de SmartQueue
  Quiero ver una lista de todos los establecimientos registrados bajo mi cuenta
  Para gestionar múltiples comedores universitarios desde un solo panel

  Scenario: Visualización de lista con 3 establecimientos registrados
    Given el administrador de sistemas general tiene registrados 3 establecimientos (Comedor UPC, Comedor UNMSM, Comedor PUCP)
    When el administrador accede a la sección "Establecimientos"
    Then el sistema muestra una lista con los 3 establecimientos
    And el sistema muestra para cada uno: nombre, dirección, número de estudiantes atendidos hoy
    And el administrador puede hacer clic en cualquiera para ver sus detalles

  Scenario: Visualización de lista vacía cuando no hay establecimientos registrados
    Given el administrador general es nuevo y no ha registrado ningún establecimiento
    When el administrador accede a la sección "Establecimientos"
    Then el sistema muestra el mensaje "No tienes establecimientos registrados"
    And el sistema muestra un botón "Registrar tu primer establecimiento"