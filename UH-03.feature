Feature: Cancelar un turno activo en la fila virtual
  Como estudiante universitario de la UPC en el horario de 12:30 p.m. a 2:30 p.m.
  Quiero cancelar mi turno activo en la fila virtual del comedor universitario
  Para liberar mi espacio cuando ya no necesite el servicio
  Y evitar ocupar un turno innecesariamente

  Scenario: Cancelación exitosa del turno
    Dado que el estudiante universitario de la UPC tiene un turno activo T-025
    Y el turno está en estado "Activo" en la fila virtual
    Cuando el estudiante selecciona la opción "Cancelar turno"
    Y confirma la acción presionando "Confirmar"
    Entonces el sistema elimina el turno de la fila virtual
    Y cambia el estado del turno a "Cancelado"
    Y muestra el mensaje "Su turno ha sido cancelado correctamente"

  Scenario: Confirmación antes de cancelar el turno
    Dado que el estudiante universitario de la UPC tiene un turno activo en la fila virtual
    Cuando el estudiante selecciona la opción "Cancelar turno"
    Entonces la aplicación muestra el mensaje "¿Está seguro de cancelar su turno?"
    Y muestra las opciones "Confirmar" y "Volver"
    Y no cancela el turno hasta que el usuario confirme

  Scenario: Intento de cancelación sin turno activo
    Dado que el estudiante universitario de la UPC no se encuentra registrado en una fila virtual
    Cuando el estudiante accede a la opción "Cancelar turno"
    Entonces la aplicación muestra el mensaje "No cuenta con un turno activo para cancelar"
    Y no realiza ninguna modificación en el sistema