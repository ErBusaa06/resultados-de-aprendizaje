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
                <div class="main-title">Curso de Especialización en Inteligencia Artificial y Big Data<br/>
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
                                    La competencia general del Curso de Especialización en Inteligencia Artificial y Big Data consiste en aplicar sistemas de Inteligencia Artificial y soluciones de Big Data para mejorar la productividad y la toma de decisiones en las empresas, gestionando grandes volúmenes de datos y asegurando el cumplimiento de los principios legales y éticos.
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
                                        <li>Aplicar sistemas de Inteligencia Artificial para identificar nuevas formas de interacción en los negocios que mejoren la productividad.</li>
                                        <li>Desarrollar e implementar sistemas de Inteligencia Artificial que faciliten la toma de decisiones ágiles dentro de un negocio gestionando y explotando datos masivos.</li>
                                        <li>Gestionar la transformación digital necesaria en las organizaciones para la consecución de la eficiencia empresarial mediante el tratamiento de datos.</li>
                                        <li>Aplicar Inteligencia Artificial en funcionalidades, procesos y sistemas de decisión empresariales.</li>
                                        <li>Gestionar los distintos tipos de Inteligencia Artificial para la consecución de transformación y cambio en las empresas.</li>
                                        <li>Administrar el desarrollo de procesos automatizados que permitan la mejora de la productividad de las empresas.</li>
                                        <li>Optimizar el desarrollo de procesos autónomos empleando herramientas de Inteligencia Artificial.</li>
                                        <li>Integrar sistemas de explotación de grandes volúmenes de datos aplicando soluciones de Big Data.</li>
                                        <li>Implantar las funcionalidades, procesos y sistemas de decisiones empresariales aplicando técnicas de Big Data en ellos.</li>
                                        <li>Ejecutar el sistema de explotación de datos según las necesidades de uso y las condiciones de seguridad establecidas asegurando el cumplimiento de los principios legales y éticos.</li>
                                        <li>Configurar las herramientas que se usan para construir soluciones Big Data y de Inteligencia Artificial.</li>
                                        <li>Gestionar de manera eficiente los datos, la información y su representación para transformarlos en conocimiento.</li>
                                        <li>Cumplir la legislación vigente que regula la normativa de los medios de comunicación audiovisual y de la accesibilidad universal.</li>
                                        <li>Adaptarse a las nuevas situaciones laborales, manteniendo actualizados los conocimientos científicos, técnicos y tecnológicos relativos a su entorno profesional, gestionando su formación y los recursos existentes en el aprendizaje a lo largo de la vida y utilizando las tecnologías de la información y la comunicación.</li>
                                        <li>Resolver situaciones, problemas o contingencias con iniciativa y autonomía en el ámbito de su competencia, con creatividad, innovación y espíritu de mejora en el trabajo personal y en el de los miembros del equipo.</li>
                                        <li>Organizar y coordinar equipos de trabajo con responsabilidad, supervisando el desarrollo del mismo, manteniendo relaciones fluidas y asumiendo el liderazgo, así como aportando soluciones a los conflictos grupales que se presenten.</li>
                                        <li>Comunicarse con sus iguales, superiores, clientela y personas bajo su responsabilidad, utilizando vías eficaces de comunicación, transmitiendo la información o conocimientos adecuados y respetando la autonomía y competencia de las personas que intervienen en el ámbito de su trabajo.</li>
                                        <li>Generar entornos seguros en el desarrollo de su trabajo y el de su equipo, supervisando y aplicando los procedimientos de prevención de riesgos laborales y ambientales, de acuerdo con lo establecido por la normativa y los objetivos de la empresa.</li>
                                        <li>Supervisar y aplicar procedimientos de gestión de calidad, de accesibilidad universal y de «diseño para todas las personas», en las actividades profesionales incluidas en los procesos de producción o prestación de servicios.</li>
                                        <li>Ejercer sus derechos y cumplir con las obligaciones derivadas de su actividad profesional, de acuerdo con lo establecido en la legislación vigente, participando activamente en la vida económica, social y cultural.</li>
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
                                        <li>Caracterizar las interacciones en los negocios de las empresas y organizaciones para aplicar sistemas de Inteligencia artificial que incremente la productividad.</li>
                                        <li>Seleccionar datos relevantes de la empresa u organización para desarrollar e implementar soluciones que faciliten la toma de decisiones.</li>
                                        <li>Aplicar técnicas de tratamiento de datos para gestionar la transformación digital en las organizaciones.</li>
                                        <li>Caracterizar sistemas de la Inteligencia Artificial para implantar funcionalidades, procesos y sistemas de decisiones.</li>
                                        <li>Interpretar planes de cambio y mejora de los procesos de las empresas y organizaciones para su gestión con Inteligencia artificial.</li>
                                        <li>Caracterizar procesos de mejora de la productividad de las empresas para administrar el desarrollo de procesos automatizados.</li>
                                        <li>Aplicar herramientas de inteligencia artificial para optimizar el desarrollo de los procesos autónomos.</li>
                                        <li>Utilizar soluciones de Big Data para integrar sistemas de explotación de datos.</li>
                                        <li>Analizar y evaluar soluciones Big Data para su implantación en las funcionalidades, procesos y sistemas de decisiones.</li>
                                        <li>Determinar la documentación técnica y normativa vigente de los procedimientos de protección de datos para ejecutar el sistema de explotación de datos cumpliendo con los principios legales y éticos.</li>
                                        <li>Determinar la solución de Inteligencia Artificial y Big Data para configurar las herramientas y lenguajes específicos.</li>
                                        <li>Aplicar técnicas Big Data para gestionar los datos de la organización y obtener conocimiento a partir de ellos.</li>
                                        <li>Analizar y utilizar los recursos y oportunidades de aprendizaje relacionados con la evolución científica, tecnológica y organizativa del sector y las tecnologías de la información y la comunicación, para mantener el espíritu de actualización y adaptarse a nuevas situaciones laborales y personales.</li>
                                        <li>Desarrollar la creatividad y el espíritu de innovación para responder a los retos que se presentan en los procesos y en la organización del trabajo y de la vida personal.</li>
                                        <li>Evaluar situaciones de prevención de riesgos laborales y de protección ambiental, proponiendo y aplicando medidas de prevención personal y colectiva, de acuerdo con la normativa aplicable en los procesos de trabajo, para garantizar entornos seguros.</li>
                                        <li>Identificar y proponer las acciones profesionales necesarias, para dar respuesta a la accesibilidad universal, al «diseño para todas las personas», así como para evitar posibles sesgos de género en el desarrollo y aplicaciones de Inteligencia Artificial y Big Data.</li>
                                        <li>Identificar y aplicar parámetros de calidad en los trabajos y actividades realizados en el proceso de aprendizaje, para valorar la cultura de la evaluación y de la calidad y ser capaces de supervisar y mejorar procedimientos de gestión de calidad.</li>
                                    </ol>
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

                        <!-- Acordeón 5072 -->
                        <div class="card">
                            <div class="card-header" id="heading5072">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse5072" 
                                            aria-expanded="false" aria-controls="collapse5072">
                                        <xsl:value-of select="//Modulo[@cod='5072']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5072" class="collapse" aria-labelledby="heading5072" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='5072']/@horas_anuales"/> horas
                                    <a href="SistemasDeAprendizajeAutomatico.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 5073 -->
                        <div class="card">
                            <div class="card-header" id="heading5073">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse5073" 
                                            aria-expanded="false" aria-controls="collapse5073">
                                        <xsl:value-of select="//Modulo[@cod='5073']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5073" class="collapse" aria-labelledby="heading5073" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='5073']/@horas_anuales"/> horas
                                    <a href="ProgramacionDeInteligenciaArtificial.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 5074 -->
                        <div class="card">
                            <div class="card-header" id="heading5074">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse5074" 
                                            aria-expanded="false" aria-controls="collapse5074">
                                        <xsl:value-of select="//Modulo[@cod='5074']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5074" class="collapse" aria-labelledby="heading5074" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='5074']/@horas_anuales"/> horas
                                    <a href="SistemasDeBigData.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 5075 -->
                        <div class="card">
                            <div class="card-header" id="heading5075">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse5075" 
                                            aria-expanded="false" aria-controls="collapse5075">
                                        <xsl:value-of select="//Modulo[@cod='5075']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse5075" class="collapse" aria-labelledby="heading5075" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='5075']/@horas_anuales"/> horas
                                    <a href="BigDataAplicado.html" 
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
