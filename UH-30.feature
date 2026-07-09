Feature: Configurar horario de atención del comedor
  Como administrador del comedor universitario de la UPC
  Quiero configurar el horario de atención del comedor (12:30 p.m. a 2:30 p.m.)
  Para que el sistema solo acepte turnos dentro de ese horario y rechace los que estén fuera

  Scenario: Configuración exitosa del horario de atención
    Given el administrador inició sesión en el panel administrativo y accede a "Configuración"
    When el administrador ingresa la hora de inicio "12:30 p.m." y la hora de fin "2:30 p.m."
    And presiona el botón "Guardar horario"
    Then el sistema guarda el horario en la base de datos
    And el sistema muestra el mensaje "Horario de atención actualizado correctamente"

  Scenario: El sistema rechaza turnos fuera del horario configurado
    Given el administrador configuró el horario de 12:30 p.m. a 2:30 p.m.
    When un estudiante intenta escanear el código QR a las 4:00 p.m.
    Then el sistema muestra el mensaje "El comedor está cerrado. Horario de atención: 12:30 p.m. a 2:30 p.m."
    And el sistema no asigna ningún turno