Feature: Estimar hora exacta en la que el usuario será atendido
  Como estudiante universitario de la UPC que usa SmartQueue
  Quiero poder ver la hora exacta en la que voy a ser atendido
  Para poder organizar mejor mi tiempo

  Scenario: Cálculo de hora de atención
    Dado que el estudiante se encuentra en la fila virtual
    Y el sistema conoce el avance de la atención en tiempo real
    Cuando el estudiante consulta su posición en la fila
    Entonces la aplicación muestra una hora estimada exacta de atención
    Y el usuario puede ver cuándo será atendido

  Scenario: Actualización de la hora estimada
    Dado que el estudiante ya tiene una hora estimada de atención mostrada
    Cuando la fila avanza o cambian las condiciones del sistema
    Entonces la hora estimada se actualiza automáticamente
    Y el estudiante ve el nuevo horario actualizado