# Arquitectura empresarial y fragmentación — material del curso PAHO/UNICEF

Fuente: Curso combinado de salud digital PAHO/UNICEF 2024, https://digitalhealth.course.tc/t/pahounicef-combinada-sp-2024/
Uso en la charla: bloque 5 "El camino" (láminas 10, 11 y 12).

## Las cuatro arquitecturas (TOGAF aplicado a salud digital)

**Arquitectura de negocio.** Describe los procesos de negocio del sistema de salud para usar y respaldar la plataforma de salud digital: los flujos de trabajo de todas las personas involucradas. Define estrategia de negocio, gobierno, organización y procedimientos de negocio clave. En una frase: los procesos en los que participan los seres humanos.

**Arquitectura de datos.** Describe cómo la plataforma recolecta o utiliza distintos tipos de datos en distintos puntos de una trayectoria de salud, y los estándares. Son los datos almacenados en los componentes (registros) de la plataforma, por ejemplo en un HIE. Describe activos de datos físicos y lógicos y recursos de administración de datos. En una frase: la información utilizada e intercambiada para participar en esos procesos.

**Arquitectura de aplicaciones.** Compuesta por el HIE, incluida la plataforma de salud digital y todos los componentes y aplicaciones que admite. Es el plano de las aplicaciones individuales (capa de punto de servicio), las interacciones entre software (capa de interoperabilidad) y cómo el software se relaciona con los procesos de negocio. En una frase: las aplicaciones que reciben y entregan los datos intercambiados.

**Arquitectura tecnológica.** Los componentes lógicos de software y hardware que respaldan los servicios de negocio, datos y aplicaciones: infraestructura TI, middleware, redes, comunicaciones, procesamiento y estándares. En una frase: el hardware que soporta esos procesos.

## Plataforma de salud digital / HIE

Capa de componentes: servicios de dominio de negocio (información de logística, historia clínica compartida, información de administración de salud, finanzas y seguros) y servicios de registro (terminología, usuarios, instalaciones, trabajadores de la salud, catálogo de productos). Capa de servicios de interoperabilidad: autenticación, servicio de interconexión, asignación de entidades. Punto de servicio: sistema móvil, registro médico electrónico, sistemas de administración, laboratorio, farmacia, logística, financiero y de seguros.

## Qué es la fragmentación

La fragmentación de la salud digital es el resultado de la falta de conexión y sincronización entre las intervenciones de salud digital; también se usa como término general para los problemas que aparecen cuando no se usa un enfoque de planificación. Ocurre cuando los programas se implementan como verticales: aplicaciones aisladas que no pueden intercambiar datos de manera útil. Históricamente se aislaron por área de enfermedad, cohorte o caso de uso estrecho, y suelen haber sido financiados por distintos donantes y programas gubernamentales.

## Imágenes

- togaf_4_capas_arquitectura.png — las cuatro capas apiladas con sus relaciones (lámina 12).
- togaf_4_capas_con_explicacion.png — misma figura con la explicación de cada capa (lámina 12).
- procesos_de_negocio_convergen_en_datos.png — muchos procesos de negocio convergen en una sola arquitectura de datos.
- fragmentacion_pilas_separadas_por_muros.png — tres pilas completas separadas por muros: cada programa con sus cuatro capas, sin conversar (lámina 11, el parche).
- plataforma_salud_digital_hie.png — plataforma de salud digital / HIE (lámina 11, la arquitectura).
- fragmentacion_aplicaciones_verticales_muros.png — aplicaciones verticales separadas por muros (lámina 10).
