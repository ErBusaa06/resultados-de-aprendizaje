<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Centro FP Superior</title>
                <meta charset="UTF-8"/>
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
                <link rel="stylesheet" href="EstilosFP.css"/>
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
                            <a href="#{@nombre}">
                                <xsl:value-of select="@nombre"/>
                            </a>
                        </xsl:for-each>
                    </nav>
                </header>

                <div class="sub-title">OFERTA ACADÉMICA</div>
                <div class="main-title">Centro FP Superior – Ciclos Grado Superior</div>

                <section class="familias">
                    <xsl:for-each select="Centro_FP/Familia_Profesional">
                        <div class="familia-group">
                            <div class="familia-card" id="{@nombre}">
                                <xsl:choose>
                                    <xsl:when test="@nombre = 'Administración y Gestión'">
                                        <xsl:attribute name="style">background-image: url('../public_html/img/administracionMarketingYcomercio.png');</xsl:attribute>
                                    </xsl:when>
                                    <xsl:when test="@nombre = 'Másters FP'">
                                        <xsl:attribute name="style">background-image: url('../public_html/img/informaticayvideojuegos.png');</xsl:attribute>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:attribute name="style">background-image: url('../public_html/img/defaultImage.png');</xsl:attribute>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <h2>
                                    <xsl:value-of select="@nombre"/>
                                </h2>
                                <xsl:if test="@nombre = 'Administración y Gestión'">
                                    <p>Formación especializada en la gestión empresarial, el análisis de mercados y la planificación estratégica, con un enfoque en la optimización de procesos administrativos, comerciales y de marketing.</p>
                                </xsl:if>
                                <xsl:if test="@nombre = 'Másters FP'">
                                    <p>Formación avanzada en desarrollo de software y entornos interactivos, con enfoque en programación, diseño digital y creación de videojuegos, aplicando metodologías y tecnologías innovadoras.</p>
                                </xsl:if>
                            </div>

                            <!-- Extra Card -->
                            <xsl:if test="@nombre = 'Administración y Gestión'">
                                <xsl:for-each select="Titulo">
                                    <div class="extra-card">
                                        <a href="administracionyfinanzas.html" style="color:white; text-decoration:none;">
                                            <p>
                                                <xsl:value-of select="@nombre"/>
                                            </p>
                                        </a>
                                    </div>
                                </xsl:for-each>
                            </xsl:if>

                            <xsl:if test="@nombre = 'Másters FP'">
                                <div class="extra-card">
                                    <a href="IAyBigData.html" style="color:white; text-decoration:none;">
                                        <p>IA y Big Data</p>
                                    </a>
                                    <a href="VideojuegosyRV.html" style="color:white; text-decoration:none;">
                                        <p>Videojuegos y Realidad Virtual</p>
                                    </a>
                                </div>
                            </xsl:if>
                        </div>
                    </xsl:for-each>
                </section>

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
                        
                        <div class="footer-email" style="margin-left:auto;">
                            <img src="../public_html/img/CorreoElectronico.png" alt="Correo" style="width: 20px; height: 20px; vertical-align: middle; margin-right: 5px;"/>
                            info@fpcampuscamara.es
                        </div>
                        <div class="footer-phone" style="margin-left: auto;">
                            <img src="../public_html/img/Llamada.png" alt="Teléfono" style="width: 20px; height: 20px; vertical-align: middle; margin-right: 5px;"/>
                            954238797
                        </div>
                    </div>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
