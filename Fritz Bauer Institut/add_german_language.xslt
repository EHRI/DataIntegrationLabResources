<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="urn:isbn:1-931666-22-9">
    <xsl:output indent="yes"/>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="/ead/eadheader">
      	<xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <profiledesc xmlns="urn:isbn:1-931666-22-9">
              <langusage>
                <language>
                  <xsl:attribute name="langcode">deu</xsl:attribute>
                </language>
              </langusage>
            </profiledesc>
        </xsl:copy>
      	
    </xsl:template>
</xsl:stylesheet>