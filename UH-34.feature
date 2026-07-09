Feature: Configurar el número máximo de estudiantes en la fila virtual
  Como administrador del comedor universitario de la UPC
  Quiero configurar un número máximo de estudiantes que pueden estar en la fila virtual (ej. 100 estudiantes)
  Para evitar que la fila sea demasiado larga y los estudiantes no puedan ser atendidos antes del cierre

  Scenario: Configuración del límite máximo de 100 estudiantes
    Given el administrador está en la sección "Configuración" del panel
    When el administrador ingresa "100" en el campo "Máximo de estudiantes en cola"
    And presiona el botón "Guardar"
    Then el sistema guarda la configuración de límite máximo
    And el sistema muestra el mensaje "Límite máximo actualizado: 100 estudiantes"

  Scenario: El sistema rechaza nuevos turnos cuando se alcanza el límite máximo
    Given el administrador configuró el límite máximo de 100 estudiantes
    And actualmente hay 100 estudiantes en la fila virtual
    When un nuevo estudiante intenta escanear el código QR para unirse a la fila
    Then el sistema muestra el mensaje "La fila virtual está llena (100/100). Intenta nuevamente más tarde"
    And el sistema no asigna ningún turno al estudiante