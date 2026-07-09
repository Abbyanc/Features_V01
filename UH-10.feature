Feature: Activar notificaciones automáticas de la fila virtual
  Como estudiante universitario de la UPC que usa la aplicación SmartQueue
  Quiero activar las notificaciones automáticas de la fila virtual
  Para recibir avisos sobre mi turno sin tener que entrar a la aplicación a cada momento

  Scenario: Activar las notificaciones correctamente
    Dado que el estudiante ha iniciado sesión en la aplicación SmartQueue
    Y se encuentra en la sección de configuración
    Cuando activa la opción de notificaciones automáticas
    Entonces el sistema guarda el cambio realizado
    Y las notificaciones quedan activadas para los siguientes turnos
    Y se muestra un mensaje indicando que las notificaciones fueron activadas correctamente

  Scenario: Recibir una notificación de la fila
    Dado que las notificaciones automáticas están activadas
    Y el estudiante tiene un turno en la fila virtual
    Cuando ocurre un cambio en el estado de su turno
    Entonces el sistema envía una notificación al celular del estudiante
    Y la notificación informa el cambio ocurrido en la fila
    Y el estudiante puede revisar el aviso desde su dispositivo