<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Centro FP Superior</title>
                <meta charset="UTF-8"/>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
                <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
                <link rel="stylesheet" href="EstilosExtra.css"/>
                <style>
                    .custom-accordion .card {
                    border-radius: 1rem;
                    background-color: #d0e8ff;
                    border: none;
                    margin-bottom: 1rem;
                    }
                    .custom-accordion .card-header {
                    border-radius: 1rem 1rem 0 0;
                    background-color: #b3daff;
                    }
                </style>
            </head>
            <body>
                <header>
                    <style>
                        .logo {
                        height: 78px;
                        width: 218px; /* o lo que mida tu logo */
                        background-image: url('../public_html/img/LogoCampusCamaraHeader.png');
                        background-size: contain;
                        background-repeat: no-repeat;
                        background-position: center;
                        }
                    </style>
                    <div class="logo"></div>
                    <nav>
                        <xsl:for-each select="Centro_FP/Familia_Profesional">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:text>index.html#</xsl:text>
                                    <xsl:value-of select="@nombre"/>
                                </xsl:attribute>
                                <xsl:value-of select="@nombre"/>
                            </a>
                        </xsl:for-each>
                    </nav>
                </header>

                <div class="sub-title">CENTRO FP SUPERIOR DE LA CÁMARA DE COMERCIO DE SEVILLA</div>
                <div class="main-title">Curso de especialización en Desarrollo de Videojuegos y Realidad Virtual<br/>
                    –– FP Superior con Titulación Oficial Junta de Andalucía – 
                </div>

                <style>
                    .competencias {
                    background-color: #003366; /* azul oscuro */
                    color: white;
                    padding: 12px 27px;  /* más espacio arriba/abajo y a los lados */
                    border-radius: 50px; /* ovalado */
                    display: inline-block;
                    font-weight: bold;
                    font-size: 1.8em;    /* letra más grande */
                    font-family: Arial, sans-serif;
                    text-align: center;

                    position: relative;
                    top: 90px;
                    left: 300px;
                    }
                </style>
                <div class="competencias">
                    Competencias
                </div>

                <style>
                    .objetivos {
                    background-color: #003366; /* azul oscuro */
                    color: white;
                    padding: 12px 27px;  /* más espacio arriba/abajo y a los lados */
                    border-radius: 50px; /* ovalado */
                    display: inline-block;
                    font-weight: bold;
                    font-size: 1.8em;    /* letra más grande */
                    font-family: Arial, sans-serif;
                    text-align: center;

                    position: relative;
                    top: 250px;
                    left: 70px;
                    }
                </style>
                <div class="objetivos">
                    Objetivos
                </div>

                <style>
                    .modulos1º {
                    background-color: #003366; /* azul oscuro */
                    color: white;
                    padding: 12px 27px;  /* más espacio arriba/abajo y a los lados */
                    border-radius: 50px; /* ovalado */
                    display: inline-block;
                    font-weight: bold;
                    font-size: 1.8em;    /* letra más grande */
                    font-family: Arial, sans-serif;
                    text-align: center;

                    position: relative;
                    top: 330px;
                    left: -115px;
                    }
                </style>
                <div class="modulos1º">
                    Módulos
                </div>


                <!-- Acordeones Bootstrap personalizados -->
                <div class="container mt-4">
                    <div id="customAccordion" class="custom-accordion">

                        <!-- Acordeón 1 -->
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Competencia general
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#customAccordion">
                                <div class="card-body">
                                    La competencia general del Curso de Especialización en Videojuegos y Realidad Virtual consiste en diseñar y desarrollar videojuegos para diferentes dispositivos y plataformas, garantizando la experiencia del usuario, utilizando herramientas de última generación que permitan actuar en todas las fases de su desarrollo, así como aplicaciones interactivas de realidad virtual y aumentada
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 2 -->
                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                        Competencias profesionales, personales y sociales
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#customAccordion">
                                <div class="card-body">
                                    <ol type="a">
                                        <li>Determinar las necesidades actuales de la industria del videojuego teniendo en cuenta su historia y evolución.</li>
                                        <li>Identificar el público objetivo de los videojuegos de acuerdo a las categorías de los mismos.</li>
                                        <li>Generar la documentación de un videojuego.</li>
                                        <li>Establecer las etapas del proceso de creación de un videojuego, desde su concepción hasta su publicación y distribución.</li>
                                        <li>Determinar las funcionalidades de los motores de videojuegos.</li>
                                        <li>Gestionar los entornos de desarrollo adaptando su configuración en cada caso para desarrollar videojuegos y aplicaciones de realidad virtual.</li>
                                        <li>Desarrollar los fundamentos de programación avanzada orientada a videojuegos.</li>
                                        <li>Identificar los elementos fundamentales del sistema de física necesarios para la acción de un videojuego.</li>
                                        <li>Definir la interfaz del usuario de videojuegos.</li>
                                        <li>Determinar los aspectos artísticos del videojuego mediante el desarrollo de ilustraciones de arte conceptual.</li>
                                        <li>Determinar las funcionalidades de las herramientas de diseño gráfico.</li>
                                        <li>Configurar el diseño gráfico y los aspectos artísticos de los videojuegos en 2D.</li>
                                        <li>Configurar el diseño gráfico y los aspectos artísticos de los videojuegos en 3D.</li>
                                        <li>Detectar mejoras en la optimización técnica de los elementos del videojuego según la plataforma.</li>
                                        <li>Diseñar, desarrollar y evaluar videojuegos de acuerdo a la experiencia interactiva del jugador y la jugabilidad.</li>
                                        <li>Definir aspectos de adaptación interactiva del videojuego de acuerdo al perfil y naturaleza del jugador.</li>
                                        <li>Desarrollar videojuegos multijugador en red.</li>
                                        <li>Aplicar conceptos de inteligencia artificial a los videojuegos.</li>
                                        <li>Desarrollar aplicaciones de realidad virtual y aumentada.</li>
                                        <li>Desarrollar videojuegos para el aprendizaje (serious games).</li>
                                        <li>Publicar los videojuegos en las plataformas disponibles para los diferentes dispositivos.</li>
                                        <li>Desarrollar técnicas de mercadotecnia para la difusión del producto final.</li>
                                        <li>Organizar y coordinar los equipos de trabajo que participan en la creación de los videojuegos.</li>
                                        <li>Adaptarse a las nuevas situaciones laborales, manteniendo actualizados los conocimientos científicos, técnicos y tecnológicos relativos a su entorno profesional, gestionando su formación y los recursos existentes en el aprendizaje a lo largo de la vida.</li>
                                        <li>Resolver situaciones, problemas o contingencias con iniciativa y autonomía en el ámbito de su competencia, con creatividad, innovación y espíritu de mejora en el trabajo personal y en el de los miembros del equipo.</li>
                                        <li>Generar entornos seguros en el desarrollo de su trabajo y el de su equipo, supervisando y aplicando los procedimientos de prevención de riesgos laborales y ambientales, de acuerdo con lo establecido por la normativa y los objetivos de la empresa.</li>
                                        <li>Supervisar y aplicar procedimientos de gestión de calidad, de accesibilidad universal y de «diseño para todas las personas», en las actividades profesionales incluidas en los procesos de producción o prestación de servicios.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>


                        <!-- Acordeón 3 -->
                        <div class="card">
                            <div class="card-header" id="headingThree">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                        Objetivos generales
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#customAccordion">
                                <div class="card-body">
                                    <ol type="a">
                                        <li>Reconocer y analizar la historia, evolución y situación actual de la industria del videojuego para determinar las necesidades de la misma.</li>
                                        <li>Interpretar la información disponible para identificar los distintos segmentos del mercado a los que puede ir destinado cada videojuego.</li>
                                        <li>Redactar e interpretar todas las fases, roles, mecánicas, sistemas de puntuación, etcétera, para generar la documentación de diseño del videojuego.</li>
                                        <li>Comprender y definir la estructura del videojuego estableciendo las tareas de cada etapa del proceso de creación del videojuego para poder definir cada uno de los roles.</li>
                                        <li>Definir el uso y características de los motores de desarrollo de videojuegos utilizados en el mercado para determinar sus funcionalidades.</li>
                                        <li>Programar estructuras de código avanzadas en el lenguaje de programación para desarrollar los fundamentos de programación avanzada de videojuegos.</li>
                                        <li>Reconocer e integrar en el desarrollo del videojuego las funcionalidades físicas que contiene el motor de videojuego.</li>
                                        <li>Implementar los elementos del interfaz de usuario de un videojuego para crear una interacción fácil y rápida.</li>
                                        <li>Comprender y definir el arte conceptual de un videojuego para establecer las diferentes etapas de su proceso creativo.</li>
                                        <li>Definir el uso y características de las herramientas de diseño gráfico para determinar sus funcionalidades.</li>
                                        <li>Controlar las últimas herramientas de diseño gráfico, modelado y animación 2D para configurar el diseño y los aspectos artísticos de los videojuegos.</li>
                                        <li>Controlar las últimas herramientas de diseño gráfico, modelado y animación 3D para configurar el diseño y los aspectos artísticos de los videojuegos.</li>
                                        <li>Realizar pruebas, depuración y testeos para detectar mejoras en la optimización de los elementos técnicos.</li>
                                        <li>Realizar el diseño y el desarrollo de un videojuego centrado en el jugador y en la experiencia interactiva.</li>
                                        <li>Programar proyectos cliente-servidor para desarrollar videojuegos multijugador en red.</li>
                                        <li>Seleccionar conceptos básicos de inteligencia artificial para aplicarlos a los videojuegos.</li>
                                        <li>Determinar los principios fundamentales en los que se apoya la creación de aplicaciones de realidad virtual y aumentada para su desarrollo.</li>
                                        <li>Aplicar los fundamentos de los videojuegos para el aprendizaje en el desarrollo de videojuegos en realidad virtual.</li>
                                        <li>Utilizar los diferentes entornos de desarrollo para la realización de videojuegos o aplicaciones de realidad aumentada.</li>
                                        <li>Analizar los parámetros técnicos de las distintas plataformas y dispositivos existentes para publicar los videojuegos.</li>
                                        <li>Identificar los canales de difusión y técnicas de mercadotecnia del sector de los videojuegos para implementar la difusión del producto final.</li>
                                        <li>Aplicar dinámicas y técnicas de comunicación en contextos de trabajo en equipo para organizar y coordinar los grupos que participan en la creación de los videojuegos.</li>
                                        <li>Analizar y utilizar los recursos y oportunidades de aprendizaje relacionados con la evolución científica, tecnológica y organizativa del sector y las tecnologías de la información y la comunicación, para mantener el espíritu de actualización y adaptarse a nuevas situaciones laborales y personales.</li>
                                        <li>Desarrollar la creatividad y el espíritu de innovación para responder a los retos que se presentan en los procesos y organización del trabajo y de la vida personal.</li>
                                        <li>Evaluar situaciones de prevención de riesgos laborales y de protección ambiental, proponiendo y aplicando medidas de prevención personales y colectivas, de acuerdo con la normativa aplicable en los procesos de trabajo, para garantizar entornos seguros.</li>
                                        <li>Identificar y proponer las acciones profesionales necesarias para dar respuesta a la accesibilidad universal y al «diseño para todas las personas» para mejorar la experiencia interactiva y de ocio electrónico.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 5048 -->
                        <div class="card">
                            <div class="card-header" id="heading5048">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse5048" 
                                            aria-expanded="false" aria-controls="collapse5048">
                                        <xsl:value-of select="//Modulo[@cod='5048']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5048" class="collapse" aria-labelledby="heading5048" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='5048']/@horas_anuales"/> horas
                                    <a href="ProgramacionYMotoresDeVideojuegos.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 5049 -->
                        <div class="card">
                            <div class="card-header" id="heading5049">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse5049" 
                                            aria-expanded="false" aria-controls="collapse5049">
                                        <xsl:value-of select="//Modulo[@cod='5049']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5049" class="collapse" aria-labelledby="heading5049" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='5049']/@horas_anuales"/> horas
                                    <a href="DisenoGrafico2Dy3D.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 5050 -->
                        <div class="card">
                            <div class="card-header" id="heading5050">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse5050" 
                                            aria-expanded="false" aria-controls="collapse5050">
                                        <xsl:value-of select="//Modulo[@cod='5050']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5050" class="collapse" aria-labelledby="heading5050" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='5050']/@horas_anuales"/> horas
                                    <a href="ProgramacionEnRedeInteligenciaArtificial.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 5051 -->
                        <div class="card">
                            <div class="card-header" id="heading5051">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse5051" 
                                            aria-expanded="false" aria-controls="collapse5051">
                                        <xsl:value-of select="//Modulo[@cod='5051']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5051" class="collapse" aria-labelledby="heading5051" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='5051']/@horas_anuales"/> horas
                                    <a href="RealidadVirtualyRealidadAumentada.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 5052 -->
                        <div class="card">
                            <div class="card-header" id="heading5052">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse5052" 
                                            aria-expanded="false" aria-controls="collapse5052">
                                        <xsl:value-of select="//Modulo[@cod='5052']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5052" class="collapse" aria-labelledby="heading5052" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='5052']/@horas_anuales"/> horas
                                    <a href="DiseñoGestionPublicacionProduccion.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>

                <footer>
                    <div class="footer-content">
                        <div class="footer-logo">
                            <img src="../public_html/img/logoCampusCamaraFooter.png" alt="Logo pie de página"/>
                            <div class="footer-gallery" style="background-color: rgb(162, 162, 159); border-radius: 200px;">
                                <img src="../public_html/img/X.png" alt="img1"/>
                                <img src="../public_html/img/Instagram.png" alt="img2"/>
                                <img src="../public_html/img/Facebook.png" alt="img3"/>
                                <img src="../public_html/img/Youtube.png" alt="img4"/>
                            </div>
                        </div>
                        <div class="footer-email">
                            <img src="../public_html/img/CorreoElectronico.png" alt="Correo" style="width: 20px; height: 20px; vertical-align: middle; margin-right: 5px;"/>
                            info@fpcampuscamara.es
                        </div>
                        <div class="footer-phone">
                            <img src="../public_html/img/Llamada.png" alt="Teléfono" style="width: 20px; height: 20px; vertical-align: middle; margin-right: 5px;"/>
                            954238797
                        </div>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
