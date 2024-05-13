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

    <xsl:template match="c">
          <xsl:copy>
              <xsl:apply-templates select="*[not(c)]" />
              <xsl:if test="index/indexentry/*">
                  <controlaccess>
                      <xsl:apply-templates select="index/indexentry/*" />
                  </controlaccess>
              </xsl:if>
              <xsl:apply-templates select="c" />
          </xsl:copy>
    </xsl:template>
  
  	<xsl:template match="c[not(did/unitid)]">
          <xsl:apply-templates select="c" />
    </xsl:template>
  
  	<xsl:template match="index" />
  
  	<xsl:template match="daogrp" />
  
  	<xsl:template match="odd/head" >
      	<p>
      		<xsl:apply-templates />
        </p>
    </xsl:template>
  
  	<xsl:template match="p/emph">
      	<xsl:apply-templates />
    </xsl:template>
  
  	<xsl:template match="did">
      <xsl:copy>
      	<xsl:apply-templates />
      	<materialspec label="Web Source">
                <extptr xlink:type="simple">
                    <xsl:attribute name="href" namespace="http://www.w3.org/1999/xlink">http://suche.archiv.elk-wue.de/actaproweb/document/<xsl:value-of select="../@id" />
                    </xsl:attribute>
                </extptr>
      	</materialspec>
      </xsl:copy>
	</xsl:template>     
  
  	<xsl:template match="physdesc/genreform">
      <physfacet>
        <xsl:apply-templates />
      </physfacet>
    </xsl:template>
  
  	<xsl:template match="unitid[@type='sig1' or @type='sig2']" />

</xsl:stylesheet>