<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:default="urn:isbn:1-931666-22-9">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="//default:extref">
      	<xsl:copy>
          	<xsl:attribute name="xlink:type">
      			<xsl:text>simple</xsl:text>
    		</xsl:attribute>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="@show">
      	<xsl:attribute name="xlink:show">
          	<xsl:value-of select="." />
      	</xsl:attribute>
    </xsl:template>
  
  	<xsl:template match="@actuate">
      	<xsl:attribute name="xlink:actuate">
          <xsl:choose>
          	<xsl:when test=". = 'onrequest'">
              	<xsl:text>onRequest</xsl:text>
            </xsl:when>
          	<xsl:otherwise>
              <xsl:value-of select="." />
            </xsl:otherwise>
          </xsl:choose>
      	</xsl:attribute>
    </xsl:template>
  
  	

</xsl:stylesheet>