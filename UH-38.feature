Feature: Registrar un nuevo establecimiento desde la cuenta de administrador
  Como encargado developer y administrador general de SmartQueue
  Quiero registrar un nuevo establecimiento (ej. un nuevo comedor universitario) desde mi cuenta
  Para que el nuevo local pueda empezar a usar la fila virtual

  Scenario: Registro exitoso de un nuevo comedor universitario
    Given el administrador general inició sesión en el panel administrativo
    When el administrador accede a la sección "Establecimientos" y presiona "Registrar nuevo"
    And completa los campos (nombre: "Comedor PUCP", dirección: "Av. Universitaria 1801, San Miguel", horario: "12:00 p.m. a 3:00 p.m.")
    And presiona el botón "Registrar"
    Then el sistema crea un nuevo establecimiento en la base de datos
    And el sistema genera un código QR único para el comedor PUCP
    And el sistema muestra el mensaje "Establecimiento registrado correctamente. Aquí está tu código QR"

  Scenario: Intento de registrar un establecimiento con nombre ya existente
    Given el administrador está registrando un nuevo establecimiento
    When el administrador ingresa el nombre "Comedor UPC" (nombre que ya existe)
    And presiona el botón "Registrar"
    Then el sistema muestra el mensaje "Ya existe un establecimiento con ese nombre. Usa otro nombre"
    And el sistema no crea el establecimiento