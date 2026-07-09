Feature: Reservar turno con anticipación (solo usuarios premium)
  Como estudiante universitario de la UPC con plan premium
  Quiero reservar mi turno para el comedor con un día de anticipación
  Para asegurar mi almuerzo en hora punta sin tener que escanear el QR el mismo día

  Scenario: Reserva anticipada exitosa para el día siguiente a la 1:00 p.m.
    Given el estudiante es usuario Premium y está autenticado en la aplicación
    When el estudiante accede a la sección "Reservar turno"
    And selecciona la fecha "10/06/2026" y la hora "1:00 p.m."
    And presiona el botón "Reservar"
    Then el sistema asigna el turno R-001 para el día 10/06/2026 a la 1:00 p.m.
    And el sistema muestra el mensaje "Turno reservado para el 10/06/2026 a la 1:00 p.m."

  Scenario: Usuario no premium intenta reservar turno anticipado
    Given el estudiante es usuario gratuito (no premium) y está autenticado en la aplicación
    When el estudiante accede a la sección "Reservar turno"
    Then el sistema muestra el mensaje "Las reservas anticipadas son solo para usuarios Premium"
    And el sistema muestra un botón "Suscríbete al plan premium por S/9.90 al mes"