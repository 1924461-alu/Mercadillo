<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes" encoding="UTF-8"/>

<xsl:template match="/">
<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <title>Inventario</title>
    <link rel="stylesheet" href="style.css"/>
</head>
<body class="inventario-body">

  <header class="cabecera">
    <h1>Inventario del mercadillo</h1>
    <a class="volver" href="index.html">Volver al inicio</a>
  </header>

  <section class="contenedor-tarjetas">
    <xsl:for-each select="inventario/item">
      <div class="tarjeta">
        <h2><xsl:value-of select="articulo"/></h2>

        <p class="info">
          <strong>Categoría:</strong>
          <xsl:value-of select="categoria"/>
        </p>

        <p class="info">
          <strong>Estado:</strong>
          <xsl:value-of select="estado"/>
        </p>

        <p class="info">
          <strong>ID:</strong>
          <xsl:value-of select="id"/>
        </p>

        <div class="propietario">
          <xsl:value-of select="propietario/nombre"/> -
          <xsl:value-of select="propietario/curso"/>
        </div>

        <div class="qr">
          <img alt="QR del producto">
            <xsl:attribute name="src">https://api.qrserver.com/v1/create-qr-code/?size=120x120&amp;data=<xsl:value-of select="id"/></xsl:attribute>
          </img>
        </div>
      </div>
    </xsl:for-each>
  </section>

</body>
</html>
</xsl:template>
</xsl:stylesheet>
