Feature: Visualizar tiempo promedio de atención por empleado
  Como administrador del comedor universitario de la UPC
  Quiero ver el tiempo promedio de atención por cada empleado en el panel de reportes
  Para identificar qué empleados son más rápidos y cuáles necesitan capacitación

  Scenario: Visualización de tiempos por empleado en hora punta
    Given el administrador está en la sección "Reportes"
    And selecciona "Rendimiento por empleado"
    When el administrador selecciona el día 09/06/2026
    Then el sistema muestra que el empleado Juan Pérez atendió 45 estudiantes con promedio de 25 segundos por atención
    And el sistema muestra que la empleada María López atendió 40 estudiantes con promedio de 35 segundos por atención
    And el sistema resalta en verde a Juan Pérez como el más rápido

  Scenario: Comparación de rendimiento entre dos empleados
    Given el administrador está en la sección "Rendimiento por empleado"
    When el administrador selecciona a Juan Pérez y María López para comparar
    And selecciona la semana del 01/06/2026 al 07/06/2026
    Then el sistema muestra una gráfica comparativa de tiempos por día
    And el sistema muestra que Juan Pérez es 10 segundos más rápido en promedio que María López