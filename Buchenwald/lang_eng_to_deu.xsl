<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="http://ead3.archivists.org/schema/" xmlns="http://ead3.archivists.org/schema/">
    <xsl:output indent="yes"/>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="/ead/control/languagedeclaration/language">
      	<language langcode="deu">Deutsch</language>
    </xsl:template>
</xsl:stylesheet>