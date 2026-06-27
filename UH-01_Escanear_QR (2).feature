Feature: Escanear código QR para unirse a la fila
  Como estudiante universitario de la UPC en el horario de 12:30 p.m. a 2:30 p.m.
  Quiero escanear un código QR en la entrada del comedor universitario
  Para unirme a una fila virtual sin perder tiempo de mi recreo entre clases
  
  Background:
    Dado que el estudiante abre la aplicación SmartQueue en su celular

  Scenario: Escaneo exitoso en el comedor universitario
    Dado que el estudiante se encuentra en el comedor de la UPC entre las 12:30 p.m. y las 2:30 p.m.
    Y el sistema tiene registrado el comedor UPC como establecimiento activo
    Cuando el estudiante presiona el botón "Escanear QR"
    Y enfoca la cámara hacia el código QR ubicado en la entrada del comedor
    Y el sistema reconoce el QR como válido para ese comedor
    Entonces la aplicación asigna un número de turno automáticamente (ej. T-025)
    Y muestra el mensaje "Turno T-025 asignado. Tiempo estimado: 8 minutos"
    Y el estudiante puede retirarse a estudiar o descansar mientras espera

  Scenario: QR inválido en la agencia bancaria
    Dado que el cliente se encuentra en una agencia del Banco de la Nación en día quincena
    Cuando el cliente escanea un código QR que no pertenece a SmartQueue
    Entonces la aplicación muestra el mensaje "QR inválido. Este establecimiento no usa SmartQueue"
    Y el cliente debe hacer la fila física tradicional

  Scenario: Establecimiento fuera de horario de atención
    Dado que el comedor universitario tiene configurado el horario de 12:30 p.m. a 2:30 p.m.
    Y el reloj del sistema marca las 4:00 p.m. (fuera de horario)
    Cuando el estudiante escanea el QR del comedor
    Entonces la aplicación muestra el mensaje "Comedor cerrado. Horario de atención: 12:30 p.m. - 2:30 p.m."
    Y no asigna ningún turno