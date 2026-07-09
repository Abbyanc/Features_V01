Feature: Calificar experiencia después de ser atendido
  Como cliente del Banco de la Nación en día quincena que acaba de ser atendido en la agencia de San Borja
  Quiero calificar mi experiencia de atención con estrellas del 1 al 5 y dejar un comentario opcional
  Para que el administrador de la agencia bancaria reciba mi retroalimentación y mejore la calidad del servicio

  Scenario: Cliente bancario califica con 5 estrellas y deja comentario positivo
    Given el cliente del Banco de la Nación acaba de ser atendido en la ventanilla número 3 de la agencia de San Borja a las 10:55 a.m.
    And el administrador marcó su turno como "atendido" en el panel administrativo
    When el cliente abre la aplicación SmartQueue en su celular y recibe una notificación push
    And el cliente selecciona 5 estrellas (máxima calificación)
    And el cliente escribe un comentario positivo y presiona "Enviar calificación"
    Then el sistema guarda la calificación de 5 estrellas y el comentario en la base de datos
    And el sistema muestra el mensaje "Gracias por tu calificación. Tu opinión nos ayuda a mejorar el servicio"

  Scenario: Cliente bancario califica con 1 estrella por mala experiencia y deja queja
    Given el cliente del Banco de la Nación acaba de ser atendido después de esperar 45 minutos (cuando el tiempo estimado era de 25 minutos)
    And el cliente está molesto por la demora excesiva
    When el cliente abre la aplicación SmartQueue y recibe la notificación para calificar su experiencia
    And el cliente selecciona 1 estrella (calificación mínima)
    And el cliente escribe un comentario negativo y presiona "Enviar calificación"
    Then el sistema guarda la calificación de 1 estrella y el comentario en la base de datos