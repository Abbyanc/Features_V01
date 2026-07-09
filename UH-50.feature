Feature: Notificar al cliente cuando su comentario ha sido leído
  Como cliente que utiliza SmartQueue
  Quiero recibir una notificación cuando el administrador lea mi comentario
  Para saber que mi opinión fue tomada en cuenta

  Scenario: Cliente recibe la notificación de lectura
    Given el cliente dejó un comentario después de finalizar su atención
    And el administrador del establecimiento ingresó al panel para revisarlo
    When el administrador abre el comentario del cliente
    And el sistema lo marca como leído
    Then el sistema envía una notificación al celular del cliente
    And la notificación indica que su comentario ya fue revisado por el establecimiento
    And el cliente puede abrir la aplicación para consultar el estado de su comentario

  Scenario: Comentario aún no ha sido leído
    Given el cliente dejó un comentario después de su atención
    And el administrador todavía no ha ingresado a revisarlo
    When el cliente consulta el estado de su comentario desde la aplicación SmartQueue
    Then el sistema muestra que el comentario continúa pendiente de lectura
    And no envía ninguna notificación al cliente
    And el estado cambiará automáticamente cuando el administrador lo revise