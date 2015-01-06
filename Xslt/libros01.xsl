<?xml version="1.0" encoding="UTF-8"?>
<!-- etiqueta de identificaion del xml-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
	<!--definimos el namespace-->

	<xsl:template match="/">  
		<!--definimos el codigo html-->
		<html>
			<body>
				<h2>Tres libros</h2>
				<h2>Condicionales en Xsl</h2>
				<table border="1">
					<tr>
						<th>Titulo</th>
						<th>Autor</th>
					</tr>
					<xsl:for-each select="/libros/libro">
					<!--Condicionales-->
						<xsl:if test="precio=300">
							<tr bgcolor="orange">
								<td><xsl:value-of select="nombre"/></td>
								<td><xsl:value-of select="autor"/></td>
							</tr>
						</xsl:if>
						<xsl:if test="precio!=300">
							<tr>
								<td><xsl:value-of select="nombre"/></td>
								<td><xsl:value-of select="autor"/></td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
				<br/><br/>
				<h2>Condicionales en Xsl con Chosee</h2>
				<table border="1">
					<tr>
						<th>Titulo</th>
						<th>Autor</th>
					</tr>
					<xsl:for-each select="/libros/libro">
					<tr>
						<xsl:choose>
							<xsl:when test="precio=300">
								<td bgcolor="red"><xsl:value-of select="nombre"/></td>
								<td bgcolor="red"><xsl:value-of select="autor"/></td>
							</xsl:when>
							<xsl:otherwise>
								<td bgcolor="cyan"><xsl:value-of select="nombre"/></td>
								<td bgcolor="cyan"><xsl:value-of select="autor"/></td>
							</xsl:otherwise>
						</xsl:choose>
					</tr>
					</xsl:for-each>
				</table>

			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>