Feature: Visualizar número total de usuarios en la fila en tiempo real
  Como estudiante universitario de la UPC que usa SmartQueue
  Quiero poder ver el número total de usuarios en la fila en tiempo real
  Para tener una idea clara de la demanda del servicio

  Scenario Outline: Visualización del total de usuarios
    Given el estudiante se encuentra dentro de la aplicación SmartQueue
    And la fila virtual está activa
    When el estudiante accede a la pantalla de estado de la fila
    Then la aplicación muestra el número total de usuarios en la fila en tiempo real
    And el usuario puede ver la cantidad actual de personas esperando

    Examples:
      | TotalUsuarios |
      | 35            |
      | 20            |
      | 45            |
      | 10            |

  Scenario Outline: Actualización del número de usuarios
    Given el estudiante está viendo el estado de la fila
    When otros usuarios se unen o abandonan la fila
    Then el sistema actualiza automáticamente el número total de usuarios
    And el cambio se refleja en la pantalla en tiempo real

    Examples:
      | Estado |
      | Actualizado |