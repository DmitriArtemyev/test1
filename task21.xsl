<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet type="text" version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
<xsl:for-each select="//book">
<xsl:sort select="price"/>
<xsl:value-of select="string(./title)"/>,
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>