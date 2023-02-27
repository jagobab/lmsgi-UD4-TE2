<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:output encoding="utf-8"/>

    <xsl:template match="reservaeventos">


<html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="teatro.xml">Teatro</a>
			<a href="restaurante.xml">Restaurante</a>
			<a href="festival.xml">Festival</a>
		</header>
		
		<main>
            <xsl:variable name="rest"  select="restaurante[nombrerestaurante='Eneko']"/>
			<a href="{$rest/informacion}" class="datos-restaurante" target="_blank"> <h1 > <xsl:value-of select="$rest/nombrerestaurante"/> - <xsl:value-of select="$rest/ciudad"/></h1></a>
            <xsl:for-each select="$rest/menu">
			    <article class="restaurante">
                <h3><xsl:value-of select="@tipo"/></h3>
                    <xsl:for-each select="plato">
                        <p><xsl:value-of select="."/></p>
                    </xsl:for-each>
			    </article>
            </xsl:for-each>
		</main>

		<footer>
			<address>&#169; 2020 desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
    </xsl:template>

</xsl:stylesheet>