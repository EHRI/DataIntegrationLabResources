<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="urn:isbn:1-931666-22-9" xmlns="urn:isbn:1-931666-22-9">
  <xsl:output method="xml" indent="yes"/>
  
   <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  
  
  <xsl:template match="/ead/eadheader/profiledesc/langusage/language">
    <language langcode="eng" />
  </xsl:template>
  

</xsl:stylesheet>