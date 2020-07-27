use infEst;  
       
	insert into infEst.tipoDocumento  (idDocumento,siglas,nombreTipoDocumento) 
values ('01','CC','Cédula de ciudadanía'),
       ('02','CE','Cédula de Extranjería'),
	   ('03','PAS','Pasaporte'),
       ('04','TI','Tarjeta de identidad');
       	
        
        insert into infEst.especialidades  (idEspecialidad,nombreEspecialidad) 
values (111,'Electrónica.'),
       (112,'Electricidad.'),
	   (113,'Telecomunicaciones.'),
       (114,'Teleinformática.'),
       (115,'Promover.'),
	   (116,'Cultura física.'),
       (117,'Inglés.');
       
           insert into infEst.Programa (idPrograma,nombrePrograma,siglasPrograma,DescripcionPrograma,fk_idEspecialidad) 
values (1245,'Análisis y Desarrollo de Sistemas de Información.','ADSI','desarrolla, adapta, aplica y administra sistemas informáticos en una organización',114),
       (1246,'Sistemas.','TS','Formar personal calificado en las áreas de redes sociales, mantenimiento de equipos de cómputo y redes de computadores',114),
       (1247,'Diseño e Integración de Multimedia.','DIM','Desarrolla competencias necesarias para desarrollarse dentro del campo del diseño e integración de aplicaciones multimedias. En este sentido, se puede decir que el objetivo principal de este estudio es que sus aprendices conozcan las bases de un proyecto multimedia interactivo, comprendan los distintos sistemas técnicos audiovisuales, manejen las funcionalidades de un producto multimedia y mucho más.',114),
       (1248,'Mantenimiento De Equipos De Computo.','MEC','tiene como objetivo principal que sus participantes adquieran la habilidad y capacidad de realizar diferentes tipos de mantenimientos preventivos y predictivos equipos de computo. Esto con la finalidad de que con dichos conocimientos se pueda prolongar el funcionamiento de computadoras.',114),
       (1249,'Programación De Software.','TPS','Desarrolla e implementa aplicativos de software para entornos Windows o entornos Web sobre diferentes plataformas y lenguajes de programación.',114),
       (1250,'Gestión De Redes De Datos.','GRD','Ofrecer a los aprendices formación en tecnologías de Cableado Estructurado, Centros de Datos, Redes de Datos Alámbricas e Inalámbricas y Seguridad en Redes de Datos, tecnologías necesarias para la creación y soporte de infraestructura de TI (Tecnología informática) que esté al servicio de los objetivos de negocio del Sector Productivo, incrementando su nivel de competitividad y productividad requerido en el entorno globalizado actual.',114),
       (1251,'Mantenimiento De Equipos De Computo, Diseño E Instalacion De Cableado Estructurado.','MECYDICE','Formar personal calificado en las áreas de redes sociales, mantenimiento de equipos de cómputo y redes de computadores',114),
       (1252,'Producción De Multimedia .','TPM','Diseña y produce proyectos que involucran diferentes medios (Audio, Video, Animación, Texto e Hipertexto) para la transmisión efectiva de ideas o mensajes.',114),
       (1253,'Desarrollo De Aplicaciones Para Dispositivos Moviles.','DAPDM','Desarrollar e implementar aplicativos para dispositivos móviles, que gestionen el acceso a servicios y procesos.',114),
	   (1254,'Gestión Y Seguridad De Bases De Datos.','GYSDBD','Desarrolla competencias que le permiten Administrar bases de datos para garantizar la integridad, disponibilidad y calidad de los datos. También estará en la capacidad de diagnosticar el nivel de seguridad de la información de acuerdo con las normas internacionales y el objeto de negocio.',114),
	   (1255,'Implementación De Sistemas De Información Geográfica.','ISDIG','Desarrolla competencias que le permiten diseñar sistemas de información para el monitoreo de factores geográficos a nivel regional.',114),
	   (1256,'Técnico En Instalación De Redes De Computadores.','TIRC','Ofrece a los aprendices formación en tecnologías de Cableado Estructurado, Centros de Datos, Implementación de Redes Alámbricas e Inalámbricas, Certificación de Redes y Tecnologías de VozSobre IP, factores muy importantes para una aplicación efectiva de éstastecnologías por parte del Sector Productivo.',114),
       (1257,'Elaboración De Audiovisuales.','TEA','Formar personas capaces de realizar funciones en las distintas etapas de una producción audiovisual, desde la escritura del guion, la logística de los recursos, la grabación y la posproducción.',114);
 
 insert into infEst.Trimestre (idTrimestre,numeTrimestre) 
values  (001,1),
(002,2),
(003,3),
(004,4),
(005,5),
(006,6),
(007,7),
(008,8);

 insert into infEst.Jornada (idJornada,nombrejornada,siglas) 
values  (001,'Diurna','D'),
(002,'Nocturna','N'),
(003,'Fin de semana','FDS');


        insert into infEst.Grupos (idGrupo,numeroGrupo) 
values  (001,'G1'),
     (002,'G2'),
     (003,'G3'),
     (004,'G1-G2-G3'),
     (005,'G1-G2'),
     (006,'G2-G3'),
     (007,'G1-G3'),   
     (008,'Sin Grupo');
		
  insert into infEst.Rol (idRol,nombreRol) 
values  ('001','aprendiz'),
        ('002','instructor'),
        ('003','administrador');

   -- COMPETENCIAS.
     
 	insert into infEst.Competencia (idCompetencia,descripcionCompetencia,fk_idPrograma,fk_idEspecialidades) 
-- ADSI 
values (124501,'Especificar los requisitos necesarios para desarrollar el sistema de información de acuerdo con las necesidades del cliente.',1245,114),
       (124502,'Analizar los requisitos del cliente para construir el sistema de información',1245,114),
       (124503,'Diseñar el sistema de acuerdo con los requerimientos del cliente.',1245,114),
       (124504,'Promover la interacción idónea consigo mismo, con los demás y con la naturaleza en los contextos laboral y social.',1245,115),
       (124505,'CONSTRUIR EL SISTEMA QUE CUMPLA CON LOS REQUISITOS DE LA SOLUCIÓN INFORMÁTICA.',1245,114),
       (124506,'COMPRENDER TEXTOS EN INGLÉS EN FORMA ESCRITA Y AUDITIVA.',1245,117),
	   (124507,'Implantar la solución que cumpla con los requerimientos para su operación..',1245,114),
	   (124508,'Participar en el proceso de negociación de Tecnología informática para permitir la implementación del sistema de información.',1245,114),
	   (124509,'Aplicar buenas prácticas de calidad en el proceso de desarrollo de software, de acuerdo con el referente adoptado en la empresa.',1245,114),
       (124510,'EJERCER DERECHOS FUNDAMENTALES DEL TRABAJO EN EL MARCO DE LA CONSTITUCIÓN POLÍTICA Y LOS CONVENIOS INTERNACIONALES.',1245,115),
     
-- TPS
       
       (124901,'Analizar los requerimientos del cliente para construir el sistema de información',1249,114),
       (124902,'Promover la interacción idónea consigo mismo, con los demás y con la naturaleza en los contextos laboral y social.',1249,115),
       (124903,'CONSTRUIR EL SISTEMA QUE CUMPLA CON LOS REQUISITOS DE LA SOLUCIÓN INFORMÁTICA.',1249,114),
       (124904,'COMPRENDER TEXTOS EN INGLÉS EN FORMA ESCRITA Y AUDITIVA.',1249,117),
       
  -- TPM
  
        (125201,'Analizar la información recolectada para definir la tipología de proyecto multimedia.',1252,114),
	    (125202,'Promover la interacción idónea consigo mismo, con los demás y con la naturaleza en los contextos laboral y social.',1252,115),
       (125203,'Diseñar la solución multimedia de acuerdo con el informe de Análisis de la información recolectada.',1252,114),
		(125204,'Entregar la aplicación multimedia para evaluar la satisfacción del cliente.',1252,114),
		(125205,'Realizar la post-producción para generar la animación final de acuerdo con las especificaciones del proyecto',1252,114),
   
   -- DIM
   
   (124701,'Diseñar la solución multimedia  de acuerdo con el informe de análisis de la información recolectada.',1247,114),
   (124702,'Promover la interacción idónea consigo mismo, con los demás y con la naturaleza en los contextos laboral y social.',1247,115),
   (124703,'Integrar los elementos multimediales de acuerdo con un diseño establecido.',1247,114),
   (124704,'COMPRENDER TEXTOS EN INGLÉS EN FORMA ESCRITA Y AUDITIVA',1247,117),

      -- SISTEMAS
         (124601,'APLICAR HERRAMIENTAS OFIMÁTICAS, REDES SOCIALES Y COLABORATIVAS DE ACUERDO CON EL PROYECTO A DESARROLLAR',1246,114),
       (124602,'REALIZAR MANTENIMIENTO PREVENTIVO Y PREDICTIVO QUE PROLONGUE EL FUNCIONAMIENTO DE LOS EQUIPOS DE COMPUTO.',1246,114),
        (124603,'Promover la interacción idónea consigo mismo, con los demás y con la naturaleza en los contextos laboral y social.',1246,115),
         (124604,'COMPRENDER TEXTOS EN INGLÉS EN FORMA ESCRITA Y AUDITIVA',1246,117),
          (124605,'IMPLEMENTAR LA ESTRUCTURA DE LA RED DE ACUERDO CON UN DISEÑO PREESTABLECIDO A PARTIR DE NORMAS TÉCNICAS INTERNACIONALES.',1246,114),
   
       --  TEA
  (125701,'ELABORAR LIBRETOS Y GUIONES SEGÚN METODOLOGÍAS ESTABLECIDAS Y OBJETIVOS DEL PROGRAMA',1257,114),
  (125702,'CREAR PIEZAS DE COMUNICACIÓN CON BASE EN LA PROPUESTA DE COMUNICACIÓN DEL PRODUCTO O SERVICIO',1257,114),
  (125703,'REALIZAR REGISTRO DE IMÁGENES DE ACUERDO CON LOS ASPECTOS TÉCNICOS DEL LIBRETO',1257,114),
  (125704,'OPERAR SISTEMAS DE SONIDO PROFESIONBAL DE ACUERDO CON RECOMENDACIONES DEL FABRICANTE , TECNOLOGÍAS ANÁLOGAS Y DIGITALES, FENÓMENOS ACÚSTICOS, CUALIDADES ACÚSTICAS DE LAS FUENTES SONORAS Y NECESIDADES DEL PROYECTO.',1257,114),
(125705,'EDITAR CONTENIDOS AUDIOVISUALES SEGÚN OBJETIVOS DE LA DIRECCIÓN Y LAS DIFERENTES AREAS',1257,114),
(125706,'Promover la interacción idónea consigo mismo, con los demás y con la naturaleza en los contextos laboral y social.',1257,115),
   (125707,'Diseñar la solución multimedial de acuerdo con el informe de análisis de la información recolectada.',1257,114),
   (125708,'Integrar los elementos multimediales de acuerdo con un diseño establecido.',1257,114);

  
  
 -- RESULTADOS DE APRENDIZAJE
 -- ADSI
	insert into infEst.resultadoAprendizaje (idResultAprendizaje,descripcioResultAprendizaje,fk_idCompetencia,fk_idProgramas) 
     values (12450101,'Aplicar las técnicas de recolección de datos , diseñando  los instrumentos necesarios para el procesamiento de información, de acuerdo con la situación planteada por la empresa.',124501,1245),
             (12450102,'Elaborar mapas de procesos que permitan identificar las áreas involucradas en un sistema de información, utilizando herramientas informáticas y las Tic’s, para generar informes según las necesidades de la empresa.',124501,1245),
             
             (12450201,'Interpretar el informe de requerimientos, para determinar las necesidades tecnológicas en el manejo de la información, de acuerdo con las normas y protocolos establecidos en la empresa.',124502,1245),
			 (12450202,'Representa el bosquejo de la solución al problema presentado por el cliente, mediante la  elaboración de diagramas de casos de uso,  apoyado en el análisis del informe de requerimientos, al confrontar la situación problemica con el usuario según  normas y protocolos de la organización.',124502,1245),
			 (12450203,'Construir el modelo conceptual del macrosistema frente a los requerimientos del cliente,  mediante el uso e interpretación de la información levantada, representado en diagramas de clase, de interacción, colaboración y contratos de operación, de acuerdo con las diferentes secuencias, fases y procedimientos del sistema.',124502,1245),
             (12450204,'Valorar la incidencia de los datos en los procesos del macrosistema, tomando como referente  el diccionario de datos y las miniespecificaciones, para la consolidación de los datos que intervienen, de acuerdo con parámetros establecidos.',124502,1245),
             (12450205,'Elaborar el informe de los resultados del análisis del sistema de información, de acuerdo con los requerimientos del cliente  según normas y protocolos establecidos.',124502,1245),

			(12450301,'Aplicar políticas y mecanismos de control en el diseño del sistema de información, mediante el análisis de la vulnerabilidad de la información, siguiendo los parámetros establecidos por la organización.',124503,1245),
			(12450302,'Diseñar la estructura de datos, a partir del modelo conceptual determinado en el análisis del sistema, utilizando herramientas tecnológicas de bases de datos, según las normas y estándares establecidos.',124503,1245),
			(12450303,'Diseñar la arquitectura del software, mediante la interpretación de las clases, objetos y mecanismos de colaboración, utilizando herramientas tecnológicas de diseño, de acuerdo con las tendencias de las tecnologías de la información y la comunicación.',124503,1245),
			(12450304,'Construir el prototipo del sistema de información, a partir del análisis de las características funcionales del sistema en relación con facilidad de manejo, funcionalidad y experiencia del usuario, apoyado en software aplicado según protocolos de diseño.',124503,1245),
			(12450305,'Diseñar la arquitectura tecnológica  del sistema de información, mediante el reconocimiento de hardware y software, de acuerdo con la tecnología disponible en el mercado, el informe de análisis levantado y el diagrama de distribución.',124503,1245),


            (12450401,'Asumir actitudes críticas , argumentativas y propositivas en función de la resolución de problemas de carácter productivo y social.',124504,1245),
			(12450402,'Desarrollar procesos comunicativos eficaces y asertivos dentro de criterios de racionalidad que posibiliten la convivencia, el establecimiento de acuerdos, la construcción colectiva del conocimiento y la resolución de problemas de carácter productivo y social.',124504,1245),
			(12450403,'Asumir los deberes y derechos con base en las leyes y la normativa institucional en el marco de su proyecto de vida.',124504,1245),
			(12450404,'Identificar las oportunidades que el Sena ofrece en el marco de la formación profesional de acuerdo con el contexto nacional e internacional.',124504,1245),
			(12450405,'Reconocer el rol de los participantes en el proceso formativo, el papel de los ambientes de aprendizaje y la metodología de formación,  de acuerdo con la dinámica organizacional del SENA.',124504,1245),
            (12450406,'Gestionar la información de acuerdo con los procedimientos establecidos y con las tecnologías de la información y la comunicación disponible.',124504,1245),
			(12450407,'Concertar alternativas y acciones de formación para el desarrollo de las competencias del programa formación, con base en la política institucional',124504,1245),
            (12450408,'Asumir responsablemente los criterios de preservación y conservación del medio ambiente y de desarrollo sostenible, en el ejercicio de su desempeño laboral y social.',124504,1245),
            (12450409,'Generar hábitos saludables en su estilo de vida para garantizar la prevención de riesgos ocupacionales de acuerdo con el diagnóstico de su condición física individual y la naturaleza y complejidad de su desempeño laboral.',124504,1245),
            (12450410,'Interactuar en los contextos Productivos y Sociales en función de los Principios y Valores Universales.',124504,1245),
            (12450411,'Aplicar técnicas de cultura física para el mejoramiento de su expresión corporal, desempeño laboral según la naturaleza y complejidad del área ocupacional.',124504,1245),
            
            
	   (12450501,'Construir la interfaz de usuario, apoyado en la evaluación del prototipo, determinando las entradas y salidas requeridas en el diseño y definiendo los lineamientos para la navegación, de acuerdo con las necesidades del usuario.',124505,1245),
       (12450502,'Realizar la codificación de los módulos del sistema y el programa principal, a partir de la utilización del lenguaje de programación seleccionado, de acuerdo con las especificaciones del diseño.',124505,1245),
       (12450503,'Construir el programa de instalación del aplicativo, utilizando las herramientas de desarrollo disponibles en el mercado, según las características de la arquitectura de la solución.',124505,1245),
       (12450504,'Elaborar el manual técnico de la aplicación, de acuerdo con la complejidad del aplicativo y según normas y procedimientos establecidos por la empresa.',124505,1245),
       (12450505,'Ejecutar y documentar las pruebas del software, aplicando técnicas de ensayo-error, de acuerdo con el plan diseñado y los procedimientos establecidos por la empresa.',124505,1245),
       
       (12450601,'LEER TEXTOS COMPLEJOS Y CON UN VOCABULARIO MÁS ESPECÍFICO, EN INGLÉS GENERAL Y TÉCNICO.',124506,1245),
       (12450602,'RELACIONARSE CON HABLANTES NATIVOS EN UN GRADO SUFICIENTE DE FLUIDEZ Y NATURALIDAD, DE MODO QUE LA COMUNICACIÓN SE REALICE SIN ESFUERZO POR PARTE DE LOS INTERLOCUTORES.',124506,1245),
       (12450603,'REPRODUCIR EN INGLÉS FRASES O ENUNCIADOS SIMPLES QUE PERMITAN EXPRESAR DE FORMA LENTA IDEAS O CONCEPTOS.',124506,1246),
     
        (12450701,'Configurar el software de la aplicación para cliente y servidor, mediante la utilización del hardware disponible,  ejecutándola en la plataforma tecnológica, según normas y protocolos establecidos por la empresa.',124507,1245),
        (12450702,'Definir estrategias para la  validación de manuales de usuario y de operación,  respondiendo a las necesidades y satisfacción del cliente, frente a la solución informática propuesta, según políticas de la organización.',124507,1245),
        (12450703,'Elaborar el informe administrativo, siguiendo los protocolos de la organización, basado en los planes de instalación, respaldo y migración del sistema de información, facilitando la operatividad y mantenimiento de la solución informática.',124507,1245),
        (12450704,'Capacitar a los usuarios del sistema, sobre la estructuración y el manejo del aplicativo,  de acuerdo con el plan establecido, el perfil de los usuarios, según políticas de la organización.',124507,1245),
        (12450705,'Elaborar informes técnicos relacionados con la solución informática implantada, de acuerdo con las propuestas de alternativas aplicadas, teniendo en cuenta las técnicas de comunicación y según normas y protocolos establecidos.',124507,1245),
  
  (12450801,'Definir estrategias para la elaboración de términos de referencia y procesos de evaluación de proveedores, en la adquisición de tecnología, según protocolos establecidos..',124508,1245),
  (12450802,'Participar en los perfeccionamientos de contratos informáticos, estableciendo cláusulas técnicas, que respondan a las necesidades de los actores de la negociación, de acuerdo con la ley de contratación.',124508,1245),
  (12450803,'Interpretar el diagnóstico de necesidades informáticas, para determinar las tecnológicas requeridas en el manejo de la información, de acuerdo con las normas y protocolos establecidos por la empresa.',124508,1245),
  (12450804,'Elaborar el informe sobre el cumplimiento de los términos de referencia previstos en la negociación, de acuerdo con la participación de cada uno de los actores en relación con la satisfacción de los bienes informáticos contratados y recibidos, según normas y protocolos de la organización.',124508,1245),
 
  (12450901,'Identificar las características de los procesos de desarrollo de software, frente al referente de calidad adoptado por la empresa, ajustándolos a los resultados de las mediciones, evaluaciones y recomendaciones realizadas.',124509,1245),
  (12450902,'Identificar los puntos críticos de control en los procesos de desarrollo de software, para establecer las acciones a seguir, garantizando el cumplimiento de los estándares de calidad, siguiendo los lineamientos establecidos por la organización.',124509,1245),
  (12450903,'Aplicar los estándares de calidad involucrados en los procesos de desarrollo de software, siguiendo el plan establecido para mantener la integridad de los productos  de trabajo definidos, según las prácticas de configuración establecidas por la empresa.',124509,1245),
  (12450904,'Elaborar instrumentos e instructivos, requeridos por el aseguramiento de la calidad, para documentar y evaluar los procesos de desarrollo de software, de acuerdo con las normas y procedimientos establecidas por la empresa.',124509,1245),
   (12450905,'Elaborar el informe final del proceso de gestión de calidad en el desarrollo de software, que consolide la información de las evidencias, hallazgos y novedades frente al seguimiento y control de los productos, según normas internacionales y protocolos de la organización.',124509,1245),
   
     (12451001,'VALORAR LA IMPORTANCIA DE LA CIUDADANÍA LABORAL CON BASE EN EL ESTUDIO DE LOS DERECHOS HUMANOS Y FUNDAMENTALES EN EL TRABAJO.',124510,1245),
      (12451002,'RECONOCER EL TRABAJO COMO FACTOR DE MOVILIDAD SOCIAL Y TRANSFORMACIÓN VITAL CON REFERENCIA A LA FENOMENOLOGÍA Y A LOS DERECHOS FUNDAMENTALES EN EL TRABAJO.',124510,1245),     
     (12451003,'PRACTICAR LOS DERECHOS FUNDAMENTALES EN EL TRABAJO DE ACUERDO CON LA CONSTITUCIÓN POLÍTICA Y LOS CONVENIOS INTERNACIONALES.',124510,1245),
     (12451004,'PARTICIPAR EN ACCIONES SOLIDARIAS TENIENDO EN CUENTA EL EJERCICIO DE LOS DERECHOS HUMANOS, DE LOS PUEBLOS Y DE LA NATURALEZA.',124510,1245),
   
 -- TPS RESULTADOS
  (12490101,'Interpretar el diagrama relacional para identificar el modelo de datos.',124901,1249),
       (12490102,'Describir que son los modificadores para aplicarlos a un proyecto de formación.',124901,1249),
       (12490103,'Identificar cada uno de los conceptos y principios que constituye la programación orientada a objetos para interpretar el diseño.',124901,1249),
       (12490104,'Interpretar los diagramas de caso de uso, de objetos, de estados, de secuencia, de paquetes o componentes, de despliegue, de colaboración según el diseño entregado.',124901,1249),
       
       (12490201,'Desarrollar procesos comunicativos eficaces y asertivos dentro de criterios de racionalidad que posibiliten la convivencia, el establecimiento de acuerdos, la construcción colectiva del conocimiento y la resolución de problemas de carácter productico y social.',124902,1249),
       (12490202,'Asumir los deberes y derechos con base en las leyes y la normativa institucional en el marco de su proyecto de vida.',124902,1249),
	   (12490203,'Asumir actitudes críticas, argumentativas y propositivas en función de la resolución de problemas de carácter productivo y social.',124902,1249),
       (12490204,'Reconocer el rol de los participantes en el proceso formativo, el papel de los ambientes de aprendizaje y la metodología de formación, de acuerdo con la dinámica organizacional del SENA.',124902,1249),
	   (12490205,'Concertar alternativas y acciones de formación para el desarrollo de las competencias del programa formación, con base en la política institucional.',124902,1249),
       (12490206,'Gestionar la información de acuerdo con los procedimientos establecidos y con las tecnologías de la información y la comunicación disponibles.',124902,1249),
	   (12490207,'Identificar las oportunidades que el Sena ofrece en el marco de la formación profesional de acuerdo con el contexto nacional e internacional.',124902,1249),
       (12490208,'Aplicar técnicas de cultura física para el mejoramiento de su expresión corporal, desempeño laboral según la naturaleza y complejidad del área ocupacional.',124902,1249),
       (12490209,'Asumir responsablemente los criterios de preservación y conservación del medio ambiente y de desarrollo sostenible, en el ejercicio de su desempeño laboral y social.',124902,1249),
   (12490210,'Desarrollar permanentemente las habilidades psicomotrices y de pensamiento en la ejecución de los procesos de aprendizaje.',124902,1249),
(12490211,'Generar procesos autónomos y de trabajo colaborativo permanentes, fortaleciendo el equilibrio de los componentes racionales y emocionales orientados hacia el Desarrollo Humano Integral.',124902,1249),
(12490212,'Generar hábitos saludables en su estilo de vida para garantizar la prevención de riesgos ocupacionales de acuerdo con el diagnóstico de su condición física individual y la naturaleza y complejidad de su desempeño laboral.',124902,1249),
(12490213,'Interactuar en los contextos Productivos y Sociales en función de los Principios y Valores Universales.',124902,1249),
(12490214,'Redimensionar permanentemente su proyecto de vida de acuerdo con las circunstancias del contexto y con visión prospectiva.',124902,1249),



       (12490301,'RELACIONAR LAS TABLAS CONSTRUIDAS PARA PRESENTAR LA INFORMACIÓN SOLICITADA EN EL DISEÑO.',124903,1249),
       (12490302,'CONSTRUIR EL MAPA DE NAVEGACIÓN DE ACUERDO CON EL DISEÑO ENTREGADO PARA ORIENTAR AL USUARIO EN EL USO DEL APLICATIVO.',124903,1249),
       (12490303,'CONSTRUIR LA MATRIZ CRUD EN EL LENGUAJE DE PROGRAMACIÓN SELECCIONADO PARA VERIFICAR LA FUNCIONALIDAD DEL SISTEMA DE ACUERDO CON EL DISEÑO ENTREGADO.',124903,1249),
       (12490304,'CONSTRUIR LAS TABLAS QUE HACEN PARTE DEL DISEÑO DEL DIAGRAMA RELACIONAL EN EL MOTOR DE BASE DE DATOS EMPLEANDO LAS CUATRO FORMAS DE NORMALIZACIÓN.',124903,1249),
       
       (12490401,'COMPRENDER FRASES Y VOCABULARIO HABITUAL SOBRE TEMAS DE INTERÉS PERSONAL Y TEMAS TÉCNICOS',124904,1249),
       (12490402,'COMPRENDER LA IDEA PRINCIPAL EN AVISOS Y MENSAJES BREVES, CLAROS Y SENCILLOS EN INGLÉS TÉCNICO.',124904,1249),
       (12490403,'ENCONTRAR INFORMACIÓN ESPECÍFICA Y PREDECIBLE EN ESCRITOS SENCILLOS Y COTIDIANOS',124904,1249),
		(12490404,'COMUNICARSE EN TAREAS SENCILLAS Y HABITUALES QUE REQUIEREN UN INTERCAMBIO SIMPLE Y DIRECTO DE INFORMACIÓN.',124904,1249),
           (12490405,'ENCONTRAR VOCABULARIO Y EXPRESIONES DE INGLÉS TÉCNICO EN ANUNCIOS, FOLLETOS, PÁGINAS WEB, ETC.',124904,1249),
           (12490406,'LEER TEXTOS MUY BREVES Y SENCILLOS EN INGLÉS GENERAL Y TÉCNICO.',124904,1249),
    (12490407,'REALIZAR INTERCAMBIOS SOCIALES Y PRÁCTICOS MUY BREVES, CON UN VOCABULARIO SUFICIENTE PARA HACER UNA EXPOSICIÓN O MANTENER UNA CONVERSACIÓN SENCILLA SOBRE TEMAS TÉCNICOS.',124904,1249),

 -- TPM RESULTADOS
 
    (12520101,'Elaborar el cronograma de trabajo con base en los acuerdos de tiempo y presupuesto pactados con el cliente.',125201,1252),
     (12520102,'Determinar la plataforma del proyecto a partir de las necesidades del cliente aplicando las técnicas de recolección y procesamiento de la información.',125201,1252),
         (12520103,'Confrontar la información recolectada con las necesidades presentadas por el público destino.',125201,1252),
	(12520104,'Escribir actas e informes de procesos de acuerdo con el cronograma de actividades y siguiendo las normas y protocolos establecidos.',125201,1252),
		(12520105,'Identificar las tipologías multimedia a realizar según el requerimiento del público destino y del medio.',125201,1252),
		(12520106,'Reconocer el lenguaje cinematográfico para la planeación de la multimedia.',125201,1252),
          
        (12520201,'Reconocer el rol de los participantes en el proceso formativo, el papel de los ambientes de aprendizaje y la metodología de formación, de acuerdo con la dinámica organizacional del SENA.',125202,1252),  
        (12520202,'Concertar alternativas y acciones de formación para el desarrollo de las competencias del programa formación, con base en la política institucional.',125202,1252),
        (12520203,'Gestionar la información de acuerdo con los procedimientos establecidos y con las tecnologías de la información y la comunicación disponibles.',125202,1252),
        (12520204,'Identificar las oportunidades que el Sena ofrece en el marco de la formación profesional de acuerdo con el contexto nacional e internacional.',125202,1252),
        (12520205,'Desarrollar procesos comunicativos eficaces y asertivos dentro de criterios de racionalidad que posibiliten la convivencia, el establecimiento de acuerdos, la construcción colectiva del conocimiento y la resolución de problemas de carácter productico y social.',125202,1252),
        (12520206,'Asumir los deberes y derechos con base en las leyes y la normativa institucional en el marco de su proyecto de vida.',125202,1252),
        (12520207,'Asumir actitudes críticas, argumentativas y propositivas en función de la resolución de problemas de carácter productivo y social.',125202,1252),
        
		(12520301,'Definir la estructura del mapa de navegación según la necesidad del cliente',125203,1252),
		(12520302,'Construir el storyboard aplicando técnicas de creatividad de acuerdo con la estructura del guion técnico y el mapa de navegación.',125203,1252),
		(12520303,'Elaborar el guión multimedia (literario y técnico) aplicando técnicas de composición literaria y lenguaje cinematográfico conforme a la tipología definida y al público destino.',125203,1252),
		(12520304,'Validar el storyboard con el cliente de acuerdo con las especificaciones del guion técnico para su aprobación dejando constancia en un acta.',125203,1252),
        
        (12520401,'Realizar el empaque y los elementos de merchandising con los que se distribuirá el proyecto multimedia',125204,1252),
        
        (12520501,'Ajustar la iluminación y el color de la escena para lograr la apariencia visual deseada',125205,1252),
        (12520502,'Editar imágenes utilizando software de edición audiovisual de acuerdo con lo establecido en guion técnico',125205,1252),
        (12520503,'Montar secuencias de acuerdo con las especificaciones del proyecto multimedia',125205,1252),
        (12520504,'Agregar efectos especiales: visuales y sonoros al proyecto multimedia siguiendo los lineamientos del guion técnico',125205,1252),
        (12520505,'Importar y exportar archivos según el soporte técnico final elegido para la proyección y/o distribución de la producción',125205,1252),
        
       -- DIM RESULTADOS  
	   
        (12470101,'Reconocer la tipología de la multimedia de acuerdo con el análisis de la información recolectada.',124701,1247),
        (12470102,'Identificar los elementos del diseño gráfico para la composición de la multimedia.',124701,1247),
		(12470103,'Interpretar el guion multimedia (literario y técnico) de acuerdo a los conceptos de diseño gráfico.',124701,1247),
		(12470104,'Elaborar los elementos de la multimedia siguiendo las pautas establecidas en el guión multimedia.',124701,1247),
		(12470105,'Crear el prototipo de la multimedia siguiendo el patrón establecido en el guión, el mapa de navegación y el storyboard.',124701,1247),
		(12470106,'Definir la estructura del mapa de navegación según la necesidad del cliente.',124701,1247),
		(12470107,'Diseñar la interfaz gráfica con base en el storyboard',124701,1247),
	    (12470108,'Construir el storyboard aplicando técnicas de creatividad de acuerdo con la estructura del guión técnico y el mapa de navegación.',124701,1247),
		(12470109,'Validar el prototipo con el director del proyecto multimedia de acuerdo con el guión técnico dejando constancia en la lista de chequeo.',124701,1247),
        
        (12470201,'Reconocer el rol de los participantes en el proceso formativo, el papel de los ambientes de aprendizaje y la metodología de formación, de acuerdo con la dinámica organizacional del SENA.',124702,1247),
        (12470202,'Concertar alternativas y acciones de formación para el desarrollo de las competencias del programa formación, con base en la política institucional.',124702,1247),
        (12470203,'Generar procesos autónomos y de trabajo colaborativo permanentes, fortaleciendo el equilibrio de los componentes racionales y emocionales orientados hacia el Desarrollo Humano Integral.',124702,1247),
        (12470204,'Generar hábitos saludables en su estilo de vida para garantizar la prevención de riesgos ocupacionales de acuerdo con el diagnóstico de su condición física individual y la naturaleza y complejidad de su desempeño laboral.',124702,1247),
        (12470205,'Gestionar la información de acuerdo con los procedimientos establecidos y con las tecnologías de la información y la comunicación disponibles.',124702,1247),
        (12470206,'Identificar las oportunidades que el Sena ofrece en el marco de la formación profesional de acuerdo con el contexto nacional e internacional.',124702,1247),
        (12470207,'Desarrollar procesos comunicativos eficaces y asertivos dentro de criterios de racionalidad que posibiliten la convivencia, el establecimiento de acuerdos, la construcción colectiva del conocimiento y la resolución de problemas de carácter productico y social.',124702,1247),
        (12470208,'Desarrollar permanentemente las habilidades psicomotrices y de pensamiento en la ejecución de los procesos de aprendizaje.',124702,1247),
        (12470209,'Asumir los deberes y derechos con base en las leyes y la normativa institucional en el marco de su proyecto de vida.  ',124702,1247),
        (12470210,'Asumir actitudes críticas, argumentativas y propositivas en función de la resolución de problemas de carácter productivo y social.',124702,1247),
        (12470211,'Aplicar técnicas de cultura física para el mejoramiento de su expresión corporal, desempeño laboral según la naturaleza y complejidad del área ocupacional.',124702,1247),
		(12470212,'Interactuar en los contextos Productivos y Sociales en función de los Principios y Valores Universales.  ',124702,1247),
		(12470213,'Redimensionar permanentemente su proyecto de vida de acuerdo con las circunstancias del contexto y con visión prospectiva.',124702,1247),
        
		(12470301,'Seleccionar materiales audiovisuales según las especificaciones del guión técnico y el storyboard.',124703,1247),
		(12470302,'Incorporar los elementos de la multimedia según los criterios del storyboard.',124703,1247),
		(12470303,'Programar elementos interactivos de la multimedia siguiendo las especificaciones del mapa de navegación y el storyboard.',124703,1247),
        
		(12470401,'COMUNICARSE EN TAREAS SENCILLAS Y HABITUALES QUE REQUIEREN UN INTERCAMBIO SIMPLE Y DIRECTO DE INFORMACIÓN.',124704,1247),
		(12470402,'ENCONTRAR VOCABULARIO Y EXPRESIONES DE INGLÉS TÉCNICO EN ANUNCIOS, FOLLETOS, PÁGINAS WEB, ETC.',124704,1247),
		(12470403,'LEER TEXTOS MUY BREVES Y SENCILLOS EN INGLÉS GENERAL Y TÉCNICO.',124704,1247),
		(12470404,'REALIZAR INTERCAMBIOS SOCIALES Y PRÁCTICOS MUY BREVES, CON UN VOCABULARIO SUFICIENTE PARA HACER UNA EXPOSICIÓN O MANTENER UNA CONVERSACIÓN SENCILLA SOBRE TEMAS TÉCNICOS.',124704,1247),
        
		-- RESULTADOS SISTEMAS
        
        	(12460101,'OBTENER LA INFORMACIÓN REQUERIDA POR SU ESPECIALIDAD UTILIZANDO REDES SOCIALES Y HERRAMIENTAS DE TRABAJO COLABORATIVO SEGÚN LAS TENDENCIAS DE LAS TECNOLOGÍAS DE  LA INFORMACIÓN Y LA COMUNICACIÓN.',124601,1246),
			(12460102,'APLICAR HERRAMIENTAS OFIMÁTICAS DE ACUERDO CON LOS REQUERIMIENTOS DEL CLIENTE.',124601,1246),
			(12460103,'APLICAR CONTROLES Y ESTRUCTURAS BÁSICAS DE PROGRAMACIÓN DE UN LENGUAJE ORIENTADO A EVENTOS DE ACUERDO CON EL PROBLEMA A SOLUCIONAR."',124601,1246),
        
        (12460201,'INSTALAR LOS COMPONENTES SOFTWARE DE ACUERDO CON EL ANÁLISIS DE LOS REQUERIMIENTOS DE INFORMACIÓN, LA TECNOLOGÍA DEL EQUIPO, LOS MANUALES DEL FABRICANTE Y LAS NECESIDADES DEL CLIENTE..',124602,1246),
        (12460202,'ENSAMBLAR Y DESENSAMBLAR LOS COMPONENTES HARDWARE DE LOS DIFERENTES TIPOS DE EQUIPOS, DE ACUERDO CON LA COMPLEJIDAD DE LA ARQUITECTURA, LAS HERRAMIENTAS REQUERIDAS, LA NORMATIVIDAD, MANUALES TÉCNICOS, Y LOS PROCEDIMIENTOS.',124602,1246),
        (12460203,'VERIFICAR EL ESTADO DE OPERACIÓN DEL EQUIPO APLICANDO HERRAMIENTAS DE SOFTWARE LEGALES SEGÚN EL MANUAL DE PROCEDIMIENTOS DE LA EMPRESA Y RESPONDIENDO A LAS NECESIDADES DEL CLIENTE.',124602,1246),
        (12460204,'EJECUTAR EL MANTENIMIENTO FÍSICO INTERNO Y EXTERNO DE LOS EQUIPOS DE CÓMPUTO APLICANDO LAS TÉCNICAS, INSUMOS, MANUALES Y PROCEDIMIENTOS ESTABLECIDOS.',124602,1246),
        
        (12460301,'RECONOCER EL ROL DE LOS PARTICIPANTES EN EL PROCESO FORMATIVO, EL PAPEL DE LOS AMBIENTES DE APRENDIZAJE Y LA METODOLOGÍA DE FORMACIÓN, DE ACUERDO CON LA DINÁMICA ORGANIZACIONAL DEL SENA.',124603,1246),
		(12460302,'CONCERTAR ALTERNATIVAS Y ACCIONES DE FORMACIÓN PARA EL DESARROLLO DE LAS COMPETENCIAS DEL PROGRAMA FORMACIÓN, CON BASE EN LA POLÍTICA INSTITUCIONAL.',124603,1246),
		(12460303,'GESTIONAR LA INFORMACIÓN DE ACUERDO CON LOS PROCEDIMIENTOS ESTABLECIDOS Y CON LAS TECNOLOGÍAS DE LA INFORMACIÓN Y LA COMUNICACIÓN DISPONIBLES.',124603,1246),
		(12460304,'IDENTIFICAR LAS OPORTUNIDADES QUE EL SENA OFRECE EN EL MARCO DE LA FORMACIÓN PROFESIONAL DE ACUERDO CON EL CONTEXTO NACIONAL E INTERNACIONAL.',124603,1246),
		(12460305,'DESARROLLAR PROCESOS COMUNICATIVOS EFICACES Y ASERTIVOS DENTRO DE CRITERIOS DE RACIONALIDAD QUE POSIBILITEN LA CONVIVENCIA, EL ESTABLECIMIENTO DE ACUERDOS, LA CONSTRUCCIÓN COLECTIVA DEL CONOCIMIENTO Y LA RESOLUCIÓN DE PROBLEMAS DE CARÁCTER PRODUCTICO Y SOCIAL.',124603,1246),
		(12460306,'Desarrollar permanentemente las habilidades psicomotrices y de pensamiento en la ejecución de los procesos de aprendizaje.',124603,1246),
		(12460307,'ASUMIR LOS DEBERES Y DERECHOS CON BASE EN LAS LEYES Y LA NORMATIVA INSTITUCIONAL EN EL MARCO DE SU PROYECTO DE VIDA.',124603,1246),
	    (12460308,'ASUMIR ACTITUDES CRÍTICAS, ARGUMENTATIVAS Y PROPOSITIVAS EN FUNCIÓN DE LA RESOLUCIÓN DE PROBLEMAS DE CARÁCTER PRODUCTIVO Y SOCIAL.',124603,1246),
		(12460309,'Asumir responsablemente los criterios de preservación y conservación del medio ambiente y de desarrollo sostenible, en el ejercicio de su desempeño laboral y social.',124603,1246),
		(12460310,'Generar procesos autónomos y de trabajo colaborativo permanentes, fortaleciendo el equilibrio de los componentes racionales y emocionales orientados hacia el Desarrollo Humano Integral.',124603,1246),
	 (124603011,'Generar hábitos saludables en su estilo de vida para garantizar la prevención de riesgos ocupacionales de acuerdo con el diagnóstico de su condición física individual y la naturaleza y complejidad de su desempeño laboral.',124603,1246),
	 (12460312,'Redimensionar permanentemente su proyecto de vida de acuerdo con las circunstancias del contexto y con visión prospectiva.',124603,1246),
	 (12460313,'Interactuar en los contextos Productivos y Sociales en función de los Principios y Valores Universales.',124603,1246),
     	 (12460314,'Aplicar técnicas de cultura física para el mejoramiento de su expresión corporal, desempeño laboral según la naturaleza y complejidad del área ocupacional.',124603,1246),
                             
       	 (12460401,'COMUNICARSE EN TAREAS SENCILLAS Y HABITUALES QUE REQUIEREN UN INTERCAMBIO SIMPLE Y DIRECTO DE INFORMACIÓN',124604,1246),                      
      (12460402,'ENCONTRAR VOCABULARIO Y EXPRESIONES DE INGLÉS TÉCNICO EN ANUNCIOS, FOLLETOS, PÁGINAS WEB, ETC',124604,1246),                         
      (12460403,'LEER TEXTOS MUY BREVES Y SENCILLOS EN INGLÉS GENERAL Y TÉCNICO',124604,1246),  
      (12460404,'REALIZAR INTERCAMBIOS SOCIALES Y PRÁCTICOS MUY BREVES, CON UN VOCABULARIO SUFICIENTE PARA HACER UNA EXPOSICIÓN O MANTENER UNA CONVERSACIÓN SENCILLA SOBRE TEMAS TÉCNICOS.',124604,1246),  
                                        
       (12460501,'SELECCIONAR HERRAMIENTAS, EQUIPOS Y MATERIALES NECESARIOS PARA LA EJECUCIÓN DE LA OBRA DE CABLEADO Y/O RED INALÁMBRICA, DE ACUERDO CON LAS ESPECIFICACIONES DEFINIDAS EN EL DISEÑO.',124605,1246),  
        (12460502,'DOCUMENTAR TÉCNICAMENTE EL PROCESO DE INSTALACIÓN DE UN PROYECTO DE CABLEADO ESTRUCTURADO Y/O RED INALÁMBRICA, DE ACUERDO CON LAS NORMAS Y ESTÁNDARES VIGENTES.',124605,1246),  
         (12460503,'INSTALAR EL CABLEADO ESTRUCTURADO Y/O LA RED INALÁMBRICA DE ACUERDO CON LAS NORMAS Y ESTÁNDARES DE CABLEADO Y SEGURIDAD VIGENTES.',124605,1246),  
          (12460504,'CERTIFICAR EL CABLEADO ESTRUCTURADO DE ACUERDO CON NORMAS Y ESTÁNDARES VIGENTES.',124605,1246),  
          
        -- RESULTADOS TEA ELABORACIÓN DE AUDIOVISUALES
        
         (12570101,'ANALIZAR EL CONTEXTO SOCIAL, ECONÓMICO, TECNOLÓGICO Y CULTURAL RELACIONADO CON EL TEMA A DESARROLLAR EN EL LIBRETO DE ACUERDO CON LAS METODOLOGÍAS Y OBJETIVOS DEL PROGRAMA..',125701,1257),  
 (12570102,'ESTRUCTURAR EL GUIÓN SEGÚN LA MACROESTRUCTURA, MICROESTRUCTURA, LAS ETAPAS DE LA UNIDAD DRAMÁTICA Y LOS REQUERIMIENTOS DE LA ORGANIZACIÓN',125701,1257),
  
          (12570201,'IDENTIFICAR LOS REQUERIMIENTOS GRÁFICOS DE ACUERDO CON EL PROYECTO AUDIOVISUAL.',125702,1257),
          (12570202,'REDACTAR TEXTOS ESTABLECIENDO LAS DIFERENCIAS DE CADA MENSAJE SEGÚN EL MEDIO SELECCIONADO Y LAS ORIENTACIONES DEL BREAFING',125702,1257),
          
          (12570301,'IDENTIFICAR LAS PARTES DE LA CÁMARA Y LA COMPOSICIÓN BIDIMENSIONAL DE ACUERDO CON LA NATURALEZA DE LA IMAGEN Y EL MANUAL DEL FABRICANTE',125703,1257),
		  (12570302,'REALIZAR MONTAJES DE EQUIPOS Y ACCESORIOS DE ACUERDO CON LOS ASPECTOS TÉCNICOS RECOMENDADOS POR LOS PROVEEDORES Y LOS REQUERIMIENTOS DE PRODUCCIÓN..',125703,1257),
          
		(12570401,'CONSTRUIR SONIDOS RELACIONADOS CON LA IMAGEN, LA NATURALEZA DEL OBJETO EN SITUACIONES DE RECREACIÓN Y AMBIENTACIÓN DE LA PRODUCCIÓN.DE ACUERDO CON EL ANÁLISIS DE REQUERIMIENTOS SENSORIALES.',125704,1257),
	    (12570402,'PREPARAR LOS PERIFÉRICOS DE AUDIO DE ACUERDO CON LOS ESTÁNDARES DEFINIDOS EN EL PLAN DE ALISTAMIENTO DE SISTEMAS DE PRODUCCIÓN.',125704,1257),

      (12570501,'ORGANIZAR LOS MATERIALES GRÁFICOS Y AUDIOVISUALES DE ACUERDO CON EL CONCEPTO DE CREACIÓN Y LOS REQUERIMIENTOS DE PRODUCCIÓN.',125705,1257),
      (12570502,'REVISAR LAS SEÑALES DE AUDIO Y VIDEO EN LOS CONTENIDOS AUDIOVISUALES SEGÚN ESTANDARES TÉCNICOS.',125705,1257),
      
            (12570601,'Reconocer el rol de los participantes en el proceso formativo, el papel de los ambientes de aprendizaje y la metodología de formación, de acuerdo con la dinámica organizacional del SENA.',125706,1257),
            (12570602,'Concertar alternativas y acciones de formación para el desarrollo de las competencias del programa formación, con base en la política institucional.',125706,1257),
            (12570603,'Gestionar la información de acuerdo con los procedimientos establecidos y con las tecnologías de la información y la comunicación disponibles.',125706,1257), 
            (12570604,'Identificar las oportunidades que el Sena ofrece en el marco de la formación profesional de acuerdo con el contexto nacional e internacional.',125706,1257), 
            (12570605,'Desarrollar procesos comunicativos eficaces y asertivos dentro de criterios de racionalidad que posibiliten la convivencia, el establecimiento de acuerdos, la construcción colectiva del conocimiento y la resolución de problemas de carácter productico y social.',125706,1257),
            (12570606,'Asumir los deberes y derechos con base en las leyes y la normativa institucional en el marco de su proyecto de vida.  ',125706,1257),
			(12570607,'Asumir actitudes críticas, argumentativas y propositivas en función de la resolución de problemas de carácter productivo y social.',125706,1257),
			(12570608,'Desarrollar permanentemente las habilidades psicomotrices y de pensamiento en la ejecución de los procesos de aprendizaje.',125706,1257),
			(12570609,'Generar procesos autónomos y de trabajo colaborativo permanentes, fortaleciendo el equilibrio de los componentes racionales y emocionales orientados hacia el Desarrollo Humano Integral.',125706,1257),
		    (12570610,'Asumir responsablemente los criterios de preservación y conservación del medio ambiente y de desarrollo sostenible, en el ejercicio de su desempeño laboral y social.',125706,1257),
			(12570611,'Generar hábitos saludables en su estilo de vida para garantizar la prevención de riesgos ocupacionales de acuerdo con el diagnóstico de su condición física individual y la naturaleza y complejidad de su desempeño laboral.',125706,1257),
			(12570612,'Interactuar en los contextos Productivos y Sociales en función de los Principios y Valores Universales.  ',125706,1257),
	
            (12570701,'Diseñar la interfaz gráfica con base en el storyboard.',125707,1257),
            (12570702,'Construir el storyboard aplicando técnicas de creatividad de acuerdo con la estructura del guión técnico y el mapa de navegación.',125707,1257),
            (12570703,'Validar el prototipo con el director del proyecto multimedia de acuerdo con el guión técnico dejando constancia en la lista de chequeo.',125707,1257),
                              
           (12570801,'Seleccionar materiales audiovisuales según las especificaciones del guión técnico y el storyboard.',125708,1257),
           (12570802,'Incorporar los elementos de la multimedia según los criterios del storyboard.',125708,1257),
           (12570803,'Programar elementos interactivos de la multimedia siguiendo las especificaciones del mapa de navegación y el storyboard.',125708,1257);                

              INSERT INTO infEst.Ficha  (numeroFicha,fk_idPrograma,fk_idTrimestre,fk_idJornada,fk_idGrupo) 
values  ('2049891',1245,007,003,004),

        ('1749943',1245,004,002,007),
		('2049551',1245,002,001,008),   -- adsi
	
      
		 ('1906669',1246,004,003,006),
		 ('1896339',1246,002,002,008),   -- ts
		 ('1796339',1246,002,002,004),
         
	     ('4566371',1252,003,001,001),          
	
		 ('4566458',1252,001,002,008),    -- 'TPM'
		 ('4566891',1252,001,002,004), 
         
		 ('1963872',1249,002,001,004),          
		 
		 ('1963863',1249,001,002,001),     -- 'TPS'
		 ('1963865',1249,001,003,008), 
         
        ('3049891',1257,001,001,004),
		('3049943',1257,002,002,002),      -- TEA'
		('3049551',1257,001,001,008),                       
         
         ('9663771',1247,001,001,008),
		 ('9663751',1247,002,001,008),    -- DIM
		 ('9663895',1247,001,001,008);
         
 INSERT INTO infEst.Usuarios(numeroDocumento,pNombre,sNombre,pApellido,sApellido,email,contraseña,imagen,fk_idDocumento,fk_idFicha,fk_idRol) 
 
values    (366726966, 'Vinnie', 'Eberhard', 'Mound', 'Alenshev', 'ealenshev0@histats.com',sha1('f4bb44ee3f2a2baf7c17a7f1f4f5d8ba7c6f153b'),LOAD_FILE('https://robohash.org/illoinventoreperferendis.jpg?size=250x250&set=set1'),'01','2049891','001'),
          (666822958, 'Datha', 'Estell', 'Hatfield', 'Jowitt', 'ejowitt1@yahoo.com',sha1( 'c2334f979c1edce00662aadb1c79e34fedfc6546'),LOAD_FILE('https://robohash.org/quaetemporarerum.jpg?size=250x250&set=set1'), '01', '2049891','001'),
          (825274021, 'Godwin', 'Selig', 'Haspineall', 'Pierce', 'spierce2@noaa.gov',sha1('a0343a3e944e8bbc9606102fc70ba03f680840fb'),LOAD_FILE('https://robohash.org/autemsintsunt.jpg?size=250x250&set=set1'), '01', '2049891','001'),
		(471489900, 'Darryl', 'Hilarius', 'Fallon', 'Chesterfield', 'hchesterfield3@google.fr',sha1('65a07b2436a0f3f6d328f89aa99d0367f7816c67'),LOAD_FILE('https://robohash.org/exercitationemearumenim.jpg?size=250x250&set=set1'), '01', '2049891','001'),
      (448143323, 'Babette', 'Maridel', 'Pavyer', 'Laphorn', 'mlaphorn4@nps.gov',sha1('14a42d06764981b03bac1ebea3e26c8eff33288b'),LOAD_FILE('https://robohash.org/autquovoluptatibus.jpg?size=250x250&set=set1'), '04', '2049891','001'),
          (544522282, 'Hermione', 'Gabie', 'Schrinel', 'Rivenzon', 'grivenzon5@jalbum.net',sha1('7e6e3c31b5a0d92ae1edd0d230c173a07612cff2'),LOAD_FILE('https://robohash.org/sequilaudantiumet.jpg?size=250x250&set=set1'), '01', '2049891','001'),
          (353113333, 'Hoebart', 'Jena', 'Stickley', 'Hallifax', 'jhallifax6@google.ca',sha1('e948597e464447353f79f41c0c3d5b91bcd78463'),LOAD_FILE('https://robohash.org/molestiaeetenim.jpg?size=250x250&set=set1'), '01', '2049891','001'),
          (586159603, 'Elora', 'Shanna', 'Bunney', 'McGinn', 'smcginn7@uol.com.br',sha1('8209363837c938ea8e21568cd8bd6243fc389a65'),LOAD_FILE('https://robohash.org/omnisverodignissimos.jpg?size=250x250&set=set1'), '04', '2049891','001'),
          (1113317668, 'Boote', 'Cornell', 'Hoodspeth', 'Mewis', 'cmewis8@dell.com',sha1( '752a50064c1ac7d712d072abd945c340d23b1891'),LOAD_FILE('https://robohash.org/veritatisillumvoluptas.jpg?size=250x250&set=set1'), '01', '2049891','001'),
          (479373517, 'Meir', 'Dulcia', 'Kender', 'Emmot', 'demmot9@sun.com',sha1('e45b5da57df8b8e050b89400aaa2cb702ffc3a8b'),LOAD_FILE('https://robohash.org/voluptassaepevoluptatem.jpg?size=250x250&set=set1'), '01', '2049891','002'),
          
       
          
          (573970307, 'Gwenni', 'Glenna', 'McKeevers', 'Jahnke', 'gjahnkea@marriott.com',sha1( '00ddff17bbebec07b68671d236662a6091bc939d'),LOAD_FILE('https://robohash.org/iureaccusamusvoluptates.jpg?size=250x250&set=set1'), '01', '1749943','001'),
          (518164695, 'Shannon', 'Robbie', 'Courtman', 'Chasteney', 'rchasteneyb@1und1.de',sha1('62a773219e0f3656277af96706d088a2c9b0c970'),LOAD_FILE('https://robohash.org/necessitatibusdictaesse.jpg?size=250x250&set=set1'), '01', '1749943','001'),
		(680456560, 'Godiva', 'Vida', 'Shepperd', 'Klawi', 'vklawic@digg.com',sha1( '976368bbf9a1888492325c8ea63fc8ee2843f329'),LOAD_FILE('https://robohash.org/commodiperferendisipsam.jpg?size=250x250&set=set1'), '01', '1749943', '001'),
          (532995664, 'Zara', 'Delinda', 'Holby', 'Burree', 'dburreed@cafepress.com',sha1( '9a0a8ab430f05b3c5bb37c202308c3777e95a240'),LOAD_FILE('https://robohash.org/etharumcumque.jpg?size=250x250&set=set1'), '04', '1749943', '001'),
          (1050194361, 'Lucas', 'Giffer', 'Clutten', 'Bortolomei', 'gbortolomeie@cbc.ca',sha1('6bc9111ca3cabe46131ac47addc4aba4c4ab69cd'),LOAD_FILE('https://robohash.org/dolorealiquamnulla.jpg?size=250x250&set=set1'), '01', '1749943', '001'),
          (138412913, 'Chanda', 'Geno', 'Brafferton', 'Janota', 'gjanotaf@aol.com',sha1( '83bb613a46905ab87b467bb48616c0ceb356e307'),LOAD_FILE('https://robohash.org/laboriosamquipariatur.jpg?size=250x250&set=set1'), '01', '1749943', '001'),
          (324216846, 'Jessica', 'Currey', 'Boundley', 'Gallafant', 'cgallafantg@yellowbook.com',sha1( 'e4c53b42132e1ff4393764aae4bc461cff26bc71'),LOAD_FILE('https://robohash.org/providentquaeaccusamus.jpg?size=250x250&set=set1'), '04', '1749943', '001'),
          (798602132, 'Killian', 'Burty', 'Whitaker', 'Lansdowne', 'blansdowneh@people.com.cn',sha1('da9e07a6302f0138346e54f9160b6ebf1338298f'),LOAD_FILE('https://robohash.org/voluptasdoloresdoloribus.jpg?size=250x250&set=set1'), '01', '1749943', '001'),
          (670407704, 'Gena', 'Purcell', 'Saile', 'Pritchitt', 'ppritchitti@1688.com',sha1( 'd1b10046a06bd4b488905dc4edff877044982b9e'),LOAD_FILE('https://robohash.org/velitperferendisnisi.jpg?size=250x250&set=set1'), '01', '1749943', '001'),
          (988910798, 'Ker', 'Riane', 'Oxenford', 'Enticknap', 'renticknapj@blogtalkradio.com',sha1( 'db7e2f000e7f8a851975bba692266486752627ec'),LOAD_FILE('https://robohash.org/omnisplaceatut.jpg?size=250x250&set=set1'), '01', '1749943', '002'),
          
    
          
          (614246803, 'Sayer', 'Emmott', 'Bohike', 'Fairman', 'efairmank@apache.org',sha1('4d0d64c6f42fb132a55d311cd4db1e6cf3ad2b2f'),LOAD_FILE('https://robohash.org/iustomagniconsequatur.jpg?size=250x250&set=set1'), '01', '2049551', '001'),
		(399523709, 'Rockwell', 'Bekki', 'Zellick', 'Hooks', 'bhooksl@economist.com',sha1( '329c1aa2e21b3277839eb05d09743337f397df48'),LOAD_FILE('https://robohash.org/noneoslaboriosam.jpg?size=250x250&set=set1'), '01', '2049551', '001'),
          (1101267958, 'Caresse', 'Alysa', 'Dodswell', 'Vanyushin', 'avanyushinm@mapquest.com',sha1( '2e8a355b17d601829ebb38706959b1a966837c13'),LOAD_FILE('https://robohash.org/quiadoloremqueassumenda.jpg?size=250x250&set=set1'), '04', '2049551', '001'),
          (233204345, 'Collen', 'Timothy', 'Dripps', 'Trillow', 'ttrillown@typepad.com',sha1( '6986e62891a0e83c03490501b2a455e649d6cf91'),LOAD_FILE('https://robohash.org/beataerationeplaceat.jpg?size=250x250&set=set1'), '01', '2049551', '001'),
          (153834895, 'Edin', 'Cherye', 'Adne', 'Beldon', 'cbeldono@myspace.com',sha1( '88ee2e21ea6a42c2e414a65d7dd6005d58583923'),LOAD_FILE('https://robohash.org/assumendadictaquos.jpg?size=250x250&set=set1'),'01', '2049551', '001'),
          (226994565, 'Antony', 'Konstantine', 'Nuccii', 'Marcu', 'kmarcup@reddit.com',sha1( '9ded7e44fddd74d4dba4f96ae1aca1722f526df3'),LOAD_FILE('https://robohash.org/velnemodolor.jpg?size=250x250&set=set1'),'04', '2049551', '001'),
          (489219890, 'Luke', 'Alisa', 'Jedrychowski', 'Beal', 'abealq@abc.net.au',sha1('9942063fe702c1ef5af615c84974f3692c914da8'),LOAD_FILE('https://robohash.org/fugiatnonvero.jpg?size=250x250&set=set1'),'01', '2049551', '001'),
     (494866193, 'Bert', 'Guillema', 'Middup', 'Spaven', 'gspavenr@timesonline.co.uk',sha1('e593eadb774a7e0ace04b876903fd5be3ec49462'),LOAD_FILE('https://robohash.org/sedetcorrupti.jpg?size=250x250&set=set1'),'01', '2049551', '001'),
          (1110359689, 'Colene', 'Stanislaus', 'Vannoort', 'Hundell', 'shundells@phoca.cz',sha1('9f4464b319b24579cf7504411582e94e6bc8b058'),LOAD_FILE('https://robohash.org/evenietdebitissunt.jpg?size=250x250&set=set1'),'04', '2049551', '001'),
         (715091320, 'Joe', 'Jenni', 'Nials', 'Wickling', 'jwicklingt@bigcartel.com',sha1( 'e423f7d5122d8e7decb5b24c40b6fa6c3743bb82'),LOAD_FILE('https://robohash.org/eaqueinciduntet.jpg?size=250x250&set=set1'), '01', '2049551', '002'),
        
          
        
        (351705393, 'Artur', 'Hedwiga', 'Pettus', 'Muge', 'hmugeu@booking.com',sha1( '5751c8ad8bdc85b4512ef3047e681839f1e06432'),LOAD_FILE('https://robohash.org/etinventoreoccaecati.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
          (1016845754, 'Scot', 'Almire', 'Entwisle', 'Stollenbeck', 'astollenbeckv@slashdot.org',sha1('6dcdac92a89210bd13cf5fe00e27a5aab04ad9b7'),LOAD_FILE('https://robohash.org/utvelittenetur.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
		(1061857762, 'Andre', 'Chrisy', 'McCurrie', 'Levay', 'clevayw@istockphoto.com',sha1( '7a0905e631091d60419fb7f2e87c32fe59fdfeec'),LOAD_FILE('https://robohash.org/quospossimusaut.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
          (945279654, 'Katharyn', 'Idette', 'Grosier', 'Glyn', 'iglynx@paginegialle.it',sha1('809dfe5e9f45e474128032bae8944920380d87f4'),LOAD_FILE('https://robohash.org/quaesitdolor.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
          (883132405, 'Jone', 'Mac', 'Ronnay', 'Talton', 'mtaltony@yandex.ru',sha1('da54d73bc8339cd98b29cddd62e3fec2c6aca45a'),LOAD_FILE('https://robohash.org/deseruntteneturconsequatur.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
          (693093195, 'Ethelyn', 'Franny', 'Castagna', 'McPeeters', 'fmcpeetersz@wsj.com',sha1( '33a14d48f47d4caa811ec32c3b59749021c94fa5'),LOAD_FILE('https://robohash.org/quoslaborumest.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
          (356393394, 'Isidoro', 'Vernen', 'Pincked', 'O''Shaughnessy', 'voshaughnessy10@shutterfly.com',sha1( '661860a6d66d17c3c05d360801fc887035f62331'),LOAD_FILE('https://robohash.org/intemporeodit.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
          (510736598, 'Shaylah', 'Nettle', 'Bentinck', 'Merrison', 'nmerrison11@nba.com',sha1( 'bd6bc84862cf9a6ec1b6a996b8607faca1e23477'),LOAD_FILE('https://robohash.org/suscipitquiodio.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
          (711314496, 'Bartholemy', 'Ed', 'Baggaley', 'Chasen', 'echasen12@taobao.com',sha1( 'dfc7ca385b6357ec635d24eaeb146f16eac4b89a'),LOAD_FILE('https://robohash.org/doloresetrerum.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
          (1084549780, 'Jolynn', 'Raquela', 'Jeannet', 'Cowpertwait', 'rcowpertwait13@china.com.cn',sha1('447f6683fede7ca3846d610c892639b3efba491b'),LOAD_FILE('https://robohash.org/dictacorporissit.jpg?size=250x250&set=set1'), '01', '1906669', '002'),
          (498828834, 'Melli', 'Walsh', 'Grene', 'Shales', 'wshales14@vk.com',sha1( 'c748ad02023371326ba9cbfcbd6152723af2cb2d'),LOAD_FILE('https://robohash.org/officiaquiaperferendis.jpg?size=250x250&set=set1'), '01', '1906669', '001'),
      
          
          (224575503, 'Cristen', 'Garvey', 'Terram', 'Scragg', 'gscragg15@elegantthemes.com',sha1( 'fd4fc4d31be1e69cd4cebfb13e1e05153b3ce622'),LOAD_FILE('https://robohash.org/odioadexpedita.jpg?size=250x250&set=set1'), '01', '1896339', '001'),
          (493003882, 'Florentia', 'Hartley', 'MacMenemy', 'Shaul', 'hshaul16@miitbeian.gov.cn',sha1('94c5246e8e19ce2dadf42a263fdb22d556ec0167'),LOAD_FILE('https://robohash.org/quosolutablanditiis.jpg?size=250x250&set=set1'), '01', '1896339', '001'),
          (972439006, 'Clyve', 'Maddi', 'Tyght', 'Daines', 'mdaines17@moonfruit.com',sha1( '283300c3ae206dbd9334e665ab975ba206285c7a'),LOAD_FILE('https://robohash.org/aperiamculpalibero.jpg?size=250x250&set=set1'), '01', '1896339', '001'),
      (339660078, 'Care', 'Anne', 'Atlay', 'Vail', 'avail18@nifty.com',sha1( 'a1bece9a94a2e048c481967c91b63ecae8203920'),LOAD_FILE('https://robohash.org/doloribusrerumexercitationem.jpg?size=250x250&set=set1'), '01', '1896339', '001'),
          (264650343, 'Fredelia', 'Harold', 'Wenden', 'Juza', 'hjuza19@dion.ne.jp',sha1('93f6f947e6ca3f36701dc2ad0185c8e1b5889f51'),LOAD_FILE('https://robohash.org/quibusdamprovidentsint.jpg?size=250x250&set=set1'), '01', '1896339', '001'),
          (132728666, 'Darbie', 'Simmonds', 'Fowden', 'Ginnally', 'sginnally1a@tripod.com',sha1( '2d8f110e09af2e6bb2013ba1fb64bb6c8d2c6e09'),LOAD_FILE('https://robohash.org/totamsolutalibero.jpg?size=250x250&set=set1'), '01', '1896339', '001'),
          (212475563, 'Theresita', 'Eula', 'Guidoni', 'Lafranconi', 'elafranconi1b@eepurl.com',sha1( '0b513a6b2a92319dd7b0381eabbccfc1181abb53'),LOAD_FILE('https://robohash.org/utatut.jpg?size=250x250&set=set1'), '01', '1896339', '001'),
          (994155291, 'Olin', 'Chantal', 'Philipot', 'Bambrough', 'cbambrough1c@issuu.com',sha1( '583ca4cb3d93272352ded19dc3e8336a06b63ffd'),LOAD_FILE('https://robohash.org/blanditiisvoluptasest.jpg?size=250x250&set=set1'), '01', '1896339', '001'),
          (353782209, 'Simonne', 'Luz', 'Hanhart', 'Wigfall', 'lwigfall1d@mlb.com',sha1( 'ef6c208579657f4bbccc4622ec17069461217b54'),LOAD_FILE('https://robohash.org/consequaturautquia.jpg?size=250x250&set=set1'), '01', '1896339', '001'),
          (426688981, 'Tootsie', 'Irving', 'Tasseler', 'Terron', 'iterron1e@who.int',sha1('d3d3b4b2ed99357bdc591fdf415aa65e4ae440cb'),LOAD_FILE('https://robohash.org/exvoluptatemsed.jpg?size=250x250&set=set1'), '01', '1896339', '002'),
          
       
          (1060457384, 'Gustave', 'Natalya', 'Camelli', 'Gorbell', 'ngorbell1f@mashable.com',sha1( '8f47351a1643bded8214a248cbf61620195e0e44'),LOAD_FILE('https://robohash.org/reruminciduntdolorem.jpg?size=250x250&set=set1'), '01', '1796339', '001'),
          (894421583, 'Carola', 'Bevon', 'Ayce', 'Bortolomei', 'bbortolomei1g@tripod.com',sha1( 'c45855f01a1cbc9115a2912c28845e7cd8590ae0'),LOAD_FILE('https://robohash.org/voluptatemerrorvoluptatem.jpg?size=250x250&set=set1'), '01', '1796339', '001'),
          (406987361, 'Ilka', 'Emlyn', 'Dawley', 'Simonin', 'esimonin1h@delicious.com',sha1( 'a38b7d548534ba55e8a07ca6e63a1e148c3666f1'),LOAD_FILE('https://robohash.org/consequaturexercitationemlaborum.jpg?size=250x250&set=set1'), '01', '1796339', '001'),
          (369342745, 'Myrta', 'Cecilio', 'Vasyutkin', 'Beasley', 'cbeasley1i@live.com',sha1( '5ec805532fb0b9ba10eee8bb685724bbf4be51c8'),LOAD_FILE('https://robohash.org/natuspariaturlaborum.jpg?size=250x250&set=set1'), '01', '1796339', '001'),
          (224361825, 'Alon', 'Silvan', 'La Torre', 'Blastock', 'sblastock1j@auda.org.au',sha1('5630700bdeb2af1444dd0f3e48f214ce5da950c6'),LOAD_FILE('https://robohash.org/adquiarerum.jpg?size=250x250&set=set1'), '01', '1796339', '001'),
          (683628991, 'Ondrea', 'Alexandre', 'Kermode', 'Tappington', 'atappington1k@netvibes.com',sha1( 'db023fd2a11189a8594bd0c405681d6b11731e43'),LOAD_FILE('https://robohash.org/sedsintdolorem.jpg?size=250x250&set=set1'), '01', '1796339', '001'),
          (452997671, 'Maribeth', 'Henry', 'Alvarado', 'Kubecka', 'hkubecka1l@zdnet.com',sha1( 'd8a7694a7f9349d759be377223bd2f7a495f078e'),LOAD_FILE('https://robohash.org/placeatquisut.jpg?size=250x250&set=set1'), '01', '1796339', '001'),
          (371398630, 'Isabella', 'Nettie', 'Livesay', 'Coxall', 'ncoxall1m@odnoklassniki.ru',sha1('d5fb404e9fecaaef9f2b719ec794eff8fe34ef8e'),LOAD_FILE('https://robohash.org/utinciduntassumenda.jpg?size=250x250&set=set1'), '01', '1796339', '001'),
          (771839311, 'Seka', 'Easter', 'Toffolini', 'Worden', 'eworden1n@wix.com',sha1( '0d99a8f84c045f2a07e8af470e89e5274a3384ff'),LOAD_FILE('https://robohash.org/iustoreiciendisfacilis.jpg?size=250x250&set=set1'), '01', '1796339', '001'),
          (621195515, 'Courtney', 'Glenine', 'Haggarty', 'Wetwood', 'gwetwood1o@upenn.edu',sha1('8b61b54f28f9be26508ac27c59bd3129a6e21055'),LOAD_FILE('https://robohash.org/fugadistinctioquia.jpg?size=250x250&set=set1'), '01', '1796339', '002'),
          
      
          
          (786499470, 'Angel', 'Bibbie', 'Bleddon', 'Whitmarsh', 'bwhitmarsh1p@springer.com',sha1( '35ac20b4b8d21bdaacea615ea18047a7ae6e3dd3'),LOAD_FILE('https://robohash.org/isteconsequaturaspernatur.jpg?size=250x250&set=set1'), '01', '4566371', '001'),
          (292670470, 'Mikkel', 'Jeremiah', 'Dominiak', 'Janc', 'jjanc1q@example.com',sha1( 'bf5acb66d05f69c56effb820eef4c969fda4addd'),LOAD_FILE('https://robohash.org/utetquia.jpg?size=250x250&set=set1'), '01', '4566371', '001'),
          (483045403, 'Kasper', 'Betsy', 'Titcombe', 'Vicar', 'bvicar1r@xrea.com',sha1( '01ffec75695a7f0827d90c5a612b6d72f0938029'),LOAD_FILE('https://robohash.org/numquamautconsequatur.jpg?size=250x250&set=set1'), '01', '4566371', '001'),
          (718295265, 'Cleavland', 'Anneliese', 'Trenoweth', 'Clymo', 'aclymo1s@smh.com.au',sha1('3fda57338dbe323b9851ac5a9a83f6f942c8b5b5'),LOAD_FILE('https://robohash.org/eligendiconsequunturvoluptas.jpg?size=250x250&set=set1'), '01', '4566371', '001'),
          (597555478, 'Quinn', 'Marylin', 'Windous', 'McPeeters', 'mmcpeeters1t@soundcloud.com',sha1( 'd9dffa3a703ee484856ce5ca72da34b399142de4'),LOAD_FILE('https://robohash.org/recusandaenamab.jpg?size=250x250&set=set1'), '01', '4566371', '001'),
        (258392118, 'Emmeline', 'Annabella', 'Landsborough', 'Rottery', 'arottery1u@networkadvertising.org',sha1('07b25d781f52700c7c0c39013eaa12c39549c0f0'),LOAD_FILE('https://robohash.org/exercitationemfugiatet.jpg?size=250x250&set=set1'), '01', '4566371', '001'),
          (522474277, 'Padget', 'Winni', 'Addams', 'Eby', 'weby1v@soundcloud.com',sha1( '27b4e9519448c749212b40161192594690832405'),LOAD_FILE('https://robohash.org/oditdoloresenim.jpg?size=250x250&set=set1'), '01', '4566371', '001'),
          (179509532, 'Maddie', 'Elli', 'Allender', 'McMonnies', 'emcmonnies1w@census.gov',sha1('46f3f66b2da1e749f1c10d48a739f46a882e018f'),LOAD_FILE('https://robohash.org/remautemlibero.jpg?size=250x250&set=set1'), '01', '4566371', '001'),
          (566106777, 'Vitoria', 'Honor', 'Perkinson', 'Piolli', 'hpiolli1x@microsoft.com',sha1( 'a05e90220d235492b0f789dd00db41fcf12a137c'),LOAD_FILE('https://robohash.org/consecteturiurevoluptatem.jpg?size=250x250&set=set1'), '01', '4566371', '001'),
          (390718784, 'Tadeo', 'Ada', 'Galbreath', 'Mattocks', 'amattocks1y@flickr.com',sha1( '2be43ac14c1c66aedf25fd2439655aab57c1cd72'),LOAD_FILE('https://robohash.org/magniidid.jpg?size=250x250&set=set1'), '01', '4566371', '002'),
          
      
          
          (643871314, 'Olivia', 'Tracie', 'Joselevitch', 'Patinkin', 'tpatinkin1z@behance.net',sha1('3e12eb6b948d37bb1a460c3a8431a0697028809d'),LOAD_FILE('https://robohash.org/dolornonfuga.jpg?size=250x250&set=set1'), '01', '4566458', '001'),
          (319056692, 'Jessalyn', 'Maura', 'Gregine', 'Ravelus', 'mravelus20@dot.gov',sha1('30de371e593845ef42c216705ec735d6d7d3902d'),LOAD_FILE('https://robohash.org/quiseaqueexercitationem.jpg?size=250x250&set=set1'), '01', '4566458', '001'),
          (558474882, 'Jillana', 'Erica', 'Tinniswood', 'Mohun', 'emohun21@admin.ch',sha1('8fc0169e953e1a529d6808625d9c8341922425cc'),LOAD_FILE('https://robohash.org/corruptifugiata.jpg?size=250x250&set=set1'), '01', '4566458', '001'),
          (514895823, 'Cleve', 'Lottie', 'Larrosa', 'Brizell', 'lbrizell22@virginia.edu',sha1('a52d91a51965cb17bd6eaaf729785e4bbf2f74de'),LOAD_FILE('https://robohash.org/etrepellenduspraesentium.jpg?size=250x250&set=set1'), '01', '4566458', '001'),
          (702256615, 'Jammal', 'Blondell', 'Pow', 'Antham', 'bantham23@squidoo.com',sha1( 'a92e8ded756d4633e1fcacc5a2222f7fffbe55b6'),LOAD_FILE('https://robohash.org/liberoquioptio.jpg?size=250x250&set=set1'), '01', '4566458', '001'),
          (299969870, 'Aurel', 'Niel', 'Haithwaite', 'Nequest', 'nnequest24@amazonaws.com',sha1( '269de4a8f2f055917f3bb2f0690b54b42cc7e75a'),LOAD_FILE('https://robohash.org/reiciendisautqui.jpg?size=250x250&set=set1'), '01', '4566458', '001'),
          (127129293, 'Milka', 'Flo', 'Crowther', 'Champken', 'fchampken25@nydailynews.com',sha1( '10daad580f176dcac2e60e89bd435d8974adbeae'),LOAD_FILE('https://robohash.org/distinctiooptioalias.jpg?size=250x250&set=set1'), '01', '4566458', '001'),
          (137526646, 'Arielle', 'Jamey', 'Weippert', 'Cheevers', 'jcheevers26@gov.uk',sha1('7f88dc4e47772d6b5d0e65a613ddd0554e03a258'),LOAD_FILE('https://robohash.org/accusamusetnihil.jpg?size=250x250&set=set1'), '01', '4566458', '001'),
          (672863660, 'Demott', 'Aksel', 'Matissoff', 'Monahan', 'amonahan27@sohu.com',sha1( 'fbe015e61f5bf86bbfd591e48a4911e44fc426a9'),LOAD_FILE('https://robohash.org/nullaiustomollitia.jpg?size=250x250&set=set1'), '01', '4566458', '001'),
          (422809822, 'Gabrielle', 'Rebecca', 'Tatham', 'Reynard', 'rreynard28@blog.com',sha1( 'd33cdace16442848a977432754b316e14cf852d3'),LOAD_FILE('https://robohash.org/placeatadipiscisaepe.jpg?size=250x250&set=set1'), '01', '4566458', '002'),
          
     
          (489024331, 'Grissel', 'Henka', 'Shimoni', 'Pierse', 'hpierse29@dailymail.co.uk',sha1('fb076e4563652d7825bdb7997b86ebd710f01aef'),LOAD_FILE('https://robohash.org/vitaearchitectoin.jpg?size=250x250&set=set1'), '01', '4566891', '001'),
          (329249417, 'Binni', 'Lanie', 'Jakoviljevic', 'Aupol', 'laupol2a@yahoo.co.jp',sha1('8d2feaf5e2baa0622475555a245c936027571917'),LOAD_FILE('https://robohash.org/nullaaliasoccaecati.jpg?size=250x250&set=set1'), '01', '4566891', '001'),
          (136991985, 'Winnifred', 'Rozanna', 'McKeown', 'Sherrell', 'rsherrell2b@quantcast.com',sha1( 'ed1d17b62e1197dda35bca17f47297342074f414'),LOAD_FILE('https://robohash.org/velitblanditiismollitia.jpg?size=250x250&set=set1'), '01', '4566891', '001'),
          (406789673, 'Reina', 'Harland', 'Wyld', 'Vida', 'hvida2c@jalbum.net',sha1('625e0379b826d90ee3c14bd0ed3b440f50ca7da1'),LOAD_FILE('https://robohash.org/autemquisquia.jpg?size=250x250&set=set1'), '01', '4566891', '001'),
          (147885326, 'Vassili', 'Olivier', 'Thresh', 'McNellis', 'omcnellis2d@blogtalkradio.com',sha1( '7c9fcd4ff818d6187f8e159f7d3924e8ce302052'),LOAD_FILE('https://robohash.org/temporibusomnisdelectus.jpg?size=250x250&set=set1'), '01', '4566891', '001'),
          (186738731, 'Lissi', 'Glory', 'Boggas', 'Brasner', 'gbrasner2e@wunderground.com',sha1( '8c80c26422b471bce844e1fae80ff8fca019ecaa'),LOAD_FILE('https://robohash.org/necessitatibuspossimusadipisci.jpg?size=250x250&set=set1'), '01', '4566891', '001'),
          (429849904, 'Saree', 'Orton', 'Beacom','Brands', 'obrands2f@deviantart.com',sha1( '2930a9577323ad4b1b1cead55aa501d0bb2ff2c6'),LOAD_FILE('https://robohash.org/saepequifugit.jpg?size=250x250&set=set1'), '01', '4566891', '001'),
          (586160962, 'Porter', 'Boothe', 'Millett', 'Kenelin', 'bkenelin2g@joomla.org',sha1('91cd2a6f305b9d83c33e64ba407fb0fa144ed817'),LOAD_FILE('https://robohash.org/doloremqueexpeditaet.jpg?size=250x250&set=set1'), '01', '4566891', '001'),
          (452198054, 'Daphne', 'Eddy', 'Juleff', 'Redmile', 'eredmile2h@cargocollective.com',sha1( '6814bd8bc963b7f99ac4d447b4be1996f6cc1575'),LOAD_FILE('https://robohash.org/voluptatemnemoquas.jpg?size=250x250&set=set1'), '01', '4566891', '001'),
          (904647245, 'Willi', 'Sandra', 'Lethley', 'Rijkeseis', 'srijkeseis2i@eventbrite.com',sha1( 'c722c0c9fe84c53364f02ca805c42919e9aa6038'),LOAD_FILE('https://robohash.org/aliquidautet.jpg?size=250x250&set=set1'), '01', '4566891', '002'),
          
   
          (546182210, 'Britt', 'Bernelle', 'Sherar', 'Saul', 'bsaul2j@flickr.com',sha1( 'cb7b0b07fc3959d310bede85a7ace839fe0e9f32'),LOAD_FILE('https://robohash.org/necessitatibusetsint.jpg?size=250x250&set=set1'), '01', '1963872', '001'),
          (858125779, 'Teressa', 'Kelly', 'Boothe', 'Casewell', 'kcasewell2k@nih.gov',sha1('bc41ec3f776dae2d57df0350e274c164efef073b'),LOAD_FILE('https://robohash.org/magniomnisvelit.jpg?size=250x250&set=set1'), '01', '1963872', '001'),
          (782507880, 'Cookie', 'Maje', 'Labarre', 'Jagielski', 'mjagielski2l@linkedin.com',sha1( 'f2511910fa82a869fdf9bdde94b340bc9ec8fb2d'),LOAD_FILE('https://robohash.org/oditquocumque.jpg?size=250x250&set=set1'), '01', '1963872', '001'),
          (495210523, 'Gale', 'Lucy', 'Mitchelson', 'Redhills', 'lredhills2m@spiegel.de',sha1('94cc680d1a1418a0a4d5d93be6c985925672f002'),LOAD_FILE('https://robohash.org/aliasdoloresassumenda.jpg?size=250x250&set=set1'), '01', '1963872', '001'),
      (287949810, 'Opalina', 'Charisse', 'McGuggy', 'Terbrug', 'cterbrug2n@cyberchimps.com',sha1( 'bd354ddf30bb0a3fa6c21d48cbfb2aeed62c8155'),LOAD_FILE('https://robohash.org/doloribusrerumcorrupti.jpg?size=250x250&set=set1'), '01', '1963872', '001'),
          (933385947, 'Veradis', 'Noam', 'Meeking', 'Kuzma', 'nkuzma2o@printfriendly.com',sha1( 'a749c630d3004177726dfa968b7b1e1ea67c5a59'),LOAD_FILE('https://robohash.org/veroconsequunturconsequatur.jpg?size=250x250&set=set1'), '01', '1963872', '001'),
          (614263913, 'Silvanus', 'Cleavland', 'Climie', 'Porcher', 'cporcher2p@sourceforge.net',sha1('ac277b9bc83277ad8cd9ace15e409851ad543350'),LOAD_FILE('https://robohash.org/utvoluptatemveritatis.jpg?size=250x250&set=set1'), '01', '1963872', '001'),
          (936968232, 'Tammy', 'Lela', 'Budget', 'Disdel', 'ldisdel2q@dailymotion.com',sha1( 'e9bc802eddace752b85ee960d6c76019c4b36ef3'),LOAD_FILE('https://robohash.org/sapientevoluptatelaboriosam.jpg?size=250x250&set=set1'), '01', '1963872', '001'),
          (826760374, 'Kiley', 'Trula', 'Woltman', 'Matuszak', 'tmatuszak2r@mail.ru',sha1('01e56c64867c800d459a696ef6ca0be6f91e2799'),LOAD_FILE('https://robohash.org/uthicvelit.jpg?size=250x250&set=set1'), '01', '1963872', '001'),
          (150138532, 'Cammy', 'Bert', 'Ogglebie', 'Randell', 'brandell2s@mlb.com',sha1( '79f11373eaeec0a96fa1e2f0dddd55a6cccaeed3'),LOAD_FILE('https://robohash.org/optioeiusea.jpg?size=250x250&set=set1'), '01', '1963872', '002'),
          
       
          
          (734826524, 'Blakeley', 'Inglis', 'O''Scully', 'Beckinsale', 'ibeckinsale2t@nationalgeographic.com',sha1( '4f8fff057c4bbfe19d603d26023c45be6995f51a'),LOAD_FILE('https://robohash.org/quasnostrumut.jpg?size=250x250&set=set1'), '01', '1963863', '001'),
          (1026453254, 'Matti', 'Cordula', 'Slaten', 'Heinish', 'cheinish2u@opensource.org',sha1('54069e23896ff34d95a2b502f28bb694d1318fbd'),LOAD_FILE('https://robohash.org/sittemporedolore.jpg?size=250x250&set=set1'), '01', '1963863', '001'),
          (202579716, 'Matt', 'Silvano', 'Zum Felde', 'Waldram', 'swaldram2v@boston.com',sha1( 'f026915fce8481e913770ebc25d4f4e1e9e8ed79'),LOAD_FILE('https://robohash.org/undeatullam.jpg?size=250x250&set=set1'), '01', '1963863', '001'),
          (497698868, 'Arleta', 'Martelle', 'Le Teve', 'Nannetti', 'mnannetti2w@scientificamerican.com',sha1( 'a4b1d5feaaaaf9a42d0caae6c0d57bcf47b26c6e'),LOAD_FILE('https://robohash.org/iddistinctiominima.jpg?size=250x250&set=set1'), '01', '1963863', '001'),
          (737502958, 'Bartlet', 'Jacobo', 'Manville', 'Hubner', 'jhubner2x@boston.com',sha1( 'b4e52c8ba09a304037f18deb07352812b55546fc'),LOAD_FILE('https://robohash.org/consequunturcommodiofficia.jpg?size=250x250&set=set1'), '01', '1963863', '001'),
          (415485150, 'Locke', 'Anthia', 'Vandenhoff', 'Rideout', 'arideout2y@cargocollective.com',sha1( '8ff633df924c50029c5fd1d3c16d952fcf97767f'),LOAD_FILE('https://robohash.org/perspiciatisquinulla.jpg?size=250x250&set=set1'), '01', '1963863', '001'),
          (929195588, 'Sheridan', 'Yuri', 'Gilling', 'Saur', 'ysaur2z@stanford.edu',sha1('8c02edd2ae08a9955432121975e39cd903b8c3b9'),LOAD_FILE('https://robohash.org/voluptatesnemofugiat.jpg?size=250x250&set=set1'), '01', '1963863', '001'),
          (371797710, 'Connor', 'Jodie', 'Arno', 'Izzat', 'jizzat30@4shared.com',sha1( '99bc48d0152fca90fa504b1ad6def6d9ed2a9472'),LOAD_FILE('https://robohash.org/esseiureaut.jpg?size=250x250&set=set1'), '01', '1963863', '001'),
          (779942002, 'Edgardo', 'Donal', 'Mountain', 'Bosse', 'dbosse31@netvibes.com',sha1( 'e8b3cf3db0a4ddae92b5333f3bea3bdbc8b1fb61'),LOAD_FILE('https://robohash.org/ameteasit.jpg?size=250x250&set=set1'), '01', '1963863', '001'),
          (553734629, 'Lay', 'Garth', 'Stitle', 'O''Hanlon', 'gohanlon32@cbslocal.com',sha1( '4b6224a28a53abe23af5c1475f8b4c2b8ebe84e4'),LOAD_FILE('https://robohash.org/minusmaximevelit.jpg?size=250x250&set=set1'), '01', '1963863', '002'),
          
          
          
          
          (233758410, 'Bobbe', 'Dana', 'Firpi', 'Keher', 'dkeher33@imageshack.us',sha1('a4452153b806a698f6021bfa14d00121ce724d29'),LOAD_FILE('https://robohash.org/istesitdoloremque.jpg?size=250x250&set=set1'), '01', '1963865', '001'),
          (934368714, 'Emanuele', 'Ralph', 'Ockleshaw', 'Brummell', 'rbrummell34@ibm.com',sha1( 'fd3045ad68832cf45f2336193e893cf9c920f94b'),LOAD_FILE('https://robohash.org/etquibusdamofficiis.jpg?size=250x250&set=set1'), '01', '1963865', '001'),
          (807684645, 'Jena', 'Alli', 'Kerwick', 'Riggs', 'ariggs35@who.int',sha1('2207813d3bd8a3488063ff7409d64543ae2df7af'),LOAD_FILE('https://robohash.org/veldolorrepudiandae.jpg?size=250x250&set=set1'), '01', '1963865', '001'),
          (897158571, 'Martha', 'Paulie', 'Sivewright', 'O''Farris', 'pofarris36@dailymail.co.uk',sha1('d289fd8df5daf5e838bd755b18ff3116b8aedd48'),LOAD_FILE('https://robohash.org/omnisducimusut.jpg?size=250x250&set=set1'), '01', '1963865', '001'),
          (512500324, 'Sheff', 'Ronica', 'Dodimead', 'Beddoes', 'rbeddoes37@arstechnica.com',sha1( 'e92783911bab39ac60ea2d1b2a49c4d8396eafac'),LOAD_FILE('https://robohash.org/placeatofficiisomnis.jpg?size=250x250&set=set1'), '01', '1963865', '001'),
          (223409725, 'Mycah', 'Jakob', 'Salzberger', 'Smallshaw', 'jsmallshaw38@usnews.com',sha1( '1377b95e1fd0012681644b2a84b5ec4dedbb42ca'),LOAD_FILE('https://robohash.org/inciduntassumendanon.jpg?size=250x250&set=set1'), '01', '1963865', '001'),
          (230892199, 'Katerina', 'Laney', 'Samett', 'Matura', 'lmatura39@guardian.co.uk',sha1('23cdd704c4d4548fc9ba8f0073242540d560e41b'),LOAD_FILE('https://robohash.org/similiqueestcommodi.jpg?size=250x250&set=set1'), '01', '1963865', '001'),
          (670425076, 'Cecilla', 'Jinny', 'Lidster', 'Bough', 'jbough3a@last.fm',sha1('aa03505a7c727015c90a697d4bba8f9197424c0c'),LOAD_FILE('https://robohash.org/nonveldoloribus.jpg?size=250x250&set=set1'), '01', '1963865', '001'),
          (564092204, 'Virgina', 'Carol', 'Bellinger', 'Crockatt', 'ccrockatt3b@istockphoto.com',sha1( '7d7c113c9863f3d741998f94334e26b7855a2fd2'),LOAD_FILE('https://robohash.org/namvitaefacere.jpg?size=250x250&set=set1'), '01', '1963865', '001'),
          (377373693, 'Maren', 'Portia', 'Mouton', 'Hamlett', 'phamlett3c@aol.com',sha1( '51747cd66bdcc36ef40f1f87cd021d275cea779d'),LOAD_FILE('https://robohash.org/nonistefugit.jpg?size=250x250&set=set1'), '01', '1963865', '002'),
          
                              
          
          
          (310173863, 'Dee dee', 'Forrest', 'Glynn', 'Fowler', 'ffowler3d@techcrunch.com',sha1( '58c1f426f252b66737c68aa79e55ee7547eeb622'),LOAD_FILE('https://robohash.org/nihilperferendislibero.jpg?size=250x250&set=set1'), '01', '3049891', '001'),
          (280740951, 'Kaia', 'Nikolaus', 'Allsep', 'Ciccarelli', 'nciccarelli3e@a8.net',sha1('761cd95abc1a0d22db81666e4b0285cbe188734f'),LOAD_FILE('https://robohash.org/voluptaseumquis.jpg?size=250x250&set=set1'), '01', '3049891', '001'),
          (987734799, 'Zorina', 'Nealon', 'Roches', 'Kohrt', 'nkohrt3f@dailymail.co.uk',sha1('71fa89fcbb6d221080cc81af60de01b1e5a224e4'),LOAD_FILE('https://robohash.org/quoaliquidtotam.jpg?size=250x250&set=set1'), '01', '3049891', '001'),
          (142575597, 'Chantalle', 'Roselin', 'McNulty', 'Rupert', 'rrupert3g@ycombinator.com',sha1( '9dce6103597785552b1deaa10154a862a87bcb00'),LOAD_FILE('https://robohash.org/doloremexercitationemat.jpg?size=250x250&set=set1'), '01', '3049891', '001'),
          (401281007, 'Twila', 'Glennis', 'Willcocks', 'Benns', 'gbenns3h@github.io',sha1('811691f4c0a47680fc3fc0d2506216e74828406b'),LOAD_FILE('https://robohash.org/estaccusamusassumenda.jpg?size=250x250&set=set1'), '01', '3049891', '001'),
          (418859802, 'Aeriel', 'Godfree', 'Linggard', 'Dayes', 'gdayes3i@netvibes.com',sha1( '2bc5a13f339fd867ce886aaf3d1f03a21f9cc99b'),LOAD_FILE('https://robohash.org/rerumquieveniet.jpg?size=250x250&set=set1'), '01', '3049891','001'),
          (214127042, 'Pen', 'Dev', 'Whitemarsh', 'Knowller', 'dknowller3j@nasa.gov',sha1('fdbd42cb2d41a2a84914c5d6a5a4db71feeaae9f'),LOAD_FILE('https://robohash.org/etquisint.jpg?size=250x250&set=set1'), '01', '3049891', '001'),
          (1018411484, 'Eduard', 'Holly', 'Olivello', 'Fury', 'hfury3k@census.gov',sha1('71ac990dad8d1785651ebf3c951a9a54c1df9ae5'),LOAD_FILE('https://robohash.org/distinctioautfuga.jpg?size=250x250&set=set1'), '01', '3049891', '001'),
          (911561061, 'Johan', 'Rosanne', 'Shermore', 'Atkirk', 'ratkirk3l@homestead.com',sha1( 'e4dabc5d7776a1213c0f5360bd32a8c7493b2eb5'),LOAD_FILE('https://robohash.org/expeditapossimusvoluptas.jpg?size=250x250&set=set1'), '01', '3049891', '001'),
          (660312551, 'Loralyn', 'Kristopher', 'Lydden', 'McMurthy', 'kmcmurthy3m@ted.com',sha1( 'c76f77568bba6e24d99f5646aad8aa005809061b'),LOAD_FILE('https://robohash.org/repudiandaeculpaodit.jpg?size=250x250&set=set1'), '01', '3049891', '002'),
          (772667677, 'Kailey', 'Elsy', 'Van Ross', 'Yakovich', 'eyakovich3n@eepurl.com',sha1( '96f139ddef1daabd8df94fd0b2b889f05360fbff'),LOAD_FILE('https://robohash.org/ineavelit.jpg?size=250x250&set=set1'), '01', '3049891', '001'),
          
          
          
          (839845084, 'Delaney', 'Phelia', 'Mosedall', 'Loveguard', 'ploveguard3o@plala.or.jp',sha1('cb613e122459441fc5c3ba0381a6b729f1da943f'),LOAD_FILE('https://robohash.org/teneturnonet.jpg?size=250x250&set=set1'), '01', '3049943', '001'),
          (125362386, 'Bernie', 'Jone', 'Chanders', 'Jansen', 'jjansen3p@bbb.org',sha1('e3449377f8a3c538ee785825ace901b723704834'),LOAD_FILE('https://robohash.org/expeditaharummollitia.jpg?size=250x250&set=set1'), '01', '3049943', '001'),
          (536448391, 'Giacopo', 'Kerrin', 'Pleace', 'Hume', 'khume3q@purevolume.com',sha1( '96173116ccd0ce6ce2abe6f1ccd05bfc6e288468'),LOAD_FILE('https://robohash.org/sitplaceatet.jpg?size=250x250&set=set1'), '01', '3049943', '001'),
          (115369665, 'Bowie', 'Selene', 'Snarie', 'Pummell', 'spummell3r@ask.com',sha1( '1271184b05ada0ac980b6db4f87a18b6a83c3673'),LOAD_FILE('https://robohash.org/etculpaaspernatur.jpg?size=250x250&set=set1'), '01', '3049943', '001'),
          (896125439, 'Gus', 'Thedrick', 'Perfect', 'Aguirrezabal', 'taguirrezabal3s@auda.org.au',sha1('3e80912e9bdaf84ce19c77457717cf9cc5a621c5'),LOAD_FILE('https://robohash.org/hicrerumpariatur.jpg?size=250x250&set=set1'), '01', '3049943', '001'),
          (471607757, 'Abbey', 'Anne-corinne', 'Duffett', 'Breddy', 'abreddy3t@tmall.com',sha1( 'da0c3639cf95eeff60c1942e2827f234f346a9eb'),LOAD_FILE('https://robohash.org/quinamvitae.jpg?size=250x250&set=set1'), '01', '3049943', '001'),
          (360812558, 'Cherie', 'Pavel', 'Cutford', 'Lazonby', 'plazonby3u@cmu.edu',sha1('ae5d19edecc6e04d2aa73dd55a15c9a3b8d31489'),LOAD_FILE('https://robohash.org/enimvoluptatemmagni.jpg?size=250x250&set=set1'), '01', '3049943', '001'),
          (165996159, 'Freddi', 'Wright', 'Griffitts', 'Shrubsall', 'wshrubsall3v@tiny.cc',sha1('10f7b0fe534a8e1e824ae1ae26fb470520160c6c'),LOAD_FILE('https://robohash.org/natustotamalias.jpg?size=250x250&set=set1'), '01', '3049943', '001'),
          (289808459, 'Katya', 'Kerry', 'Denne', 'Capp', 'kcapp3w@psu.edu',sha1('4f3e87aa5586d8e915fa289488f23f2f81442a80'),LOAD_FILE('https://robohash.org/enimetducimus.jpg?size=250x250&set=set1'), '01', '3049943', '001'),
          (506822906, 'Patty', 'Jeni', 'Shipp', 'Oxford', 'joxford3x@paypal.com',sha1( '3150ffbc558db759b8f29fe16b8b073b1c7da939'),LOAD_FILE('https://robohash.org/etidet.jpg?size=250x250&set=set1'), '01', '3049943', '002'),
 
          
          (477719002, 'Binnie', 'Fairleigh', 'Lucio', 'Willan', 'fwillan3y@studiopress.com',sha1( '1d8477c4a6f9ceedfeeb7221549768d593d46a99'),LOAD_FILE('https://robohash.org/earumdebitisaspernatur.jpg?size=250x250&set=set1'), '01', '3049551', '001'),
          (373402182, 'Robby', 'Temple', 'Flatte', 'Curragh', 'tcurragh3z@cnet.com',sha1( '85ba015d87422a867c6cbf1062fc5a600aed9776'),LOAD_FILE('https://robohash.org/nonvoluptasprovident.jpg?size=250x250&set=set1'), '01', '3049551', '001'),
          (709388232, 'Zeke', 'Shannon', 'Stafford', 'Crocroft', 'scrocroft40@live.com',sha1( '1ce364a3bdbb0a751f7d308bb8b83954b712c58c'),LOAD_FILE('https://robohash.org/eamolestiaetotam.jpg?size=250x250&set=set1'), '01', '3049551', '001'),
          (175783986, 'Cordie', 'Tally', 'Gallienne', 'Calafate', 'tcalafate41@google.ru',sha1('69432c5abf199d9ac9e50588f2cf8b5236f6cbd3'),LOAD_FILE('https://robohash.org/blanditiisexvoluptas.jpg?size=250x250&set=set1'), '01', '3049551', '001'),
          (435023837, 'Margarette', 'Barry', 'Noah', 'Davidde', 'bdavidde42@sakura.ne.jp',sha1('2f3f10d7d27731666f59c576da0966a12fc8440e'),LOAD_FILE('https://robohash.org/quinostrumnon.jpg?size=250x250&set=set1'), '01', '3049551', '001'),
          (457545086, 'Cam', 'Paxton', 'McBrier', 'Caustick', 'pcaustick43@house.gov',sha1('40894e88479078d3a5bc489609fac73bad20812d'),LOAD_FILE('https://robohash.org/laudantiumautdoloribus.jpg?size=250x250&set=set1'), '01', '3049551', '001'),
          (591128865, 'Kleon', 'Blake', 'Eby', 'Crenshaw', 'bcrenshaw44@w3.org',sha1('12eb23d1045cbe77b9ffc733ea9d0a22640e8a75'),LOAD_FILE('https://robohash.org/rerumquaeet.jpg?size=250x250&set=set1'),'01', '3049551', '001'),
       (604944340, 'Gabriellia', 'Phyllida', 'Haensel', 'Beazer', 'pbeazer45@jimdo.com',sha1( 'f46b552efc75746af3668aa3c452211347c5adcb'),LOAD_FILE('https://robohash.org/veronesciuntquos.jpg?size=250x250&set=set1'), '01', '3049551', '001'),
          (169060448, 'Ross', 'Janeczka', 'Wimpress', 'Scotchmer', 'jscotchmer46@sakura.ne.jp',sha1('bd9465c24f5292b1640589024feb1d7a9605fbdc'),LOAD_FILE('https://robohash.org/sedanimivoluptatem.jpg?size=250x250&set=set1'), '01', '3049551', '001'),
          (811610767, 'Kilian', 'Angelo', 'Dreus', 'Wych', 'awych47@w3.org',sha1('a76de54d88558963894b5feeb660091d6b952e86'),LOAD_FILE('https://robohash.org/esseanimisit.jpg?size=250x250&set=set1'),'01', '3049551', '002'),
          
          (192984271, 'Ilene', 'Mohandis', 'Spering', 'Zealey', 'mzealey48@mashable.com',sha1( '4f675315d029a86e41310918d1da45094e05320f'),LOAD_FILE('https://robohash.org/cumqueverovoluptas.jpg?size=250x250&set=set1'), '01', '9663771', '001'),
          (350480162, 'Ferris', 'Jill', 'Gyde', 'Eveling', 'jeveling49@linkedin.com',sha1( 'd023e31591de22fd702912e5c68973504b61cea7'),LOAD_FILE('https://robohash.org/quiomnisfuga.jpg?size=250x250&set=set1'), '01', '9663771', '001'),
          (1049757999, 'Fergus', 'Grazia', 'Gilsthorpe', 'Coombe', 'gcoombe4a@hubpages.com',sha1( '19c0beaa2e4a51cc77558188f011e97aa7ee0648'),LOAD_FILE('https://robohash.org/sitpossimusnumquam.jpg?size=250x250&set=set1'), '01', '9663771', '001'),
          (475416258, 'Shelli', 'Zsazsa', 'Heninghem', 'Staveley', 'zstaveley4b@wufoo.com',sha1( '5357e32d270299bf613a431d9304d712ac7d5ffb'),LOAD_FILE('https://robohash.org/eumomnisfacilis.jpg?size=250x250&set=set1'), '01', '9663771', '001'),
          (870807854, 'Claretta', 'Mattias', 'Mill', 'Churn', 'mchurn4c@ocn.ne.jp',sha1('3b3ac1cc1d3987d8e8b6f67a4a39464942143811'),LOAD_FILE('https://robohash.org/iureoditid.jpg?size=250x250&set=set1'), '01', '9663771', '001'),
          (679724118, 'Fredek', 'Willi', 'Swiggs', 'Dalglish', 'wdalglish4d@dyndns.org',sha1('899e446c59b3f903f6eae7feb9a0c75c2b4fc937'),LOAD_FILE('https://robohash.org/quisveroquae.jpg?size=250x250&set=set1'), '01', '9663771', '001'),
          (766156137, 'Brittani', 'Fredra', 'Faas', 'Huffy', 'fhuffy4e@meetup.com',sha1( '78ba2e3c4dc404fea47267505e270a64107a23a0'),LOAD_FILE('https://robohash.org/quisducimusut.jpg?size=250x250&set=set1'), '01', '9663771', '001'),
          (1059141311, 'Pablo', 'Ozzie', 'Evered', 'Ions', 'oions4f@jiathis.com',sha1( 'c07669882f875463ad29fbc686a590dec851696f'),LOAD_FILE('https://robohash.org/etquiaautem.jpg?size=250x250&set=set1'), '01', '9663771', '001'),
          (974375633, 'Maurits', 'Granville', 'Plaskett', 'Battleson', 'gbattleson4g@fda.gov',sha1('b8af45e75e75289a068becb7e280b269236dc764'),LOAD_FILE('https://robohash.org/abexcepturised.jpg?size=250x250&set=set1'), '01', '9663771', '001'),
          (864887555, 'Dominga', 'Hunt', 'Muskett', 'Ibbett', 'hibbett4h@forbes.com',sha1( 'cdb00d2acf11605fcf55ad64bbca397ab4f61525'),LOAD_FILE('https://robohash.org/autemnisiaspernatur.jpg?size=250x250&set=set1'), '01', '9663771', '002'),
          
 
          
          (469916939, 'Ashly', 'Mendie', 'Cumine', 'Mayfield', 'mmayfield4i@buzzfeed.com',sha1('5da848791281da807229b3269cb5d1ca264f9944'),LOAD_FILE('https://robohash.org/nemoevenietea.jpg?size=250x250&set=set1'), '01', '9663751', '001'),
          (380356021, 'Jonis', 'Natala', 'Bignal', 'Gookey', 'ngookey4j@jigsy.com',sha1( '3911ad2172487c26599644ec8ea9802dbe92d338'),LOAD_FILE('https://robohash.org/suntautmagni.jpg?size=250x250&set=set1'), '01', '9663751', '001'),
          (128218155, 'Kiersten', 'Magdaia', 'Ranscome', 'Haffner', 'mhaffner4k@cocolog-nifty.com',sha1( '538b32c3a64d07569452ebdffb35915346b67720'),LOAD_FILE('https://robohash.org/velautemdeserunt.jpg?size=250x250&set=set1'), '01', '9663751', '001'),
          (723572933, 'Wilden', 'Minette', 'Shepard', 'Wilden', 'mwilden4l@independent.co.uk',sha1('c0e0b66ffb6e0269f7878ed962cd0399ad3f2c98'),LOAD_FILE('https://robohash.org/etquiaet.jpg?size=250x250&set=set1'), '01', '9663751', '001'),
          (122199106, 'Darrelle', 'Hillary', 'Vicar', 'Dale', 'hdale4m@mtv.com',sha1( '1ec4b2da79f00efbb5eac153d09b5ac9ae81251e'),LOAD_FILE('https://robohash.org/possimusquoet.jpg?size=250x250&set=set1'), '01', '9663751', '001'),
          (500394227, 'Archibold', 'Nathanil', 'Bennis', 'Grimmert', 'ngrimmert4n@bbb.org',sha1('607f1a25a06a63f27ee88becd85f2ca6a1a7cfb2'),LOAD_FILE('https://robohash.org/sedipsadeserunt.jpg?size=250x250&set=set1'), '01', '9663751', '001'),
          (939229591, 'Spencer', 'Catharina', 'MacClure', 'Gorrick', 'cgorrick4o@youtu.be',sha1('f65a75bb68a5166b6d1b30ad6ba1bbaca268b2d8'),LOAD_FILE('https://robohash.org/assumendanamut.jpg?size=250x250&set=set1'), '01', '9663751', '001'),
          (385572376, 'Linell', 'Janella', 'Hrus', 'Croke', 'jcroke4p@flavors.me',sha1('ecb8ed2775cc5da50d17d53cecba3743f56e8f33'),LOAD_FILE('https://robohash.org/velitconsequaturexcepturi.jpg?size=250x250&set=set1'), '01', '9663751', '001'),
          (916064059, 'Jeannine', 'Gunilla', 'Lamba', 'Padgett', 'gpadgett4q@issuu.com',sha1( 'a660e2710ef36c535c71b32d476b62edc673d8c8'),LOAD_FILE('https://robohash.org/odionisialiquam.jpg?size=250x250&set=set1'), '01', '9663751', '001'),
          (756404361, 'Giffer', 'Cornela', 'Kempson', 'Trow', 'ctrow4r@mapy.cz',sha1('86bf97afe10f680b037ce4a899bb36a36496238e'),LOAD_FILE('https://robohash.org/quiarchitectonemo.jpg?size=250x250&set=set1'), '01', '9663751', '002'),
          
        
          
          (548821935, 'Rube', 'Janine', 'Lattie', 'Goodboddy', 'jgoodboddy4s@yahoo.com',sha1( 'fdd107aaf27446a76b71d64163e1181bf09f5f85'),LOAD_FILE('https://robohash.org/eligendiipsamut.jpg?size=250x250&set=set1'),'01', '9663895', '001'),
          (773689880, 'Franny', 'Deva', 'Goghin', 'Corsan', 'dcorsan4t@ft.com',sha1( '6d507dcd07ac56d6542ddc1c9156acf80a377bda'),LOAD_FILE('https://robohash.org/utaspernaturmagni.jpg?size=250x250&set=set1'), '01', '9663895', '001'),
          (840341609, 'Jaimie', 'Bard', 'Alleburton', 'Sturdey', 'bsturdey4u@businesswire.com',sha1( '55ba5474796582d2caee73ebf4c53eda8303f67d'),LOAD_FILE('https://robohash.org/noniustolaudantium.jpg?size=250x250&set=set1'), '01', '9663895', '001'),
          (1113514416, 'Charline', 'Viva', 'Stitcher', 'McFaul', 'vmcfaul4v@wired.com',sha1( '03de7deebca4dd46e5e4feedad63662af7ab6e60'),LOAD_FILE('https://robohash.org/sitvelprovident.jpg?size=250x250&set=set1'), '01', '9663895', '001'),
          (370507203, 'Glori', 'Jacinta', 'Maccrea', 'Goldney', 'jgoldney4w@plala.or.jp',sha1('0afac81495592253df168b0baa4a9b2ef607251d'),LOAD_FILE('https://robohash.org/quiscommodivel.jpg?size=250x250&set=set1'), '01', '9663895', '001'),
          (981686944, 'Libbi', 'Henry', 'Eilhart', 'Agett', 'hagett4x@cocolog-nifty.com',sha1( '534862890d2425aa457a06a940a0d9a49a2be693'),LOAD_FILE('https://robohash.org/dolorumeumquas.jpg?size=250x250&set=set1'), '01', '9663895', '001'),
          (757550395, 'Sheelagh', 'Alysia', 'Shovelbottom', 'Lampel', 'alampel4y@unblog.fr',sha1('0989bff3a08cb6620b1792c00dae23a0b1f4f115'),LOAD_FILE('https://robohash.org/aliquidrepellendusmaiores.jpg?size=250x250&set=set1'), '01', '9663895', '001'),
          (331315159, 'Alano', 'Trace', 'Spelman', 'Fears', 'tfears4z@rediff.com',sha1( '97001834efcad9ecca47c5602a380b22450b5eaf'),LOAD_FILE('https://robohash.org/blanditiissuntquis.jpg?size=250x250&set=set1'), '01', '9663895', '001'),
          (400297633, 'Drake', 'Yolande', 'Calderhead', 'Boatswain', 'yboatswain50@ucoz.com',sha1( '08492fded438fe8318a5d5caa48fb5f0608daf56'),LOAD_FILE('https://robohash.org/doloremperferendisrepudiandae.jpg?size=250x250&set=set1'), '01','9663895', '001'),
          (907886364, 'Doro', 'Shellysheldon', 'Voller', 'D''Acth', 'sdacth51@europa.eu',sha1('0d6a7c84a41516ee3de04164a3824607b5afec66'),LOAD_FILE('https://robohash.org/inipsamsoluta.jpg?size=250x250&set=set1'), '01', '9663895', '001'),
          (250217793, 'Karita', 'Linnie', 'Dufore', 'Shalloo', 'lshalloo52@vinaora.com',sha1( '68f5d34c7594eb298ae298995297f9ce3a96b920'),LOAD_FILE('https://robohash.org/etetsint.jpg?size=250x250&set=set1'), '01','', '003');
        
         
   INSERT INTO infEst.aprendices (fk_numeroDocumento,fk_idDocumento) 
 
 values   (366726966,'01'),
		  (666822958,'01'),
          (825274021,'01'),
		 (471489900, '01'),
         (448143323, '04'),
          (544522282,'01'),
          (353113333,'01'),
       (586159603, '04'),
          (1113317668, '01'),
          
    
          
       
          
          (573970307,'01'),
          (518164695, '01'),
		(680456560,'01'),
          (532995664, '04'),
          (1050194361, '01'),
          (138412913,'01'),
          (324216846,'04'),
       (798602132,'01'),
          (670407704,'01'),
        
          
    
          
          (614246803,'01'),
		(399523709,'01'),
          (1101267958,'04'),
          (233204345,'01'),
          (153834895,'01'),
          (226994565,'04'),
          (489219890,'01'),
     (494866193, '01'),
          (1110359689,'04'),
 
        
          
        
        (351705393, '01'),
          (1016845754, '01'),
		(1061857762,'01'),
          (945279654,'01'),
          (883132405,'01'),
          (693093195,'01'),
          (356393394,'01'),
          (510736598,'01'),
          (711314496, '01'),
        
          (498828834,'01'),
      
          
          (224575503,'01'),
          (493003882,'01'),
          (972439006,'01'),
      (339660078, '01'),
          (264650343,'01'),
          (132728666,'01'),
          (212475563,'01'),
          (994155291,'01'),
          (353782209,'01'),
          
          
       
          (1060457384,'01'),
          (894421583,'01'),
          (406987361,'01'),
          (369342745,'01'),
          (224361825,'01'),
          (683628991,'01'),
          (452997671,'01'),
          (371398630,'01'),
          (771839311,'01'),
        
          
      
          
          (786499470,'01'),
          (292670470,'01'),
          (483045403,'01'),
          (718295265,'01'),
          (597555478,'01'),
        (258392118, '01'),
          (522474277,'01'),
          (179509532,'01'),
          (566106777,'01'),
   
          
      
          
          (643871314,'01'),
          (319056692,'01'),
          (558474882,'01'),
          (514895823,'01'),
          (702256615,'01'),
          (299969870,'01'),
          (127129293,'01'),
          (137526646,'01'),
          (672863660,'01'),
   
          
     
          (489024331, '01'),
          (329249417,'01'),
          (136991985,'01'),
          (406789673,'01'),
          (147885326, '01'),
          (186738731,'01'),
          (429849904,'01'),
          (586160962,'01'),
          (452198054,'01'),
          
          
   
          (546182210,'01'),
          (858125779,'01'),
          (782507880,'01'),
          (495210523,'01'),
          (287949810,'01'),
          (933385947,'01'),
          (614263913,'01'),
          (936968232,'01'),
          (826760374,'01'),
    
          
       
          
          (734826524,'01'),
          (1026453254,'01'),
          (202579716,'01'),
          (497698868,'01'),
          (737502958,'01'),
          (415485150,'01'),
          (929195588,'01'),
          (371797710,'01'),
          (779942002,'01'),
         
          
          
          
          
          (233758410,'01'),
          (934368714,'01'),
          (807684645,'01'),
          (897158571,'01'),
          (512500324,'01'),
          (223409725,'01'),
          (230892199,'01'),
          (670425076,'01'),
          (564092204,'01'),
          
          (310173863,'01'),
          (280740951,'01'),
          (987734799,'01'),
          (142575597,'01'),
          (401281007,'01'),
          (418859802,'01'),
          (214127042,'01'),
          (1018411484,'01'),
          (911561061,'01'),

          (772667677,'01'),
		
          (839845084,'01'),
          (125362386,'01'),
          (536448391,'01'),
          (115369665,'01'),
          (896125439,'01'),
          (471607757,'01'),
          (360812558,'01'),
          (165996159,'01'),
          (289808459,'01'),
          
          (477719002,'01'),
          (373402182,'01'),
          (709388232,'01'),
          (175783986,'01'),
          (435023837,'01'),
          (457545086,'01'),
          (591128865,'01'),
       (604944340,'01'),
          (169060448, '01'),
    
          (192984271,'01'),
          (350480162,'01'),
          (1049757999,'01'),
          (475416258,'01'),
          (870807854,'01'),
          (679724118,'01'),
          (766156137,'01'),
          (1059141311,'01'),
          (974375633,'01'),
       
          (469916939,'01'),
          (380356021,'01'),
          (128218155,'01'),
          (723572933,'01'),
          (122199106,'01'),
          (500394227,'01'),
          (939229591,'01'),
          (385572376,'01'),
          (916064059,'01'),

          (548821935,'01'),
          (773689880,'01'),
          (840341609,'01'),
          (1113514416,'01'),
          (370507203,'01'),
          (981686944,'01'),
          (757550395, '01'),
          (331315159,'01'),
          (400297633,'01'),
          (907886364,'01');



  INSERT INTO infEst.aprendicesFichas (fk_numeroDocumento,fk_idDocumento,fk_numeroFicha) 
  
 values  (366726966,'01', '2049891'),
		(666822958,'01', '2049891'),
          (825274021,'01', '2049891'),
		 (471489900, '01', '2049891'),
         (448143323, '04', '2049891'),
          (544522282,'01', '2049891'),
          (353113333,'01', '2049891'),
          (586159603, '04', '2049891'),
          (1113317668, '01', '2049891'),

          (573970307,'01', '1749943'),
          (518164695, '01', '1749943'),
		(680456560,'01', '1749943'),
          (532995664, '04', '1749943'),
          (1050194361, '01', '1749943'),
          (138412913,'01', '1749943'),
          (324216846,'04', '1749943'),
          (798602132,'01', '1749943'),
          (670407704,'01', '1749943'),

          (614246803,'01', '2049551'),
		(399523709,'01', '2049551'),
          (1101267958,'04', '2049551'),
          (233204345,'01', '2049551'),
          (153834895,'01', '2049551'),
          (226994565,'04', '2049551'),
          (489219890,'01', '2049551'),
     (494866193, '01', '2049551'),
          (1110359689,'04', '2049551'),
   
        (351705393, '01', '1906669'),
          (1016845754, '01', '1906669'),
		(1061857762,'01', '1906669'),
          (945279654,'01', '1906669'),
          (883132405,'01', '1906669'),
          (693093195,'01', '1906669'),
          (356393394,'01', '1906669'),
          (510736598,'01', '1906669'),
          (711314496, '01', '1906669'),
          (498828834,'01', '1906669'),
      
          (224575503,'01', '1896339'),
          (493003882,'01', '1896339'),
          (972439006,'01', '1896339'),
      (339660078, '01', '1896339'),
          (264650343,'01', '1896339'),
          (132728666,'01', '1896339'),
          (212475563,'01', '1896339'),
          (994155291,'01', '1896339'),
          (353782209,'01', '1896339'),
          
          (1060457384,'01', '1796339'),
          (894421583,'01', '1796339'),
          (406987361,'01', '1796339'),
          (369342745,'01', '1796339'),
          (224361825,'01', '1796339'),
          (683628991,'01', '1796339'),
          (452997671,'01', '1796339'),
          (371398630,'01', '1796339'),
          (771839311,'01', '1796339'),
          
          (786499470,'01', '4566371'),
          (292670470,'01', '4566371'),
          (483045403,'01', '4566371'),
          (718295265,'01', '4566371'),
          (597555478,'01', '4566371'),
        (258392118, '01', '4566371'),
          (522474277,'01', '4566371'),
          (179509532,'01', '4566371'),
          (566106777,'01', '4566371'),
          
          (643871314,'01', '4566458'),
          (319056692,'01', '4566458'),
          (558474882,'01', '4566458'),
          (514895823,'01', '4566458'),
          (702256615,'01', '4566458'),
          (299969870,'01', '4566458'),
          (127129293,'01', '4566458'),
          (137526646,'01', '4566458'),
          (672863660,'01', '4566458'),
          
          (489024331, '01', '4566891'),
          (329249417,'01', '4566891'),
          (136991985,'01', '4566891'),
          (406789673,'01', '4566891'),
          (147885326, '01', '4566891'),
          (186738731,'01', '4566891'),
          (429849904,'01', '4566891'),
          (586160962,'01', '4566891'),
          (452198054, '01', '4566891'),

          (546182210,'01', '1963872'),
          (858125779,'01', '1963872'),
          (782507880,  '01', '1963872'),
          (495210523,'01', '1963872'),
           (287949810,'01', '1963872'),
          (933385947,'01', '1963872'),
          (614263913,'01', '1963872'),
          (936968232,'01', '1963872'),
          (826760374, '01', '1963872'),
          
          (734826524,'01', '1963863'),
          (1026453254,'01', '1963863'),
          (202579716, '01', '1963863'),
          (497698868,'01', '1963863'),
          (737502958,'01', '1963863'),
          (415485150,'01', '1963863'),
          (929195588, '01', '1963863'),
          (371797710,  '01', '1963863'),
          (779942002,'01', '1963863'),

          (233758410, '01', '1963865'),
          (934368714, '01', '1963865'),
          (807684645,'01', '1963865'),
          (897158571, '01', '1963865'),
          (512500324,'01', '1963865'),
          (223409725,'01', '1963865'),
          (230892199,'01', '1963865'),
          (670425076,'01', '1963865'),
          (564092204, '01', '1963865'),
	
          (310173863,'01', '3049891'),
          (280740951,'01', '3049891'),
          (987734799,'01', '3049891'),
          (142575597,'01', '3049891'),
          (401281007, '01', '3049891'),
          (418859802,'01', '3049891'),
          (214127042, '01', '3049891'),
          (1018411484,'01', '3049891'),
          (911561061, '01', '3049891'),

          (772667677,'01', '3049891'),
          
          (839845084,'01', '3049943'),
          (125362386,'01', '3049943'),
          (536448391,'01', '3049943'),
          (115369665, '01', '3049943'),
          (896125439,'01', '3049943'),
          (471607757,'01', '3049943'),
          (360812558,'01', '3049943'),
          (165996159,'01', '3049943'),
          (289808459,'01', '3049943'),

          (477719002,'01', '3049551'),
          (373402182,'01', '3049551'),
          (709388232,'01', '3049551'),
          (175783986, '01', '3049551'),
          (435023837,'01', '3049551'),
          (457545086,  '01', '3049551'),
          (591128865,'01', '3049551'),
       (604944340,'01', '3049551'),
          (169060448, '01', '3049551'),
          
          (192984271,'01', '9663771'),
          (350480162,'01', '9663771'),
          (1049757999, '01', '9663771'),
          (475416258,  '01', '9663771'),
          (870807854,'01', '9663771'),
          (679724118,'01', '9663771'),
          (766156137,'01', '9663771'),
          (1059141311,'01', '9663771'),
          (974375633,'01', '9663771'),

          (469916939,'01', '9663751'),
          (380356021,'01', '9663751'),
          (128218155,'01', '9663751'),
          (723572933,'01', '9663751'),
          (122199106,'01', '9663751'),
          (500394227,'01', '9663751'),
          (939229591,'01', '9663751'),
          (385572376,'01', '9663751'),
          (916064059,'01', '9663751'),

          (548821935,'01', '9663895'),
          (773689880,'01', '9663895'),
          (840341609,'01', '9663895'),
          (1113514416,'01', '9663895'),
          (370507203,'01', '9663895'),
          (981686944,'01', '9663895'),
          (757550395, '01', '9663895'),
          (331315159,'01', '9663895'),
          (400297633,'01','9663895'),
          (907886364,'01', '9663895');

  INSERT INTO infEst.vinculaciones (idVinculacion,nombreVinculacion) 
  
 values  (011,'Planta'),
         (022,'Contrato prestación de servicios'),
         (033,'Catedra');


  INSERT INTO infEst.instructores (fk_numeroDocumento,fk_idDocumento,fk_vinculaciones,fk_especialidades) 
  
 values   (479373517, '01',011,114),
          (988910798,'01',011,114),
          (715091320,'01',011,114),
          (1084549780,'01',022,114),
          (426688981,'01',022,114),
          (621195515,'01',011,114),
          (390718784,'01',033,114),
          (422809822,'01',033,114),
          (904647245, '01',011,114),
          (150138532, '01',022,114),
          (553734629,'01',033,114),
          (377373693,'01',022,114),
          (660312551, '01',011,114),
          (506822906,'01',011,115),
          (811610767,'01',022,114),
          (864887555,'01',033,116),
          (756404361,'01',022,114);
        
 
  INSERT INTO infEst.instructoresFichas (fk_numeroDocumento,fk_idDocumento,fk_numeroFicha) 
  
 values  (479373517, '01', '2049891'),
          (988910798,'01', '1749943'),
         (715091320,'01', '2049551'),
          (1084549780,'01', '1906669'),
          (426688981,'01', '1896339'),
          (621195515,'01', '1796339'),
          (390718784,'01', '4566371'),
          (422809822,'01', '4566458'),
          (904647245, '01', '4566891'),
          (150138532, '01', '1963872'),
          (553734629,'01', '1963863'),
          (377373693,'01', '1963865'),
          (660312551, '01', '3049891'),
          (506822906,'01', '3049943'),
          (811610767,'01', '3049551'),
          (864887555,'01', '9663771'),
          (756404361,'01', '9663751');

 INSERT INTO infEst.administrador (fk_numeroDocumento,fk_idDocumento) 
  
  values  (250217793,'01');





