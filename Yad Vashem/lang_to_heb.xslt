<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:isbn:1-931666-22-9" xpath-default-namespace="urn:isbn:1-931666-22-9" xmlns:xlink="http://www.w3.org/1999/xlink">
  <xsl:output method="xml" indent="yes"/>
  
   <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  
  <xsl:template match="//profiledesc/langusage/language">
    <language langcode="heb">Hebrew</language>
  </xsl:template>
  
  <xsl:template match="//did/materialspec/extptr">
    <extptr xmlns:xlink="http://www.w3.org/1999/xlink"
                    xlink:type="simple">
     	<xsl:attribute name="href" namespace="http://www.w3.org/1999/xlink">
          	<xsl:value-of select="replace(./@xlink:href, '/en/', '/he/')" />
        </xsl:attribute>
     </extptr>
  </xsl:template>
  
</xsl:stylesheet>