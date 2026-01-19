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
                <div class="sub-title2">
                    <xsl:value-of select="//Modulo[@cod='5075']/@nombre" />
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
                                <div class="card-body">
                                    El módulo desarrolla la capacidad para analizar y procesar grandes volúmenes de datos, interpretar información compleja y utilizar tecnologías avanzadas para mejorar la toma de decisiones. Además, fomenta el pensamiento crítico, la resolución de problemas y el trabajo en equipo en entornos digitales, fortaleciendo habilidades comunicativas y éticas en el uso de la información.
                                </div>
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
                                        <li>Analizar y comprender las necesidades empresariales para aplicar técnicas de Big Data que mejoren la gestión y el rendimiento organizacional.</li>
                                        <li>Seleccionar, preparar y procesar grandes volúmenes de datos relevantes para extraer información valiosa en entornos empresariales.</li>
                                        <li>Aplicar herramientas y metodologías de Big Data para automatizar procesos y optimizar la toma de decisiones.</li>
                                        <li>Interpretar planes estratégicos que incorporen soluciones de Big Data para la transformación digital de las organizaciones.</li>
                                        <li>Evaluar y gestionar proyectos de Big Data orientados a la mejora continua y la innovación en la empresa.</li>
                                        <li>Promover la cultura de datos y la innovación tecnológica en el ámbito empresarial mediante técnicas avanzadas de Big Data.</li>
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
                                        <li>Implementar soluciones de Big Data para optimizar procesos y análisis en la empresa.</li>
                                        <li>Gestionar grandes volúmenes de datos para facilitar decisiones rápidas y basadas en información precisa.</li>
                                        <li>Trabajar en equipo multidisciplinar para diseñar e integrar sistemas Big Data adaptados a necesidades específicas.</li>
                                        <li>Adaptarse a las tecnologías emergentes y liderar procesos de transformación digital con base en datos masivos.</li>
                                        <li>Comunicar de forma clara y efectiva los resultados y hallazgos derivados de análisis de Big Data.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <div id="customAccordion">

                            <!-- Acordeón RA1 -->
                            <div class="card">
                                <div class="card-header" id="heading5075-1">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse5075-1" 
                                                aria-expanded="false" aria-controls="collapse5075-1">
                                            R.A. <xsl:value-of select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse5075-1" class="collapse" aria-labelledby="heading5075-1" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>
                            <!-- Acordeón RA2 -->
                            <div class="card">
                                <div class="card-header" id="heading5075-2">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse5075-2" 
                                                aria-expanded="false" aria-controls="collapse5075-2">
                                            R.A. <xsl:value-of select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse5075-2" class="collapse" aria-labelledby="heading5075-2" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA3 -->
                            <div class="card">
                                <div class="card-header" id="heading5075-3">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse5075-3" 
                                                aria-expanded="false" aria-controls="collapse5075-3">
                                            R.A. <xsl:value-of select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse5075-3" class="collapse" aria-labelledby="heading5075-3" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA4 -->
                            <div class="card">
                                <div class="card-header" id="heading5075-4">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse5075-4" 
                                                aria-expanded="false" aria-controls="collapse5075-4">
                                            R.A. <xsl:value-of select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse5075-4" class="collapse" aria-labelledby="heading5075-4" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA5 -->
                            <div class="card">
                                <div class="card-header" id="heading5075-5">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse5075-5" 
                                                aria-expanded="false" aria-controls="collapse5075-5">
                                            R.A. <xsl:value-of select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[5]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse5075-5" class="collapse" aria-labelledby="heading5075-5" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='5075']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[5]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
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
