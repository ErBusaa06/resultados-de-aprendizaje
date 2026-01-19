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
                    <xsl:value-of select="//Modulo[@cod='0656']/@nombre" />
                </div>

                <style>
                    .curso2º {
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
                <div class="curso2º">
                    2º Curso
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
                                <div class="card-body">
                                    Desarrollar en el alumnado la capacidad para planificar, organizar, gestionar y administrar una empresa en un entorno simulado que reproduce fielmente las condiciones del mercado real. Esto incluye la integración de conocimientos multidisciplinares en áreas como la administración, finanzas, comercialización y recursos humanos, así como la aplicación práctica de herramientas informáticas especializadas en gestión empresarial. Además, se fomenta el desarrollo de habilidades para la toma de decisiones estratégicas, el trabajo en equipo, la comunicación efectiva y la adaptación a cambios y situaciones imprevistas, garantizando así una formación integral orientada a la preparación para el mundo laboral y la iniciativa emprendedora. </div>
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
                                        <li>Simular la creación y gestión de una empresa desde la concepción hasta la puesta en marcha, incluyendo la elaboración de un plan de empresa.</li>
                                        <li>Gestionar las áreas funcionales de la empresa (administración, finanzas, comercialización, recursos humanos) en un entorno simulado.</li>
                                        <li>Aplicar herramientas informáticas para la gestión administrativa y financiera, usando programas específicos.</li>
                                        <li>Fomentar el trabajo en equipo y la toma de decisiones en situaciones empresariales reales simuladas.</li>
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
                                        <li>Elaborar y gestionar documentos empresariales (facturas, albaranes, notas de pedido, etc.).</li>
                                        <li>Utilizar aplicaciones informáticas de gestión empresarial para administrar recursos y procesos.</li>
                                        <li>Gestionar la información empresarial asegurando la satisfacción del cliente y cumpliendo normativas de prevención de riesgos laborales y protección ambiental.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <div id="customAccordion">

                            <!-- Acordeón RA1 -->
                            <div class="card">
                                <div class="card-header" id="heading0656-1">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0656-1" 
                                                aria-expanded="false" aria-controls="collapse0656-1">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0656-1" class="collapse" aria-labelledby="heading0656-1" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA2 -->
                            <div class="card">
                                <div class="card-header" id="heading0656-2">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0656-2" 
                                                aria-expanded="false" aria-controls="collapse0656-2">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0656-2" class="collapse" aria-labelledby="heading0656-2" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA3 -->
                            <div class="card">
                                <div class="card-header" id="heading0656-3">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0656-3" 
                                                aria-expanded="false" aria-controls="collapse0656-3">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0656-3" class="collapse" aria-labelledby="heading0656-3" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA4 -->
                            <div class="card">
                                <div class="card-header" id="heading0656-4">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0656-4" 
                                                aria-expanded="false" aria-controls="collapse0656-4">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0656-4" class="collapse" aria-labelledby="heading0656-4" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA5 -->
                            <div class="card">
                                <div class="card-header" id="heading0656-5">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0656-5" 
                                                aria-expanded="false" aria-controls="collapse0656-5">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[5]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0656-5" class="collapse" aria-labelledby="heading0656-5" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[5]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA6 -->
                            <div class="card">
                                <div class="card-header" id="heading0656-6">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0656-6" 
                                                aria-expanded="false" aria-controls="collapse0656-6">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[6]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0656-6" class="collapse" aria-labelledby="heading0656-6" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0656']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[6]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
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
