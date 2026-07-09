Feature: Notificar cuando el sistema detecta retrasos en la atención
  Como estudiante universitario de la UPC que usa la aplicación SmartQueue
  Quiero recibir una notificación cuando el sistema detecte retrasos en la atención
  Para poder estar informado y decidir si continúo en la fila o ajusto mi tiempo

  Scenario: Notificación por retraso detectado
    Dado que el estudiante se encuentra en la fila virtual de SmartQueue
    Y el sistema está monitoreando el tiempo de atención en tiempo real
    Cuando el sistema detecta que el tiempo de atención supera lo estimado
    Entonces la aplicación envía una notificación al usuario
    Y muestra un mensaje indicando que hay retrasos en la atención

  Scenario: No se envía notificación si no hay retraso
    Dado que el estudiante está en la fila virtual
    Cuando el sistema verifica el estado de la atención y no detecta retrasos
    Entonces la aplicación no envía ninguna notificación de alerta
    Y el usuario continúa viendo el estado normal de la fila