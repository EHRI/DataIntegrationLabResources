<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    	xpath-default-namespace="urn:isbn:1-931666-22-9"
        xmlns="urn:isbn:1-931666-22-9"
    	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="//accessrestrict">
      	<xsl:copy>
          	<xsl:apply-templates select="node()|@*" />
          	<xsl:if test="exists(//dsc/c01[not(descendant::unittitle[normalize-space()])])">
              <p><xsl:value-of select="//dsc/c01[not(descendant::unittitle[normalize-space()])]/dsc/p" /></p>
            </xsl:if>
        </xsl:copy>
    </xsl:template>
  
  <xsl:template match="c01[not(descendant::unittitle[normalize-space()])]" />
  
</xsl:stylesheet>