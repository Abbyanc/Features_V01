Feature: Consultar historial de turnos anteriores
  Como estudiante universitario de la UPC en el horario de 12:30 p.m. a 2:30 p.m.
  Quiero consultar el historial de todos mis turnos anteriores en el comedor universitario
  Para llevar un registro de cuántas veces he usado el servicio en el último mes
  Y ver los tiempos de espera que tuve en cada ocasión

  Scenario: Estudiante visualiza su historial de turnos de la última semana
    Dado que el estudiante de la UPC está autenticado en la aplicación SmartQueue
    Y se encuentra en la pantalla principal después de haber almorzado en el comedor universitario
    Cuando el estudiante accede a la sección "Mi Historial" desde el menú inferior de la aplicación
    Y selecciona el filtro "Últimos 7 días"
    Entonces el sistema consulta la base de datos
    Y muestra una lista con todos los turnos que el estudiante ha solicitado en los últimos 7 días
    Y muestra para cada turno la fecha, la hora de atención, el tiempo de espera en minutos y el estado

  Scenario: Estudiante visualiza su historial de turnos de un mes completo
    Dado que el estudiante de la UPC está en la sección "Mi Historial" de la aplicación SmartQueue
    Cuando el estudiante selecciona el filtro "Últimos 30 días"
    Y presiona el botón "Buscar" de color azul
    Entonces el sistema consulta la base de datos
    Y muestra una lista con todos los turnos que el estudiante ha solicitado en los últimos 30 días
    Y muestra el resumen estadístico en la parte superior de la pantalla