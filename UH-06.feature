Feature: Visualizar tiempo estimado de espera en la fila (bancario)
  Como cliente del Banco de la Nación que acude en día quincena o fin de mes
  Quiero ver el tiempo estimado de espera antes de unirme a la fila virtual
  Para decidir si espero o regreso más tarde a realizar mi depósito o retiro

  Scenario: Visualización exitosa en día quincena
    Dado que el cliente bancario se encuentra en la entrada del Banco de la Nación un día 15 de mes a las 10:00 a.m.
    Y el sistema tiene datos históricos de la agencia bancaria
    Cuando el cliente consulta la fila virtual desde la aplicación
    Entonces la aplicación muestra "Tiempo estimado de espera: 25 minutos"
    Y muestra "Personas delante de usted: 12"
    Y muestra "Su turno será aproximadamente a las 10:25 a.m."

  Scenario: Tiempo estimado se actualiza en tiempo real
    Dado que el cliente bancario está visualizando su turno en la fila virtual
    Y actualmente tiene 12 personas delante
    Y el tiempo estimado actual es 25 minutos
    Cuando 3 personas son atendidas y no llegan nuevos clientes
    Entonces la aplicación actualiza automáticamente el tiempo estimado a "20 minutos"
    Y actualiza "Personas delante de usted: 9"
    Y la actualización ocurre en menos de 5 segundos

  Scenario: Banco sin datos históricos suficientes
    Dado que el cliente bancario consulta la fila virtual de una agencia nueva recién inaugurada
    Y el sistema no tiene datos históricos de atención
    Cuando el sistema intenta calcular el tiempo estimado de espera
    Entonces la aplicación muestra el mensaje "Tiempo estimado no disponible por ser un local nuevo. Acérquese a ventanilla para más información."
    Y no muestra un tiempo estimado numérico