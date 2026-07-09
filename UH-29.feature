Feature: Generar alerta cuando el tiempo de espera supere un umbral
  Como administrador del comedor universitario de la UPC
  Quiero que el sistema genere una alerta automática cuando el tiempo de espera supere los 20 minutos
  Para tomar acciones inmediatas como abrir una ventanilla adicional

  Scenario: Alerta generada cuando el tiempo de espera supera los 20 minutos
    Given el administrador está en el panel administrativo a la 1:15 p.m.
    When el tiempo promedio de espera actual supera los 20 minutos (ej. 22 minutos)
    Then el sistema muestra una notificación en rojo "Alerta: Tiempo de espera supera los 20 minutos"
    And el sistema sugiere "Abre una ventanilla adicional para reducir la espera"

  Scenario: Alerta se desactiva cuando el tiempo de espera vuelve a la normalidad
    Given el sistema generó una alerta por tiempo de espera de 22 minutos a la 1:15 p.m.
    When el administrador abre una ventanilla adicional
    And el tiempo de espera baja a 12 minutos a la 1:30 p.m.
    Then el sistema elimina automáticamente la alerta roja
    And el sistema muestra el mensaje "Tiempo de espera normalizado: 12 minutos"