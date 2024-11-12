<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xpath-default-namespace="urn:isbn:1-931666-22-9" xmlns="urn:isbn:1-931666-22-9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="physdesc">
      <xsl:copy>
        <extent>
          <xsl:apply-templates />
        </extent>
      </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="bioghist/note">
       <xsl:apply-templates />
    </xsl:template>
  
  	<xsl:template match="langmaterial/language[@scriptcode]">
       <xsl:copy>
         <xsl:attribute name="langcode">
           <xsl:choose>
             <xsl:when test="@scriptcode='Latn'">lat</xsl:when>
             <xsl:when test="@scriptcode='Hebr'">heb</xsl:when>
             <xsl:otherwise>
              <xsl:value-of select="@scriptcode" />
             </xsl:otherwise>
           </xsl:choose>
         </xsl:attribute>
         <xsl:apply-templates />
       </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="did">
      <xsl:copy>
      	<xsl:apply-templates />
      	<materialspec label="Web Source">
                <extptr xlink:type="simple">
                    <xsl:attribute name="href" namespace="http://www.w3.org/1999/xlink">
                       <xsl:value-of select="../../eadheader/eadid/@url" /> 
                    </xsl:attribute>
                </extptr>
      	</materialspec>
      </xsl:copy>
	</xsl:template>
  	
  	<xsl:template match="unitid">
      <unitid>
        <xsl:apply-templates />
      </unitid>
      <unitid><xsl:value-of select="concat(@repositorycode, ' ')"/><xsl:apply-templates /></unitid>
    </xsl:template>
  
    <xsl:template match="dao" />

</xsl:stylesheet>