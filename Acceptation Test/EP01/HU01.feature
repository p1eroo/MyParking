Feature: HU01 - Registrarse en la página

Como conductor 
quiero registrarme en la aplicación 
para poder empezar a usar los servicios de reservar estacionamientos vehiculares

Scenario: E1: El conductor ingresa todos los requisitos para crear una cuenta en la aplicación.

    Given que el usuario ingresa correctamente todos los datos siendo estos, nombre, apellido, correo, numero celular y contraseña para poder crear una cuenta en nuestra aplicación
    When le dé clic al botón “Crear Cuenta” que se ubica al final del formulario
    Then se le redirigirá al menú de logarse, donde se le mostrará un textbox que puede cerrar cuando lo termine de leer lo que está indicado, el cual es una confirmación de que su cuenta se creó exitosamente y no ocurrió ningún error. Su cuenta será añadida posteriormente a nuestra base de datos y un correo de confirmación también le será enviado como medida de seguridad.


Scenario: E2: El conductor no ingresa todos los campos requeridos en el formulario

    Given que el usuario no ingresa correctamente todos los campos en el formulario
    When le dé clic al botón “Crear Cuenta” que se encuentra al final de formulario
    Then le aparece en medio de la pantalla un recuadro que dice que no todos los campos están llenos correctamente, al presionar cualquier lado del teléfono este desaparece y la pantalla regresa al formulario mostrando los campos que tiene que completar obligatoriamente.


Scenario: E3: El conductor ya cuenta con una cuenta

    Given que el usuario ya posee una cuenta registrada con su correo en nuestra base de datos
    When le de click botón “Crear Cuenta” que se encuentra al final del formulario
    Then le aparece en medio de la pantalla un cuadrado indicando que ya tiene una cuenta registrada con ese dominio y le aparece un botón para dirigirse al menú de “Login” y otro que cierra el cuadro permitiendo modificar los datos.


Scenario: E4: El cliente decide registrarse con su cuenta de “Google” o” Facebook”

    Given que el cliente tiene una cuenta en las redes de “Google” o” Facebook”
    When le de click al botón continuar en “Facebook” o continuar con “Google”, que se encuentra en la parte inferior del formulario.
    Then se le redirige al menú de “Log In”, donde le aparece un textbox que podrá cerrar cuando termine de leer lo que está indicado, el cual es una confirmación de que su cuenta se creó exitosamente. Su cuenta se añade a la base de datos y un correo de confirmación también le es enviado.
    