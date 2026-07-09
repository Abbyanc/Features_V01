Feature: Visualizar predicción de tiempo de espera antes de unirse a la fila virtual
  Como estudiante universitario de la UPC que desea almorzar en el comedor durante el horario de 12:30 p.m. a 2:30 p.m.
  Quiero visualizar la predicción del tiempo de espera antes de unirme a la fila virtual
  Para decidir si me conviene ingresar a la cola o regresar más tarde sin afectar mi horario de clases

  Background:
    Dado que el estudiante universitario de la UPC se encuentra en la entrada del comedor universitario
    Y el estudiante abre la aplicación SmartQueue en su celular

  Scenario: Visualización exitosa de la predicción antes de unirse a la fila
    Dado que el sistema tiene datos históricos de atención del comedor
    Y la hora actual es 1:00 p.m. (hora punta)
    Cuando el estudiante consulta la información de la fila virtual antes de escanear el código QR
    Entonces la aplicación muestra el tiempo estimado de espera (ej. 15 minutos)
    Y muestra la cantidad aproximada de estudiantes en espera (ej. 35)
    Y muestra el mensaje "Tiempo estimado de espera: 15 minutos"
    Y el cálculo está basado en datos históricos y flujo actual

  Scenario: Actualización de la predicción por incremento de estudiantes
    Dado que el estudiante está visualizando la predicción de espera del comedor
    Y la predicción actual muestra 15 minutos de espera
    Y actualmente hay 35 estudiantes en cola
    Cuando 5 nuevos estudiantes se unen a la fila virtual
    Y el sistema registra los nuevos ingresos
    Entonces la aplicación actualiza automáticamente el tiempo estimado de espera
    Y muestra la nueva cantidad de estudiantes en cola (40)
    Y muestra el nuevo tiempo estimado (18 minutos)
    Y la actualización ocurre en menos de 10 segundos