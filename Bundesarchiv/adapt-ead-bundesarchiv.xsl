<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xpath-default-namespace="urn:isbn:1-931666-22-9" xmlns="urn:isbn:1-931666-22-9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
  	</xsl:template>
  
  	<xsl:template match="did">
      <xsl:copy>
        <xsl:apply-templates />
        <materialspec label="Web Source">
              <extptr xlink:type="simple">
                    <xsl:attribute name="href" namespace="http://www.w3.org/1999/xlink">
                      	<xsl:choose>
                          <xsl:when test="../otherfindaid/extref[@xlink:href]">
                              <xsl:value-of select="../otherfindaid/extref/@xlink:href" />
                          </xsl:when>
                          <xsl:otherwise>
                              <xsl:value-of select="//eadid/@url" />
                          </xsl:otherwise>
                        </xsl:choose>
                    </xsl:attribute>
              </extptr>
      	  </materialspec>
      </xsl:copy>
	</xsl:template>
  
  	<xsl:template match="profiledesc">
        <xsl:copy>
            <xsl:apply-templates />
          	<langusage>
              	<language langcode="deu">Deutsch</language>
          	</langusage>
      	</xsl:copy>
    </xsl:template>
  
  	<xsl:template match="c[not(did/unitid)]">
          <xsl:apply-templates select="c" /> 
    </xsl:template>
  
  	<xsl:template match="unitid">
      	  <unitid><xsl:value-of select="replace(., 'BArch ', '')" /></unitid>
    </xsl:template>
  
  	<xsl:template match="head">
      	  <p>
            <xsl:apply-templates />
           </p>
    </xsl:template>
  
  	<xsl:template match="origination">
      <origination>
        <name>
          <xsl:value-of select="." />
        </name>
      </origination>
    </xsl:template>
  
  	<xsl:template match="physdesc/genreform">
      	<physfacet>
          <xsl:value-of select="." />
        </physfacet>
  	</xsl:template>

</xsl:stylesheet>