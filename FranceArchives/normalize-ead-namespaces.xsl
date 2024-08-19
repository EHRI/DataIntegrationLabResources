<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" encoding="utf-8" />

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="*" priority="1">
        <xsl:element name="{local-name()}" namespace="urn:isbn:1-931666-22-9">
          	<xsl:namespace name="xlink" select="'http://www.w3.org/1999/xlink'"/>
            <xsl:apply-templates select="(@*|node())[not(name()='xsi:schemaLocation')]"/>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>