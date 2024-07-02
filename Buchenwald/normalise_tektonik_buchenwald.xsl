<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xpath-default-namespace="urn:isbn:1-931666-22-9" xmlns="urn:isbn:1-931666-22-9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  	
  	<xsl:template match="did[not(unitid)]">
        <xsl:copy>
          	<unitid><xsl:value-of select="../@id" /></unitid>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="/ead/eadheader/profiledesc">
      <xsl:copy>
          <xsl:apply-templates select="node()|@*"/>
          <langusage>
                  <language>
                    <xsl:attribute name="langcode">deu</xsl:attribute>
                  </language>
        	</langusage>
      </xsl:copy>
    </xsl:template>
</xsl:stylesheet>