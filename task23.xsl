<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>

<xsl:template match="/">
	<xsl:for-each select="//book">
		<xsl:value-of select="string(./title)"/>
		<xsl:if test="number(./price) > 30">
			<xsl:text> &#62;30 </xsl:text>	
		</xsl:if>
		<xsl:if test="number(./price) < 30">
			<xsl:text> &#60;30 </xsl:text>	
		</xsl:if>
		<xsl:if test="number(./price) = 30">
			<xsl:text> &#61;30 </xsl:text>	
		</xsl:if>
		<xsl:if test="position() != last()">
			<xsl:text>&#13;</xsl:text>	
		</xsl:if>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>