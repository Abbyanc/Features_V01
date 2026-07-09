Feature: Eliminar un establecimiento de la cuenta general administrativa
  Como administrador del sistema general de SmartQueue
  Quiero eliminar un establecimiento de mi cuenta (ej. si un comedor cierra o ya no usa el servicio)
  Para mantener mi lista organizada y no pagar el mantenimiento por establecimientos inactivos

  Scenario: Eliminación exitosa de un comedor que cerró
    Given el administrador está en la lista de establecimientos
    And el Comedor UNMSM cerró definitivamente
    When el administrador hace clic en el icono de eliminar junto al "Comedor UNMSM"
    And confirma la acción presionando "Sí, eliminar establecimiento"
    Then el sistema elimina el Comedor UNMSM de la base de datos
    And el sistema muestra el mensaje "Comedor UNMSM eliminado correctamente"
    And el código QR del comedor eliminado ya no funciona

  Scenario: Intento de eliminar un establecimiento que tiene turnos activos
    Given el administrador intenta eliminar el Comedor UPC
    When el Comedor UPC tenga 15 estudiantes en cola virtual activa
    Then el sistema muestra el mensaje "No puedes eliminar un establecimiento con turnos activos"
    And el sistema no elimina el establecimiento