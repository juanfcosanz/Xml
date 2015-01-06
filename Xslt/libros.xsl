<?xml version="1.0" encoding="UTF-8"?>
<!-- etiqueta de identificaion del xml-->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
	<!--definimos el namespace-->

	<xsl:template match="/">  
		<!--definimos el codigo html-->
		<html>
			<body>
				<h2>Tres libros</h2>
				<table border="1">
					<tr>
						<th>Titulo</th>
						<th>Autor</th>
					</tr>
					<tr>
						<td><xsl:value-of select="libros/libro/nombre"/></td>
						<td><xsl:value-of select="/libros/libro/autor"/></td>
					</tr>
				</table>
				<br/><br/>
				<h2>Recorriendo el documento</h2>
				<table border="1">
					<tr>
						<th>Titulo</th>
						<th>Autor</th>
					</tr>
					<!--Recorriendo un documento XML-->
					<xsl:for-each select="/libros/libro">
						<tr>
							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="autor"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>