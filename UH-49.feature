Feature: Responder a comentarios de clientes
  Como administrador de un establecimiento que utiliza SmartQueue
  Quiero responder los comentarios que dejan los clientes
  Para brindar seguimiento a sus opiniones y mejorar la comunicación con ellos

  Scenario: Administrador responde un comentario
    Given el administrador ingresó al panel administrativo
    And existe un comentario pendiente de respuesta realizado por un cliente después de su atención
    When selecciona el comentario
    And escribe una respuesta
    And presiona el botón "Enviar respuesta"
    Then el sistema guarda la respuesta del administrador
    And la respuesta queda asociada al comentario del cliente
    And el sistema muestra un mensaje indicando que la respuesta fue publicada correctamente

  Scenario: Administrador intenta enviar una respuesta vacía
    Given el administrador abrió un comentario para responderlo desde el panel administrativo
    When presiona el botón "Enviar respuesta" sin escribir ningún mensaje
    Then el sistema no registra la respuesta
    And muestra un mensaje indicando que debe ingresar un texto antes de enviarla
    And mantiene abierto el formulario para que pueda completar la respuesta