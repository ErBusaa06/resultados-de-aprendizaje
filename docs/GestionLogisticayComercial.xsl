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
                    <xsl:value-of select="//Modulo[@cod='0655']/@nombre" />
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
                                    Este módulo tiene como objetivo Desarrollar las capacidades para organizar y gestionar los procesos logísticos y comerciales, integrando conocimientos de las áreas comercial, financiera, contable y fiscal, aplicando la normativa vigente y técnicas de atención al cliente, con el fin de optimizar la gestión administrativa y operativa en empresas públicas o privadas.                </div>
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
                                        <li>Interrelación de áreas empresariales: Reconocer la interrelación entre las áreas comercial, financiera, contable y fiscal para gestionar los procesos de gestión empresarial de forma integrada.</li>
                                        <li>Gestión administrativa de procesos comerciales: Identificar la normativa vigente, realizar cálculos, seleccionar datos, cumplimentar documentos y reconocer las técnicas y métodos de negociación con proveedores y de asesoramiento a clientes, para realizar la gestión administrativa de los procesos comerciales.</li>
                                        <li>Atención al cliente: Reconocer las técnicas de atención al cliente/usuario, adecuándolas a cada caso y analizando los protocolos de calidad e imagen empresarial o institucional para desempeñar las actividades relacionadas.</li>
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
                                        <li>Organización y ejecución de operaciones: Organizar y ejecutar las operaciones de gestión y administración en los procesos comerciales, laborales, contables, fiscales y financieros de una empresa pública o privada, aplicando la normativa vigente y los protocolos de calidad e imagen empresarial o institucional.</li>
                                        <li>Comunicación efectiva: Desarrollar habilidades de comunicación efectiva tanto oral como escrita en el contexto profesional.</li>
                                        <li>Trabajo en equipo: Colaborar eficazmente en equipos de trabajo multidisciplinarios.</li>
                                        <li>Resolución de problemas: Aplicar técnicas de resolución de problemas en situaciones laborales.</li>
                                        <li>Adaptabilidad: Demostrar flexibilidad y adaptabilidad a los cambios en el entorno laboral.</li>
                                        <li>Gestión del tiempo: Organizar y gestionar el tiempo de manera eficiente para cumplir con los plazos establecidos.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>

                        <div id="customAccordion">

                            <!-- Acordeón RA1 -->
                            <div class="card">
                                <div class="card-header" id="heading0655-1">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0655-1" 
                                                aria-expanded="false" aria-controls="collapse0655-1">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0655-1" class="collapse" aria-labelledby="heading0655-1" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[1]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA2 -->
                            <div class="card">
                                <div class="card-header" id="heading0655-2">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0655-2" 
                                                aria-expanded="false" aria-controls="collapse0655-2">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0655-2" class="collapse" aria-labelledby="heading0655-2" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[2]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA3 -->
                            <div class="card">
                                <div class="card-header" id="heading0655-3">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0655-3" 
                                                aria-expanded="false" aria-controls="collapse0655-3">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0655-3" class="collapse" aria-labelledby="heading0655-3" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[3]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA4 -->
                            <div class="card">
                                <div class="card-header" id="heading0655-4">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0655-4" 
                                                aria-expanded="false" aria-controls="collapse0655-4">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0655-4" class="collapse" aria-labelledby="heading0655-4" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[4]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
                                            <xsl:value-of select="concat(@cod, ') ', @nombre)"/>
                                            <br/>
                                        </xsl:for-each>
                                    </div>
                                </div>
                            </div>

                            <!-- Acordeón RA5 -->
                            <div class="card">
                                <div class="card-header" id="heading0655-5">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left text-dark font-weight-bold collapsed" 
                                                type="button" data-toggle="collapse" data-target="#collapse0655-5" 
                                                aria-expanded="false" aria-controls="collapse0655-5">
                                            R.A. <xsl:value-of select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[5]/@nombre"/>
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapse0655-5" class="collapse" aria-labelledby="heading0655-5" data-parent="#customAccordion">
                                    <div class="card-body">
                                        <strong>Criterios de evaluación:</strong> 
                                        <br> </br>
                                        <xsl:for-each select="//Modulo[@cod='0655']/Resultados_de_Aprendizaje/Resultado_de_Aprendizaje[5]/Criterios_de_Evaluacion/Criterio_de_Evaluacion">
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
