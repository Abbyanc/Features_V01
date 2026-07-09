Feature: Mostrar nivel de avance de la fila
  Como estudiante universitario de la UPC que utiliza la aplicación SmartQueue desde su celular
  Quiero poder ver el nivel de avance de la fila en forma de porcentaje
  Para saber qué tan cerca estoy de ser atendido y tomar mejores decisiones sobre mi tiempo

  Scenario Outline: Visualización del progreso de la fila
    Given el estudiante se encuentra en la fila virtual con posición "<Posicion>"
    And el total de estudiantes en la fila es "<Total>"
    When el estudiante accede a la pantalla de estado de la fila
    Then la aplicación muestra el porcentaje de progreso "<Porcentaje>%"
    And el estudiante puede visualizar qué tan avanzada está la atención

    Examples:
      | Posicion | Total | Porcentaje |
      | 5        | 35    | 86         |
      | 15       | 35    | 57         |
      | 25       | 35    | 29         |
      | 2        | 10    | 80         |
      | 8        | 20    | 60         |

  Scenario Outline: Actualización del porcentaje en tiempo real
    Given el estudiante está visualizando el progreso de la fila
    And otros usuarios son atendidos o salen de la fila
    When el sistema actualiza el estado de la fila
    Then el porcentaje de progreso se actualiza automáticamente
    And el estudiante ve el avance reflejado en tiempo real

    Examples:
      | Estado |
      | Actualizado |