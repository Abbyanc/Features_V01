Feature: Registrar número telefónico para recibir notificaciones
  Como cliente del Banco de la Nación que utiliza la fila virtual durante los días de mayor afluencia
  Quiero registrar mi número telefónico en la aplicación SmartQueue
  Para recibir notificaciones por WhatsApp sobre el estado de mi turno

  Background:
    Dado que el cliente del Banco de la Nación ha iniciado sesión en la aplicación SmartQueue
    Y el cliente accede a la sección "Configuración de notificaciones"

  Scenario: Registro exitoso del número telefónico
    Cuando el cliente ingresa un número telefónico válido
    Y el cliente selecciona la opción "Guardar"
    Entonces la aplicación registra el número telefónico en la cuenta del cliente
    Y muestra el mensaje "Número telefónico registrado correctamente"

  Scenario: Actualización del número telefónico registrado
    Dado que el cliente tiene un número telefónico registrado en la aplicación SmartQueue
    Cuando el cliente modifica el número telefónico registrado
    Y el cliente selecciona la opción "Guardar cambios"
    Entonces la aplicación actualiza el número telefónico de la cuenta
    Y muestra el mensaje "Número telefónico actualizado correctamente"

  Scenario: Registro de número telefónico inválido
    Cuando el cliente ingresa un número telefónico con un formato inválido
    Y el cliente selecciona la opción "Guardar"
    Entonces la aplicación muestra el mensaje "Número telefónico inválido"
    Y no registra la información ingresada