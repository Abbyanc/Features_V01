Feature: Cambiar idioma de la aplicación
  Como estudiante de la UPC que usa SmartQueue
  Quiero poder cambiar el idioma de la aplicación
  Para entender mejor la información según mi preferencia

  Scenario: Cambio de idioma exitoso
    Dado que el estudiante está en la configuración de la app
    Cuando selecciona un idioma disponible
    Entonces la aplicación actualiza toda la interfaz al nuevo idioma
    Y el cambio se aplica de inmediato

  Scenario: Idioma no disponible
    Dado que el estudiante está intentando cambiar el idioma
    Cuando selecciona un idioma que no está soportado
    Entonces el sistema no aplica el cambio
    Y muestra un mensaje indicando que el idioma no está disponible