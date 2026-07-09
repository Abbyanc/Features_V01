Feature: Suscribirse al plan premium del comedor
  Como estudiante de la UPC
  Quiero suscribirme al plan premium de SmartQueue pagando una tarifa mensual de S/9.90
  Para obtener beneficios como reservar mi turno con anticipación y recibir notificaciones prioritarias

  Scenario: Suscripción exitosa con tarjeta de crédito válida
    Given el estudiante está autenticado en la aplicación y accede a la sección "Planes"
    When el estudiante selecciona el "Plan Premium - S/9.90 por mes"
    And el estudiante ingresa los datos de su tarjeta de crédito (número, fecha de vencimiento, CVV)
    And presiona el botón "Suscribirme"
    Then el sistema procesa el pago exitosamente
    And el sistema muestra el mensaje "¡Felicidades! Ahora eres usuario Premium"
    And el sistema activa los beneficios premium en la cuenta del estudiante

  Scenario: Suscripción fallida por tarjeta sin fondos suficientes
    Given el estudiante selecciona el "Plan Premium" e ingresa los datos de su tarjeta
    When el estudiante presiona el botón "Suscribirme"
    And el sistema intenta cobrar S/9.90 pero la tarjeta no tiene fondos suficientes
    Then el sistema muestra el mensaje "Pago rechazado. Verifica que tu tarjeta tenga fondos suficientes"
    And el estudiante no recibe los beneficios premium