Feature: Eliminar cuenta de forma permanente
  Como estudiante de la UPC que usa SmartQueue
  Quiero poder eliminar mi cuenta de forma permanente
  Para dejar de usar la aplicación y que mis datos ya no estén en el sistema

  Scenario: Eliminación confirmada
    Dado que el estudiante ha iniciado sesión en la aplicación
    Y está en la configuración de su cuenta
    Cuando selecciona "Eliminar cuenta" y confirma la acción
    Entonces el sistema elimina la cuenta de forma permanente
    Y cierra la sesión automáticamente

  Scenario: Cancelación del proceso
    Dado que el estudiante inició el proceso de eliminación de cuenta
    Cuando decide cancelar antes de confirmar
    Entonces la cuenta no se elimina
    Y el sistema lo regresa a la configuración