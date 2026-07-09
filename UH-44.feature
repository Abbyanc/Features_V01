Feature: Generar reporte diario de atenciones en el comedor
  Como administrador del comedor universitario de la UPC en el horario de 12:30 p.m. a 2:30 p.m.
  Quiero generar un reporte diario de atenciones al final de cada jornada
  Para saber cuántos estudiantes usaron el comedor y en qué horario hubo mayor demanda

  Scenario: Generación de reporte diario con datos del día actual jueves
    Given el administrador del comedor de la UPC inició sesión en el panel administrativo el día jueves 09 de junio de 2026 a las 2:35 p.m.
    When el administrador accede a la sección "Reportes"
    And selecciona la opción "Reporte diario"
    And selecciona la fecha actual "09/06/2026"
    And presiona el botón "Generar reporte"
    Then el sistema calcula el total de estudiantes atendidos en el comedor UPC durante el día 09/06/2026 (ej. 350 estudiantes)
    And el sistema muestra el promedio de espera en minutos para cada intervalo de 30 minutos
    And el sistema permite descargar el reporte en formato PDF

  Scenario: Generación de reporte diario de una fecha pasada con datos históricos
    Given el administrador está en la sección "Reportes" del panel administrativo
    When el administrador selecciona la opción "Reporte diario"
    And elige una fecha pasada "01/06/2026"
    And presiona el botón "Generar reporte"
    Then el sistema consulta la base de datos histórica de atenciones del día 01/06/2026
    And el sistema muestra el total de estudiantes atendidos el 01/06/2026 (ej. 320 estudiantes)
    And el sistema muestra el mensaje "Mostrando datos históricos del 01/06/2026"