<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xpath-default-namespace="urn:isbn:1-931666-22-9" xmlns="urn:isbn:1-931666-22-9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  	
  	
  	<xsl:template match="archdesc">
        <xsl:apply-templates select="dsc/c"/>
    </xsl:template>
  
  <xsl:template match="dsc/c">
    <archdesc>
      <xsl:if test="@level">
      <xsl:attribute name="level">
        <xsl:value-of select="@level" />
      </xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="@*|node()"/> 
     </archdesc>
	</xsl:template>
  
  <xsl:template match="dsc/c/c">
    <dsc>
      <xsl:copy>
      <xsl:apply-templates select="@*|node()"/> 
        </xsl:copy>
     </dsc>
	</xsl:template>
  

</xsl:stylesheet>