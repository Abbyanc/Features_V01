Feature: Actualizar información personal de la cuenta
  Como estudiante universitario de la UPC registrado en la aplicación SmartQueue
  Quiero actualizar mi información personal registrada en mi cuenta
  Para mantener mis datos actualizados y facilitar la gestión de mis turnos en la fila virtual

  Scenario: Actualización exitosa de información personal
    Dado que el estudiante universitario de la UPC ha iniciado sesión en la aplicación SmartQueue
    Y el estudiante accede a la sección "Mi perfil"
    Cuando el estudiante modifica su información personal
    Y el estudiante selecciona la opción "Guardar cambios"
    Entonces la aplicación actualiza la información registrada en la cuenta
    Y muestra el mensaje "Información actualizada correctamente"

  Scenario: Actualización con campos obligatorios incompletos
    Dado que el estudiante universitario de la UPC accede a la sección "Mi perfil"
    Cuando el estudiante elimina información de un campo obligatorio
    Y el estudiante selecciona la opción "Guardar cambios"
    Entonces la aplicación muestra el mensaje "Complete los campos obligatorios"
    Y no actualiza la información de la cuenta