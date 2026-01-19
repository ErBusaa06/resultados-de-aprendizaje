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
                <div class="main-title">Grado Superior de Administración y Finanzas<br/>
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
                    left: -130px;
                    }
                </style>
                <div class="modulos1º">
                    Módulos 1º
                </div>

                <style>
                    .modulos2º {
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
                    top: 1110px;
                    left: -330px;
                    }
                </style>
                <div class="modulos2º">
                    Módulos 2º
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
                                    La competencia general de este título consiste en organizar y ejecutar las operaciones de gestión y
                                    administración en los procesos comerciales, laborales, contables, fiscales y financieros de una empresa
                                    pública o privada, aplicando la normativa vigente y los protocolos de gestión de calidad, gestionando
                                    la información, asegurando la satisfacción del cliente y/o usuario y actuando según las normas de prevención de riesgos laborales y protección medioambiental.
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
                                        <li>Tramitar documentos o comunicaciones internas o externas en los circuitos de información de la empresa.</li>
                                        <li>Elaborar documentos y comunicaciones a partir de órdenes recibidas, información obtenida y/o necesidades detectadas.</li>
                                        <li>Detectar necesidades administrativas o de gestión de la empresa de diversos tipos, a partir del análisis de la información disponible y del entorno.</li>
                                        <li>Proponer líneas de actuación encaminadas a mejorar la eficiencia de los procesos administrativos en los que interviene.</li>
                                        <li>Clasificar, registrar y archivar comunicaciones y documentos según las técnicas apropiadas y los parámetros establecidos en la empresa.</li>
                                        <li>Gestionar los procesos de tramitación administrativa empresarial en relación a las áreas comercial, financiera, contable y fiscal, con una visión integradora de las mismas.</li>
                                        <li>Realizar la gestión contable y fiscal de la empresa, según los procesos y procedimientos administrativos, aplicando la normativa vigente y en condiciones de seguridad y calidad.</li>
                                        <li>Supervisar la gestión de tesorería, la captación de recursos financieros y el estudio de viabilidad de proyectos de inversión, siguiendo las normas y protocolos establecidos.</li>
                                        <li>Aplicar los procesos administrativos establecidos en la selección, contratación, formación y desarrollo de los Recursos Humanos, ajustándose a la normativa vigente y a la política empresarial.</li>
                                        <li>Organizar y supervisar la gestión administrativa de personal de la empresa, ajustándose a la normativa laboral vigente y a los protocolos establecidos.</li>
                                        <li>Realizar la gestión administrativa de los procesos comerciales, llevando a cabo las tareas de documentación y las actividades de negociación con proveedores, y de asesoramiento y relación con el cliente.</li>
                                        <li>Atender a los clientes/usuarios en el ámbito administrativo y comercial asegurando los niveles de calidad establecidos y ajustándose a criterios éticos y de imagen de la empresa/institución.</li>
                                        <li>Tramitar y realizar la gestión administrativa en la presentación de documentos en diferentes organismos y administraciones públicas, en plazo y forma requeridos.</li>
                                        <li>Adaptarse a las nuevas situaciones laborales, manteniendo actualizados los conocimientos científicos, técnicos y tecnológicos relativos a su entorno profesional, gestionando su formación y los recursos existentes en el aprendizaje a lo largo de la vida y utilizando las tecnologías de la información y la comunicación.</li>
                                        <li>Resolver situaciones, problemas o contingencias con iniciativa y autonomía en el ámbito de su competencia, con creatividad, innovación y espíritu de mejora en el trabajo personal y en el de los miembros del equipo.</li>
                                        <li>Organizar y coordinar equipos de trabajo con responsabilidad, supervisando el desarrollo del mismo, manteniendo relaciones fluidas y asumiendo el liderazgo, así como aportando soluciones a los conflictos grupales que se presenten.</li>
                                        <li>Comunicarse con sus iguales, superiores, clientes y personas bajo su responsabilidad, utilizando vías eficaces de comunicación, transmitiendo la información o conocimientos adecuados y respetando la autonomía y competencia de las personas que intervienen en el ámbito de su trabajo.</li>
                                        <li>Generar entornos seguros en el desarrollo de su trabajo y el de su equipo, supervisando y aplicando los procedimientos de prevención de riesgos laborales y ambientales, de acuerdo con lo establecido por la normativa y los objetivos de la empresa.</li>
                                        <li>Supervisar y aplicar procedimientos de gestión de calidad, de accesibilidad universal y de “diseño para todos”, en las actividades profesionales incluidas en los procesos de producción o prestación de servicios.</li>
                                        <li>Realizar la gestión básica para la creación y funcionamiento de una pequeña empresa y tener iniciativa en su actividad profesional con sentido de la responsabilidad social.</li>
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
                                        <li>Analizar y confeccionar los documentos o comunicaciones que se utilizan en la empresa, identificando la tipología de los mismos y su finalidad, para gestionarlos.</li>
                                        <li>Analizar los documentos o comunicaciones que se utilizan en la empresa reconociendo su estructura, elementos y características para elaborarlos.</li>
                                        <li>Identificar y seleccionar las expresiones de lengua inglesa, propias de la empresa, para elaborar documentos y comunicaciones.</li>
                                        <li>Analizar las posibilidades de las aplicaciones y equipos informáticos, relacionándolas con su empleo más eficaz en el tratamiento de la información para elaborar documentos y comunicaciones.</li>
                                        <li>Analizar la información disponible para detectar necesidades relacionadas con la gestión empresarial.</li>
                                        <li>Organizar las tareas administrativas de las áreas funcionales de la empresa para proponer líneas de actuación y mejora.</li>
                                        <li>Identificar las técnicas y parámetros que determinan las empresas para clasificar, registrar y archivar comunicaciones y documentos.</li>
                                        <li>Reconocer la interrelación entre las áreas comercial, financiera, contable y fiscal para gestionar los procesos de gestión empresarial de forma integrada.</li>
                                        <li>Interpretar la normativa y metodología aplicable para realizar la gestión contable y fiscal.</li>
                                        <li>Elaborar informes sobre los parámetros de viabilidad de una empresa, reconocer los productos financieros y los proveedores de los mismos, y analizar los métodos de cálculo financieros para supervisar la gestión de tesorería, la captación de recursos financieros y el estudio de viabilidad de proyectos de inversión.</li>
                                        <li>Preparar la documentación así como las actuaciones que se deben desarrollar, interpretando la política de la empresa para aplicar los procesos administrativos establecidos en la selección, contratación, formación y desarrollo de los recursos humanos.</li>
                                        <li>Reconocer la normativa legal, las técnicas asociadas y los protocolos relacionados con el departamento de recursos humanos, analizando la problemática laboral y la documentación derivada, para organizar y supervisar la gestión administrativa del personal de la empresa.</li>
                                        <li>Identificar la normativa vigente, realizar cálculos, seleccionar datos, cumplimentar documentos y reconocer las técnicas y procedimientos de negociación con proveedores y de asesoramiento a clientes, para realizar la gestión administrativa de los procesos comerciales.</li>
                                        <li>Reconocer las técnicas de atención al cliente/usuario, adecuándolas a cada caso y analizando los protocolos de calidad e imagen empresarial o institucional para desempeñar las actividades relacionadas.</li>
                                        <li>Identificar modelos, plazos y requisitos para tramitar y realizar la gestión administrativa en la presentación de documentos en organismos y administraciones públicas.</li>
                                        <li>Analizar y utilizar los recursos y oportunidades de aprendizaje relacionados con la evolución científica, tecnológica y organizativa del sector y las tecnologías de la información y la comunicación, para mantener el espíritu de actualización y adaptarse a nuevas situaciones laborales y personales.</li>
                                        <li>Desarrollar la creatividad y el espíritu de innovación para responder a los retos que se presentan en los procesos y en la organización del trabajo y de la vida personal.</li>
                                        <li>Tomar decisiones de forma fundamentada, analizando las variables implicadas, integrando saberes de distinto ámbito y aceptando los riesgos y la posibilidad de equivocación en las mismas, para afrontar y resolver distintas situaciones, problemas o contingencias.</li>
                                        <li>Desarrollar técnicas de liderazgo, motivación, supervisión y comunicación en contextos de trabajo en grupo, para facilitar la organización y coordinación de equipos de trabajo.</li>
                                        <li>Aplicar estrategias y técnicas de comunicación, adaptándose a los contenidos que se van a transmitir, a la finalidad y a las características de los receptores, para asegurar la eficacia en los procesos de comunicación.</li>
                                        <li>Evaluar situaciones de prevención de riesgos laborales y de protección ambiental, proponiendo y aplicando medidas de prevención personales y colectivas, de acuerdo con la normativa aplicable en los procesos de trabajo, para garantizar entornos seguros.</li>
                                        <li>Identificar y proponer las acciones profesionales necesarias, para dar respuesta a la accesibilidad universal y al “diseño para todos”.</li>
                                        <li>Identificar y aplicar parámetros de calidad en los trabajos y actividades realizados en el proceso de aprendizaje, para valorar la cultura de la evaluación y de la calidad y ser capaces de supervisar y mejorar procedimientos de gestión de calidad.</li>
                                        <li>Utilizar procedimientos relacionados con la cultura emprendedora, empresarial y de iniciativa en Administración y Gestión profesional, para realizar la gestión básica de una pequeña empresa o emprender un trabajo.</li>
                                        <li>Reconocer sus derechos y deberes como agente activo en la sociedad, teniendo en cuenta el marco legal que regula las condiciones sociales y laborales, para participar como ciudadano democrático.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
            
                        <!-- Acordeón 0179 -->
                        <div class="card">
                            <div class="card-header" id="heading0179">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0179" 
                                            aria-expanded="false" aria-controls="collapse0179">
                                        <xsl:value-of select="//Modulo[@cod='0179']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0179" class="collapse" aria-labelledby="heading0179" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0179']/@horas_anuales"/> horas
                                    <a href="InglesProfesionalGS.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0647 -->
                        <div class="card">
                            <div class="card-header" id="heading0647">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0647" 
                                            aria-expanded="false" aria-controls="collapse0647">
                                        <xsl:value-of select="//Modulo[@cod='0647']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0647" class="collapse" aria-labelledby="heading0647" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0647']/@horas_anuales"/> horas
                                    <a href="GestionDocumentacionJurEmp.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0648 -->
                        <div class="card">
                            <div class="card-header" id="heading0648">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0648" 
                                            aria-expanded="false" aria-controls="collapse0648">
                                        <xsl:value-of select="//Modulo[@cod='0648']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0648" class="collapse" aria-labelledby="heading0648" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0648']/@horas_anuales"/> horas
                                    <a href="RHyResponsabilidadSocialCorporativa.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0649 -->
                        <div class="card">
                            <div class="card-header" id="heading0649">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0649" 
                                            aria-expanded="false" aria-controls="collapse0649">
                                        <xsl:value-of select="//Modulo[@cod='0649']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0649" class="collapse" aria-labelledby="heading0649" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0649']/@horas_anuales"/> horas
                                    <a href="OfimaticaYProcesoDeLaInformacion.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0650 -->
                        <div class="card">
                            <div class="card-header" id="heading0650">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0650" 
                                            aria-expanded="false" aria-controls="collapse0650">
                                        <xsl:value-of select="//Modulo[@cod='0650']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0650" class="collapse" aria-labelledby="heading0650" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0650']/@horas_anuales"/> horas
                                    <a href="ProcesoIntegralActividadComercial.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0651 -->
                        <div class="card">
                            <div class="card-header" id="heading0651">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0651" 
                                            aria-expanded="false" aria-controls="collapse0651">
                                        <xsl:value-of select="//Modulo[@cod='0651']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0651" class="collapse" aria-labelledby="heading0651" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0651']/@horas_anuales"/> horas
                                    <a href="ComunicacionyAtencionAlCliente.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0653 -->
                        <div class="card">
                            <div class="card-header" id="heading0653">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0653" 
                                            aria-expanded="false" aria-controls="collapse0653">
                                        <xsl:value-of select="//Modulo[@cod='0653']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0653" class="collapse" aria-labelledby="heading0653" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0653']/@horas_anuales"/> horas
                                    <a href="GestionFinanciera.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 1665 -->
                        <div class="card">
                            <div class="card-header" id="heading1665">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse1665" 
                                            aria-expanded="false" aria-controls="collapse1665">
                                        <xsl:value-of select="//Modulo[@cod='1665']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse1665" class="collapse" aria-labelledby="heading1665" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='1665']/@horas_anuales"/> horas
                                    <a href="DAALSP.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 1708 -->
                        <div class="card">
                            <div class="card-header" id="heading1708">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse1708" 
                                            aria-expanded="false" aria-controls="collapse1708">
                                        <xsl:value-of select="//Modulo[@cod='1708']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse1708" class="collapse" aria-labelledby="heading1708" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='1708']/@horas_anuales"/> horas
                                    <a href="SAALSP.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 1709 -->
                        <div class="card">
                            <div class="card-header" id="heading1709">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse1709" 
                                            aria-expanded="false" aria-controls="collapse1709">
                                        <xsl:value-of select="//Modulo[@cod='1709']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse1709" class="collapse" aria-labelledby="heading1709" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='1709']/@horas_anuales"/> horas
                                    <a href="IPE1.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0655 -->
                        <div class="card">
                            <div class="card-header" id="heading0655">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0655" 
                                            aria-expanded="false" aria-controls="collapse0655">
                                        <xsl:value-of select="//Modulo[@cod='0655']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0655" class="collapse" aria-labelledby="heading0655" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0655']/@horas_anuales"/> horas
                                    <a href="GestionLogisticayComercial.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0656 -->
                        <div class="card">
                            <div class="card-header" id="heading0656">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0656" 
                                            aria-expanded="false" aria-controls="collapse0656">
                                        <xsl:value-of select="//Modulo[@cod='0656']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0656" class="collapse" aria-labelledby="heading0656" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0656']/@horas_anuales"/> horas
                                    <a href="SimulacionEmpresarial.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0657 -->
                        <div class="card">
                            <div class="card-header" id="heading0657">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0657" 
                                            aria-expanded="false" aria-controls="collapse0657">
                                        <xsl:value-of select="//Modulo[@cod='0657']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0657" class="collapse" aria-labelledby="heading0657" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0657']/@horas_anuales"/> horas
                                    <a href="ProyectoIntermodularDeAYF.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 1710 -->
                        <div class="card">
                            <div class="card-header" id="heading1710">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse1710" 
                                            aria-expanded="false" aria-controls="collapse1710">
                                        <xsl:value-of select="//Modulo[@cod='1710']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse1710" class="collapse" aria-labelledby="heading1710" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='1710']/@horas_anuales"/> horas
                                    <a href="IPE2.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0660 -->
                        <div class="card">
                            <div class="card-header" id="heading0660">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0660" 
                                            aria-expanded="false" aria-controls="collapse0660">
                                        <xsl:value-of select="//Modulo[@cod='0660']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0660" class="collapse" aria-labelledby="heading0660" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0660']/@horas_anuales"/> horas
                                    <a href="FormacionEnCentrosDeTrabajo.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0654 -->
                        <div class="card">
                            <div class="card-header" id="heading0654">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0654" 
                                            aria-expanded="false" aria-controls="collapse0654">
                                        <xsl:value-of select="//Modulo[@cod='0654']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0654" class="collapse" aria-labelledby="heading0654" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0654']/@horas_anuales"/> horas
                                    <a href="ContabilidadyFiscalidad.html" 
                                       style="display: block; text-align: right; color: #207392; text-decoration: underline; margin-top: 10px;">
                                        Más información
                                    </a>
                                </div>
                            </div>
                        </div>

                        <!-- Acordeón 0652 -->
                        <div class="card">
                            <div class="card-header" id="heading0652">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" data-toggle="collapse" data-target="#collapse0652" 
                                            aria-expanded="false" aria-controls="collapse0652">
                                        <xsl:value-of select="//Modulo[@cod='0652']/@nombre"/>
                                    </button>
                                </h2>
                            </div>
                            <div id="collapse0652" class="collapse" aria-labelledby="heading0652" data-parent="#customAccordion">
                                <div class="card-body">
                                    Duración: <xsl:value-of select="//Modulo[@cod='0652']/@horas_anuales"/> horas
                                    <a href="GestionDeRecursosHumanos.html" 
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
