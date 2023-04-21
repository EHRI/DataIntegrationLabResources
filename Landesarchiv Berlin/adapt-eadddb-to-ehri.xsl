<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xpath-default-namespace="urn:isbn:1-931666-22-9" xmlns="urn:isbn:1-931666-22-9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
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
  
  	<!--<xsl:template match="archdesc/did">
        <xsl:copy>
                <xsl:if test="not(unitid)">
                  	<unitid>
                      	<xsl:choose>
                          	<xsl:when test="../@id">
                        		<xsl:value-of select="../@id" />
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:value-of select="../../eadheader/filedesc/titlestmt/titleproper" />
                            </xsl:otherwise>
                      	</xsl:choose>
                    </unitid>
                </xsl:if>
          		<unittitle><xsl:value-of select="../../eadheader/filedesc/titlestmt/titleproper" /></unittitle>
            <xsl:apply-templates />
        </xsl:copy>
    </xsl:template>-->

    <xsl:template match="did"> 
        <xsl:copy>
                <xsl:if test="not(unitid)">
                  	<unitid>
                      	<xsl:choose>
                          	<xsl:when test="../@id">
                        		<xsl:value-of select="../@id" />
                            </xsl:when>
                            <xsl:otherwise>
                              <xsl:value-of select="unittitle" />
                            </xsl:otherwise>
                      	</xsl:choose>
                    </unitid>
                </xsl:if>
            <xsl:apply-templates />
            <materialspec label="Web Source">
                <extptr xlink:type="simple">
                    <xsl:attribute name="href" namespace="http://www.w3.org/1999/xlink">
                        <xsl:value-of select="../otherfindaid/extref/@xlink:href" />
                    </xsl:attribute>
                </extptr>
            </materialspec>
        </xsl:copy>
        
    </xsl:template>

    <xsl:template match="*[head]">
        <xsl:copy>
            <p><xsl:value-of select="head" /></p>
            <xsl:apply-templates />
        </xsl:copy>
    </xsl:template>

    <xsl:template match="c">
          <xsl:copy>
              <xsl:apply-templates />
              <xsl:if test="index/indexentry/*">
                  <controlaccess>
                      <xsl:apply-templates select="index/indexentry/*" />
                  </controlaccess>
              </xsl:if>
          </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="c[not(did/unitid)]/c">
          <xsl:copy>
              <xsl:apply-templates />
          </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="c[not(did/unitid)]" >
      	<xsl:apply-templates select="c" /> 
     </xsl:template>
  
  	<xsl:template match="unitdate">
      <xsl:copy>
        <xsl:attribute name="normal">
          <xsl:value-of select="replace(@normal, ' ', '')" />
        </xsl:attribute>
        <xsl:apply-templates />
      </xsl:copy>
    </xsl:template>
  	
  	<xsl:template match="lb">
      &lt;br&gt;
    </xsl:template>

</xsl:stylesheet>