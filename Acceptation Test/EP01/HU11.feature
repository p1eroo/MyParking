Feature: HU11 - Creación de perfil de la empresa de estacionamientos

Como administrador de la empresa de estacionamiento 
quiero tener un perfil que muestre nuestra calificación por parte de nuestros clientes 
para ser una empresa más confiable y persuasiva

Scenario: E1: El administrador crea el perfil de la empresa con datos válidos y de manera correcta

    Given que el administrador se encuentra en el formulario “datos generales de la empresa” 
    When ingrese su DNI, el número de RUC de la empresa, la dirección de esta, un teléfono de contacto y el número de estacionamientos del local 
    Then el sistema guarda los nuevos datos de la empresa en “Información General de la Empresa” y aparece un recuadro indicando que los datos se actualizaron correctamente


Scenario: E2: El administrador crea el perfil con datos no válidos y/o de manera incorrecta

    Given que el administrador se encuentra en el formulario “datos generales de la empresa” 
    When no ingrese la totalidad de los datos obligatorios o los datos como el RUC o su DNI son erróneos
    Then el sistema mostrará una advertencia señalando que los datos ingresados son insuficientes o erróneos 
    And que vuelva a rellenar el formulario para la creación de la cuenta.
