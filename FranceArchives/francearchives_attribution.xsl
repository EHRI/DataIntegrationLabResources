<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:isbn:1-931666-22-9" xpath-default-namespace="urn:isbn:1-931666-22-9">
  <xsl:output method="xml" indent="yes"/>
  
  <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
  </xsl:template>

  <xsl:template match="//did">
    	<xsl:copy>
          	<xsl:apply-templates />
          	<note><p>Note de l'EHRI : cette description a été établie à partir des données figurant sur le site FranceArchives en respectant la licence ouverte (type Etalab) proposée par le fournisseur.</p></note>
        </xsl:copy>
  </xsl:template>
  
</xsl:stylesheet>
