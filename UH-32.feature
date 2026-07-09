Feature: Personalizar mensajes de notificación
  Como administrador del comedor universitario de la UPC
  Quiero personalizar el texto de los mensajes de notificación que reciben los estudiantes
  Para incluir instrucciones específicas como "Acércate al módulo 2" o "Trae tu carnet universitario"

  Scenario: Personalización del mensaje de WhatsApp
    Given el administrador está en la sección "Configuración" y selecciona "Mensajes"
    When el administrador edita el mensaje de WhatsApp a "SmartQueue: Tu turno {turno} en Comedor UPC está próximo. Acércate al módulo 2 con tu carnet."
    And presiona el botón "Guardar"
    Then el sistema guarda el nuevo mensaje personalizado
    And cuando falten 2 minutos para un turno, el sistema envía el mensaje personalizado

  Scenario: Personalización del mensaje de notificación push
    Given el administrador está en la sección "Configuración" de mensajes
    When el administrador edita el mensaje push a "Tu turno {turno} está próximo. Pasa al módulo 2."
    And presiona el botón "Guardar"
    Then el sistema guarda el nuevo mensaje personalizado
    And cuando falten 2 minutos para un turno, el sistema envía el mensaje push personalizado