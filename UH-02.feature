Feature: Consultar la posición actual en la fila virtual
  Como estudiante universitario de la UPC en el horario de 12:30 p.m. a 2:30 p.m.
  Quiero averiguar mi posición actual de la fila virtual del comedor universitario
  Para conocer cuántos estudiantes faltan antes de mi atención
  Y determinar si tendré el tiempo suficiente para llegar puntualmente a mi siguiente clase

  Scenario: Consulta exitosa de posición en la fila virtual
    Dado que el estudiante universitario de la UPC se encuentra registrado en la fila virtual del comedor
    Y el estudiante tiene el turno T-025 asignado
    Y actualmente hay 15 estudiantes en la fila antes que él
    Cuando el estudiante ingresa a la opción "Mi turno" en la aplicación
    Entonces la aplicación muestra la posición actual del estudiante (posición 16)
    Y muestra la cantidad de estudiantes que faltan antes de su atención (15)
    Y muestra el tiempo estimado de espera (8 minutos)

  Scenario: Actualización de posición por avance de la fila
    Dado que el estudiante está visualizando su posición en la fila virtual
    Y el estudiante tiene la posición 16 (15 personas delante)
    Cuando 3 estudiantes son atendidos en el comedor
    Y el sistema actualiza el estado de la fila
    Entonces la aplicación actualiza automáticamente la posición del estudiante a 13
    Y muestra que ahora faltan 12 estudiantes antes de su atención
    Y la actualización ocurre en menos de 5 segundos

  Scenario: Consulta sin turno activo
    Dado que el estudiante universitario de la UPC ingresó a la aplicación SmartQueue
    Y el estudiante no está registrado en ninguna fila virtual
    Cuando el estudiante accede a la opción "Mi turno"
    Entonces la aplicación muestra el mensaje "No cuenta con un turno activo"
    Y no muestra información de posición
    Y no muestra tiempo de espera