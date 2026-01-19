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
                <div class="sub-title2">
                    <xsl:value-of select="//Modulo[@cod='0649']/@nombre" />
                </div>

                <style>
                    .curso1º {
                    background-color: orange; /* cambio a naranja */
                    color: white;
                    padding: 12px 27px;
                    border-radius: 50px;
                    display: inline-block;
                    font-weight: bold;
                    font-size: 1.8em;
                    font-family: Arial, sans-serif;
                    text-align: center;

                    position: relative;
                    top: 90px;
                    left: 290px;
                </style>
                <div class="curso1º">
                    1º Curso
                </div>

                <style>
                    .resultadosdeaprendizaje {
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
                    top: 370px;
                    left: 70px;
                    }
                </style>
                <div class="resultadosdeaprendizaje">
                    Resultados de <br>
                        aprendizaje               
                    </br>
                </div>
                <!-- Acordeones Bootstrap personalizados -->
                <div class="container mt-4">
                    <div id="customAccordion" class="custom-accordion">

                        <!-- Acordeón 1 -->
                        <div class="card">
                            <div class="card-header" id="headingOne">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                        Contenidos Básicos
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#customAccordion">
                                <div class="card-body"> El alumno debe saber aplicar herramientas ofimáticas y sistemas de gestión de la información con precisión, responsabilidad y sentido crítico, en la realización de tareas administrativas, garantizando eficacia y confidencialidad en el tratamiento de datos.</div>              
                            </div>
                        </div>

                        <!-- Acordeón Objetivos Generales -->
                        <div class="card">
                            <div class="card-header" id="headingObjetivosGenerales">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" 
                                            data-toggle="collapse" 
                                            data-target="#collapseObjetivosGenerales" 
                                            aria-expanded="false" 
                                            aria-controls="collapseObjetivosGenerales">
                                        Objetivos generales
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseObjetivosGenerales" class="collapse" aria-labelledby="headingObjetivosGenerales" data-parent="#customAccordion">
                                <div class="card-body">
                                    <ol type="a">
                                        <li>Identificar los componentes y funciones de los sistemas informáticos, relacionándolos con su configuración, operatividad y mantenimiento.</li>
                                        <li>Instalar y actualizar aplicaciones, interpretando documentación técnica y comprobando su funcionalidad.</li>
                                        <li>Gestionar archivos, organizando la información en el sistema de almacenamiento según criterios de eficacia y seguridad.</li>
                                        <li>Elaborar documentos mediante aplicaciones ofimáticas, aplicando criterios de calidad, eficacia y estética.</li>
                                        <li>Utilizar hojas de cálculo, integrando fórmulas, funciones y gráficos que automaticen y presenten procesos administrativos.</li>
                                        <li>Utilizar bases de datos, gestionando información de forma estructurada y segura.</li>
                                        <li>Integrar información procedente de diferentes aplicaciones ofimáticas, facilitando su interpretación y tratamiento.</li>
                                        <li>Gestionar la información mediante sistemas de correo y agenda electrónica, respetando normas de seguridad y confidencialidad.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <!-- Acordeón 2 -->
                        <div class="card">
                            <div class="card-header" id="headingTwo">
                                <h2 class="mb-0">
                                    <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                            type="button" 
                                            data-toggle="collapse" 
                                            data-target="#collapseTwo" 
                                            aria-expanded="false" 
                                            aria-controls="collapseTwo">
                                        Competencias profesionales, personales y sociales
                                    </button>
                                </h2>
                            </div>
                            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#customAccordion">
                                <div class="card-body">
                                    <ol type="a">
                                        <li>Desarrollar hábitos de organización, planificación y precisión en el trabajo ofimático.</li>
                                        <li>Fomentar la autonomía en el uso de herramientas digitales de uso administrativo.</li>
                                        <li>Aplicar criterios de confidencialidad y seguridad en la gestión de información digital.</li>
                                        <li>Mostrar actitud proactiva ante la actualización y mejora de competencias tecnológicas.</li>
                                        <li>Utilizar un lenguaje técnico adecuado en la gestión y transmisión de información digital.</li>
                                        <li>Trabajar en equipo y coordinarse eficazmente en entornos digitales compartidos.</li>
                                        <li>Demostrar responsabilidad en el mantenimiento y conservación de los equipos informáticos.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <div id="customAccordion0649">

                            <!-- Acordeón RA1 -->
                            <div class="card">
                                <div class="card-header" id="heading0649-1">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed"
                                                type="button" data-toggle="collapse" data-target="#collapse0649-1"
                                                aria-expanded="false" aria-controls="collapse0649-1">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0649-1" class="collapse" aria-labelledby="heading0649-1" data-parent="#customAccordion0649">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong>
                                        <br/>
                                        <br/>
                                        <xsl:for-each select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA2 -->
                            <div class="card">
                                <div class="card-header" id="heading0649-2">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed"
                                                type="button" data-toggle="collapse" data-target="#collapse0649-2"
                                                aria-expanded="false" aria-controls="collapse0649-2">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0649-2" class="collapse" aria-labelledby="heading0649-2" data-parent="#customAccordion0649">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong>
                                        <br/>
                                        <br/>
                                        <xsl:for-each select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA3 -->
                            <div class="card">
                                <div class="card-header" id="heading0649-3">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed"
                                                type="button" data-toggle="collapse" data-target="#collapse0649-3"
                                                aria-expanded="false" aria-controls="collapse0649-3">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0649-3" class="collapse" aria-labelledby="heading0649-3" data-parent="#customAccordion0649">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong>
                                        <br/>
                                        <br/>
                                        <xsl:for-each select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA4 -->
                            <div class="card">
                                <div class="card-header" id="heading0649-4">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed"
                                                type="button" data-toggle="collapse" data-target="#collapse0649-4"
                                                aria-expanded="false" aria-controls="collapse0649-4">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0649-4" class="collapse" aria-labelledby="heading0649-4" data-parent="#customAccordion0649">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong>
                                        <br/>
                                        <br/>
                                        <xsl:for-each select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA5 -->
                            <div class="card">
                                <div class="card-header" id="heading0649-5">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed"
                                                type="button" data-toggle="collapse" data-target="#collapse0649-5"
                                                aria-expanded="false" aria-controls="collapse0649-5">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[5]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0649-5" class="collapse" aria-labelledby="heading0649-5" data-parent="#customAccordion0649">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong>
                                        <br/>
                                        <br/>
                                        <xsl:for-each select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[5]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA6 -->
                            <div class="card">
                                <div class="card-header" id="heading0649-6">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed"
                                                type="button" data-toggle="collapse" data-target="#collapse0649-6"
                                                aria-expanded="false" aria-controls="collapse0649-6">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[6]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0649-6" class="collapse" aria-labelledby="heading0649-6" data-parent="#customAccordion0649">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong>
                                        <br/>
                                        <br/>
                                        <xsl:for-each select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[6]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA7 -->
                            <div class="card">
                                <div class="card-header" id="heading0649-7">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed"
                                                type="button" data-toggle="collapse" data-target="#collapse0649-7"
                                                aria-expanded="false" aria-controls="collapse0649-7">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[7]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0649-7" class="collapse" aria-labelledby="heading0649-7" data-parent="#customAccordion0649">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong>
                                        <br/>
                                        <br/>
                                        <xsl:for-each select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[7]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA8 -->
                            <div class="card">
                                <div class="card-header" id="heading0649-8">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed"
                                                type="button" data-toggle="collapse" data-target="#collapse0649-8"
                                                aria-expanded="false" aria-controls="collapse0649-8">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[8]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0649-8" class="collapse" aria-labelledby="heading0649-8" data-parent="#customAccordion0649">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong>
                                        <br/>
                                        <br/>
                                        <xsl:for-each select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[8]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>
                            <!-- Acordeón RA9 -->
                            <div class="card">
                                <div class="card-header" id="heading0649-9">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed"
                                                type="button" data-toggle="collapse" data-target="#collapse0649-9"
                                                aria-expanded="false" aria-controls="collapse0649-9">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[9]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0649-9" class="collapse" aria-labelledby="heading0649-9" data-parent="#customAccordion0649">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong>
                                        <br/>
                                        <br/>
                                        <xsl:for-each select="//Modulo[@cod='0649']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[9]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
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
