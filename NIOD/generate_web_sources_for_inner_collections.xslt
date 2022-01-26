<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    	xpath-default-namespace="urn:isbn:1-931666-22-9"
        xmlns="urn:isbn:1-931666-22-9"
        xmlns:xlink="http://www.w3.org/1999/xlink"
    	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="//dsc/*/did">
      	<xsl:copy>          	
          	<xsl:apply-templates select="node()|@*" />
          	<materialspec>
              <extptr>
                  <xsl:attribute name="xlink:type">simple</xsl:attribute>
                  <xsl:attribute name="xlink:href">http://www.archieven.nl/nl/search-modonly?mivast=298&amp;mizig=210&amp;miadt=298&amp;miaet=1&amp;micode=<xsl:value-of select="//eadid" />&amp;minr=<xsl:value-of select="replace(@id, 'MF', '')" />&amp;miview=inv2</xsl:attribute>
              </extptr>
              <xsl:if test="exists(../daogrp/daoloc[@xlink:label='reference']/@xlink:href)">
                <extptr>
                  <xsl:attribute name="xlink:type">simple</xsl:attribute>
                  <xsl:attribute name="xlink:href"><xsl:value-of select="../daogrp/daoloc[@xlink:label='reference']/@xlink:href" /></xsl:attribute>
              	</extptr>
              </xsl:if>
            </materialspec>
        </xsl:copy>
    </xsl:template>
  
  <xsl:template match="c01[not(descendant::unittitle[normalize-space()])]" />
  
</xsl:stylesheet>