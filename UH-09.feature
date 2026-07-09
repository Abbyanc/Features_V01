Feature: Activar modo de control por congestión
  Como estudiante universitario de la UPC que usa la aplicación SmartQueue en su celular
  Quiero que el sistema pueda detectar cuando la fila está muy llena
  Y active un modo de control
  Para que la atención sea más ordenada y no se genere desorden o largas esperas

  Scenario Outline: Activación del modo de control por congestión
    Given el sistema está monitoreando la fila en tiempo real
    When la cantidad de usuarios en la fila supera el límite de "<Limite>" estudiantes
    Then la aplicación activa el modo de control del flujo
    And muestra el mensaje "La fila está muy cargada. Modo de control activado"

    Examples:
      | Limite |
      | 40     |
      | 50     |
      | 60     |

  Scenario Outline: Retorno a la normalidad de la fila
    Given el modo de control está activado
    And la cantidad de usuarios en la fila baja a un nivel normal
    When el sistema detecta esta reducción
    Then la aplicación desactiva el modo de control
    And la fila vuelve a funcionar normalmente
    And se muestra un mensaje indicando que el flujo volvió a la normalidad

    Examples:
      | Mensaje |
      | El flujo volvió a la normalidad |