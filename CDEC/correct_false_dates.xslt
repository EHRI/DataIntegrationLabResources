<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="@normal"> 
       <xsl:attribute name="normal">
        <xsl:choose>
        <xsl:when test="contains(., '-02-31')">
          <xsl:value-of select="replace(., '-02-31', '-02-28')" />
        </xsl:when>
         <xsl:when test="contains(., '-04-31')">
          <xsl:value-of select="replace(., '-04-31', '-04-30')" />
        </xsl:when>
         <xsl:when test="contains(., '-06-31')">
          <xsl:value-of select="replace(., '-06-31', '-06-30')" />
        </xsl:when>
         <xsl:when test="contains(., '-09-31')">
          <xsl:value-of select="replace(., '-09-31', '-09-30')" />
        </xsl:when>
         <xsl:when test="contains(., '-11-31')">
          <xsl:value-of select="replace(., '-11-31', '-11-30')" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:copy>
            <xsl:apply-templates />
          </xsl:copy>
        </xsl:otherwise>
        </xsl:choose>
       </xsl:attribute>
    </xsl:template>

</xsl:stylesheet>