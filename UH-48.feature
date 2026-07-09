Feature: Filtrar calificaciones por rango de fechas
  Como administrador de un establecimiento que utiliza SmartQueue
  Quiero filtrar las calificaciones por un rango de fechas
  Para revisar la opinión de los clientes en un periodo determinado

  Scenario: Filtrar calificaciones correctamente
    Given el administrador se encuentra en la sección de calificaciones del panel administrativo
    And existen comentarios registrados durante diferentes fechas
    When selecciona una fecha de inicio
    And selecciona una fecha de fin
    And presiona el botón "Aplicar filtro"
    Then el sistema muestra únicamente las calificaciones registradas dentro del rango seleccionado
    And actualiza el promedio correspondiente a ese periodo
    And mantiene visibles los comentarios relacionados con esas calificaciones

  Scenario: No existen calificaciones en el rango seleccionado
    Given el administrador se encuentra en la sección de calificaciones del establecimiento
    When selecciona un rango de fechas en el que no se registraron opiniones de clientes
    Then el sistema no muestra resultados en la lista de calificaciones
    And informa que no existen registros para ese periodo
    And permite seleccionar un nuevo rango de fechas