<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xpath-default-namespace="urn:isbn:1-931666-22-9" xmlns="urn:isbn:1-931666-22-9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  	
  	
  	<xsl:template match="archdesc">
      <xsl:choose>
      <xsl:when test="//archdesc/scopecontent">
      
      <xsl:copy>
        <xsl:apply-templates />
      </xsl:copy>
       </xsl:when>
        <xsl:otherwise>
          <xsl:copy>
        <xsl:apply-templates select="dsc/c"/>
        <dsc>
          <xsl:apply-templates select="dsc/c/c"/> 
        </dsc>
      </xsl:copy>
          </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
  
  	<xsl:template match="dsc/c">
      	 <xsl:choose>
      	<xsl:when test="//archdesc/scopecontent">
          <xsl:copy>
       <xsl:apply-templates />
            </xsl:copy>
          </xsl:when>
           <xsl:otherwise>
             	 <xsl:apply-templates select="*[not(self::c)]"/> 
             </xsl:otherwise>
           </xsl:choose>
    </xsl:template>
  
  	<xsl:template match="dsc/c/did">
      	<xsl:choose>
      	<xsl:when test="//archdesc/scopecontent">
          <xsl:copy>
           <xsl:apply-templates />
            </xsl:copy>
          </xsl:when>
          <xsl:otherwise>
      	<xsl:copy>
          	<xsl:apply-templates select="//archdesc/did/*" />
        	<xsl:apply-templates />
      	</xsl:copy>
            </xsl:otherwise>
          </xsl:choose>
    </xsl:template>

</xsl:stylesheet>