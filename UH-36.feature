Feature: Cancelar suscripción premium
  Como estudiante universitario de la UPC
  Quiero cancelar mi suscripción premium en cualquier momento
  Para no seguir pagando S/9.90 mensuales si ya no voy a usar los beneficios

  Scenario: Cancelación exitosa al final del ciclo de facturación
    Given el estudiante es usuario Premium y está en la sección "Mi Suscripción"
    When el estudiante presiona el botón "Cancelar suscripción"
    And confirma la acción presionando "Sí, cancelar"
    Then el sistema muestra el mensaje "Tu suscripción se cancelará al final del periodo actual (30/06/2026)"
    And el estudiante mantiene los beneficios premium hasta el 30/06/2026

  Scenario: Estudiante con suscripción cancelada no puede reservar turnos anticipados
    Given el estudiante canceló su suscripción premium el 15/06/2026
    When el periodo premium termina el 30/06/2026
    And el estudiante intenta reservar un turno con anticipación el 01/07/2026
    Then el sistema muestra el mensaje "Esta función es solo para usuarios Premium. Suscríbete para usarla"