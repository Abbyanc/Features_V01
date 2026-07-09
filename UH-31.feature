Feature: Configurar tiempo máximo de espera antes de cancelar turno
  Como administrador del comedor universitario de la UPC
  Quiero configurar el tiempo máximo que un estudiante puede tardar en acercarse después de ser llamado (ej. 2 minutos)
  Para que el sistema cancele automáticamente los turnos de estudiantes que no se acercan a tiempo

  Scenario: Configuración del tiempo máximo de espera en 2 minutos
    Given el administrador está en la sección "Configuración" del panel
    When el administrador ingresa "2" en el campo "Tiempo máximo para acercarse (minutos)"
    And presiona el botón "Guardar"
    Then el sistema guarda la configuración de 2 minutos
    And el sistema muestra el mensaje "Tiempo máximo actualizado: 2 minutos"

  Scenario: El sistema cancela automáticamente después del tiempo configurado
    Given el administrador configuró el tiempo máximo en 2 minutos
    And el estudiante con turno T-025 fue llamado a la 1:24 p.m.
    When pasen 2 minutos (1:26 p.m.) y el estudiante no se haya acercado
    Then el sistema marca automáticamente el turno T-025 como "perdido"
    And el sistema llama al siguiente turno T-026