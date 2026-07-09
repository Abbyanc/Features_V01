Feature: Agregar foto de perfil
  Como estudiante universitario de la UPC
  Quiero agregar una foto de perfil a mi cuenta de SmartQueue
  Para que el administrador del comedor universitario pueda identificar que soy el titular del turno
  Y evitar que otro estudiante use mi turno

  Scenario: Estudiante selecciona una foto válida desde la galería
    Dado que el estudiante está autenticado en la aplicación SmartQueue
    Y se encuentra en la pantalla "Mi Perfil"
    Cuando el estudiante presiona el botón "Agregar foto"
    Y selecciona la opción "Elegir de galería"
    Y selecciona una imagen en formato JPG desde su galería
    Entonces el sistema guarda la imagen como foto de perfil en la base de datos
    Y muestra el mensaje "Foto de perfil actualizada correctamente"

  Scenario: Sistema rechaza una foto con formato no permitido
    Dado que el estudiante está autenticado en la aplicación SmartQueue
    Y se encuentra en la pantalla "Mi Perfil"
    Cuando el estudiante presiona el botón "Agregar foto"
    Y selecciona la opción "Elegir de galería"
    Y selecciona una imagen en formato GIF desde su galería
    Entonces el sistema muestra el mensaje "Formato no permitido. Use JPG o PNG"
    Y no guarda la imagen
    Y la foto de perfil del estudiante permanece sin cambios

  Scenario: Sistema rechaza una foto con tamaño excedido
    Dado que el estudiante está autenticado en la aplicación SmartQueue
    Y se encuentra en la pantalla "Mi Perfil"
    Cuando el estudiante presiona el botón "Agregar foto"
    Y selecciona la opción "Elegir de galería"
    Y selecciona una imagen en formato PNG de 8MB desde su galería
    Entonces el sistema muestra el mensaje "La imagen es muy pesada. El tamaño máximo es 5MB"
    Y no guarda la imagen
    Y la foto de perfil del estudiante permanece sin cambios