<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="urn:isbn:1-931666-22-9">
    <xsl:output indent="yes"/>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="/ead/eadheader/profiledesc/langusage/language/@langcode|/ead/archdesc/dsc/c01/did/langmaterial/language/@langcode">
        <xsl:attribute name="langcode">
        <xsl:choose>
        <xsl:when test="contains(., 'nl') and not(contains(., 'nld'))">
          <xsl:value-of select="replace(., 'nl', 'nld')" />
        </xsl:when>
         <xsl:when test="contains(., 'de')">
          <xsl:value-of select="replace(., 'de', 'deu')" />
        </xsl:when>
         <xsl:when test="contains(., 'en')">
          <xsl:value-of select="replace(., 'en', 'eng')" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:copy>
            <xsl:apply-templates />
          </xsl:copy>
        </xsl:otherwise>
        </xsl:choose>
       </xsl:attribute>
    </xsl:template>
</xsl:stylesheet>