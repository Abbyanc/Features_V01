Feature: Activar o desactivar la fila virtual temporalmente
  Como administrador del comedor universitario de la UPC
  Quiero activar o desactivar la fila virtual temporalmente
  Para pausar la recepción de nuevos turnos en caso de emergencia (ej. problemas en la cocina, mantenimiento)

  Scenario: Desactivar la fila virtual por mantenimiento
    Given el administrador está en el panel administrativo y ocurre un problema en la cocina
    When el administrador presiona el botón "Desactivar fila virtual"
    And confirma la acción presionando "Sí, desactivar"
    Then el sistema deja de aceptar nuevos escaneos de QR
    And el sistema muestra el mensaje "Fila virtual desactivada. Los nuevos estudiantes no podrán unirse"
    And los estudiantes que intenten escanear ven el mensaje "El comedor está temporalmente cerrado por mantenimiento"

  Scenario: Reactivar la fila virtual después del mantenimiento
    Given la fila virtual está desactivada y el mantenimiento terminó
    When el administrador presiona el botón "Activar fila virtual"
    Then el sistema vuelve a aceptar nuevos escaneos de QR
    And el sistema muestra el mensaje "Fila virtual reactivada. Los estudiantes ya pueden unirse"
    And los estudiantes que escanean ahora pueden obtener turnos normalmente