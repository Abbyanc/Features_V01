Feature: Cambiar de un establecimiento a otro en el panel administrativo
  Como administrador general de SmartQueue que gestiona 3 comedores (UPC, UNMSM, PUCP)
  Quiero cambiar de un establecimiento a otro desde el panel administrativo
  Para revisar la cola virtual de cada comedor sin tener que cerrar sesión y volver a iniciar

  Scenario: Cambio exitoso del comedor UPC al comedor PUCP
    Given el administrador está visualizando la cola virtual del Comedor UPC
    When el administrador hace clic en el selector de establecimientos en la esquina superior
    And selecciona "Comedor PUCP" de la lista desplegable
    Then el sistema cambia automáticamente a la vista del Comedor PUCP
    And el sistema muestra la cola virtual del Comedor PUCP (estudiantes en espera: 20)
    And el sistema no requiere que el administrador vuelva a iniciar sesión

  Scenario: Cambio exitoso del comedor UNMSM al comedor UPC
    Given el administrador está visualizando la cola virtual del Comedor UNMSM
    When el administrador hace clic en el selector de establecimientos
    And selecciona "Comedor UPC" de la lista desplegable
    Then el sistema muestra la cola virtual del Comedor UPC (estudiantes en espera: 35)
    And el sistema mantiene las configuraciones de notificaciones del administrador