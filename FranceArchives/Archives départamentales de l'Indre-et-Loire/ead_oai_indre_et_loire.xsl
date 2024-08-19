<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:isbn:1-931666-22-9" xmlns:xlink="http://www.w3.org/1999/xlink" xpath-default-namespace="urn:isbn:1-931666-22-9">
  <xsl:output method="xml" indent="yes"/>
  
  <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
  </xsl:template>
  
  <xsl:template match="//relatedmaterial/p/p">
    	<xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="//p/list">
    <xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="//p/head">
    <p>
    	<xsl:apply-templates />
    </p>
  </xsl:template>
  
  <xsl:template match="//list/item"> 
    	<xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="//list/item/list">
    	<xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="//list/item/list/item">
    	<xsl:apply-templates />
  </xsl:template>
  
   <xsl:template match="//p/bibref">
    	<xsl:apply-templates />
  </xsl:template> 
  
  <xsl:template match="//bibref/title">
    	<xsl:apply-templates />
  </xsl:template>
  
</xsl:stylesheet>
