Feature: Editar configuración de un establecimiento específico
  Como administrador de la atención en los comedores
  Quiero editar la configuración de un establecimiento específico (ej. cambiar su horario de atención)
  Para actualizar los datos del comedor sin afectar los otros establecimientos

  Scenario: Edición exitosa del horario del comedor UPC
    Given el administrador está en la lista de establecimientos
    When el administrador hace clic en "Comedor UPC" y luego en "Editar configuración"
    And cambia el horario de atención de "12:30 p.m. a 2:30 p.m." a "12:00 p.m. a 3:00 p.m."
    And presiona el botón "Guardar cambios"
    Then el sistema actualiza solo el horario del Comedor UPC
    And el sistema muestra el mensaje "Configuración del Comedor UPC actualizada correctamente"
    And los otros establecimientos (UNMSM, PUCP) mantienen su horario original

  Scenario: Edición fallida por formato de horario inválido
    Given el administrador está editando la configuración del Comedor UPC
    When el administrador ingresa un horario inválido (ej. "25:00 p.m. a 30:00 p.m.")
    And presiona el botón "Guardar cambios"
    Then el sistema muestra el mensaje "Formato de horario inválido. Usa formato HH:MM a.m./p.m."
    And el sistema no guarda los cambios