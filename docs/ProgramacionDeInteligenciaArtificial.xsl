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
                    <xsl:value-of select="//Modulo[@cod='5073']/@nombre" />
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
                                    Los contenidos básicos de este módulo son diseñar, desarrollar y aplicar soluciones de programación basadas en técnicas y algoritmos de inteligencia artificial, que permitan la automatización inteligente, la mejora en la toma de decisiones y la optimización de procesos en entornos tecnológicos, garantizando la calidad, eficiencia y adaptabilidad de las soluciones implementadas.

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
                                        <li>Caracterizar las interacciones en los negocios de las empresas y organizaciones para aplicar sistemas de Inteligencia Artificial que incrementen la productividad.</li>
                                        <li>Seleccionar datos relevantes de la empresa u organización para desarrollar e implementar soluciones que faciliten la toma de decisiones.</li>
                                        <li>Aplicar técnicas de tratamiento de datos para gestionar la transformación digital en las organizaciones.</li>
                                        <li>Caracterizar sistemas de Inteligencia Artificial para implantar funcionalidades, procesos y sistemas de decisiones.</li>
                                        <li>Interpretar planes de cambio y mejora de los procesos de las empresas y organizaciones para su gestión con Inteligencia Artificial.</li>
                                        <li>Caracterizar procesos de mejora de la productividad de las empresas para administrar el desarrollo de procesos automatizados.</li>
                                        <li>Aplicar herramientas de Inteligencia Artificial para optimizar el desarrollo de los procesos autónomos.</li>
                                        <li>Utilizar soluciones de Big Data para integrar sistemas de explotación de datos.</li>
                                        <li>Analizar y evaluar soluciones de Big Data para su implantación en las funcionalidades, procesos y sistemas de decisiones.</li>
                                        <li>Determinar la documentación técnica y normativa vigente de los procedimientos de protección de datos para ejecutar el sistema de explotación de datos cumpliendo con los principios legales y éticos.</li>
                                        <li>Determinar la solución de Inteligencia Artificial y Big Data para configurar las herramientas y lenguajes específicos.</li>
                                        <li>Aplicar técnicas de Big Data para gestionar los datos de la organización y obtener conocimiento a partir de ellos.</li>
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
                                        <li>Aplicar sistemas de Inteligencia Artificial para identificar nuevas formas de interacción en los negocios que mejoren la productividad.</li>
                                        <li>Desarrollar e implementar sistemas de Inteligencia Artificial que faciliten la toma de decisiones ágiles dentro de un negocio gestionando y explotando datos masivos.</li>
                                        <li>Gestionar la transformación digital necesaria en las organizaciones para la consecución de la eficiencia empresarial mediante el tratamiento de datos.</li>
                                        <li>Aplicar Inteligencia Artificial en funcionalidades, procesos y sistemas de decisión empresariales.</li>
                                        <li>Gestionar los distintos tipos de Inteligencia Artificial para la consecución de transformación y cambio en las empresas.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <div id="customAccordion">

                            <!-- Acordeón RA1 -->
                            <div class="card">
                                <div class="card-header" id="heading5073-1">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse5073-1" 
                                                aria-expanded="false" aria-controls="collapse5073-1">
                                            R.A. <xsl:value-of select="//Modulo[@cod='5073']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse5073-1" class="collapse" aria-labelledby="heading5073-1" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='5073']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>
                            <!-- Acordeón RA2 -->
                            <div class="card">
                                <div class="card-header" id="heading5073-2">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse5073-2" 
                                                aria-expanded="false" aria-controls="collapse5073-2">
                                            R.A. <xsl:value-of select="//Modulo[@cod='5073']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse5073-2" class="collapse" aria-labelledby="heading5073-2" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='5073']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA3 -->
                            <div class="card">
                                <div class="card-header" id="heading5073-3">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse5073-3" 
                                                aria-expanded="false" aria-controls="collapse5073-3">
                                            R.A. <xsl:value-of select="//Modulo[@cod='5073']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse5073-3" class="collapse" aria-labelledby="heading5073-3" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='5073']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA4 -->
                            <div class="card">
                                <div class="card-header" id="heading5073-4">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse5073-4" 
                                                aria-expanded="false" aria-controls="collapse5073-4">
                                            R.A. <xsl:value-of select="//Modulo[@cod='5073']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse5073-4" class="collapse" aria-labelledby="heading5073-4" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='5073']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
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
