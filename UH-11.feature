Feature: Recibir notificación de turno próximo por WhatsApp
  Como estudiante universitario de la UPC que utiliza SmartQueue
  Quiero recibir un mensaje por WhatsApp cuando mi turno esté por llegar
  Para poder acercarme con tiempo y no perder mi atención

  Scenario: Envío del mensaje por WhatsApp
    Dado que el estudiante registró su número de WhatsApp en la aplicación
    Y tiene un turno activo en la fila virtual
    Cuando el sistema detecta que faltan 2 minutos para su turno
    Entonces envía un mensaje por WhatsApp al estudiante
    Y el mensaje le informa que su turno está próximo
    Y el estudiante recibe la notificación en su celular

  Scenario: No se puede enviar el mensaje
    Dado que el estudiante tiene un turno activo en la fila virtual
    Y no tiene un número de WhatsApp registrado o el número es incorrecto
    Cuando el sistema intenta enviar la notificación
    Entonces el mensaje no se envía
    Y el sistema informa que no fue posible enviar la notificación por WhatsApp
    Y recomienda registrar un número válido para recibir los próximos avisos