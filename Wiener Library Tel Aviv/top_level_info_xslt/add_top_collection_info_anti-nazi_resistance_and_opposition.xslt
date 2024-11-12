<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xpath-default-namespace="urn:isbn:1-931666-22-9">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
	
  	<xsl:template match="/ead/eadheader/eadid">
      	<eadid xmlns="urn:isbn:1-931666-22-9">81408951550004146</eadid>
    </xsl:template>
  
    <xsl:template match="/ead/eadheader/filedesc/titlestmt/titleproper">
            <titleproper xmlns="urn:isbn:1-931666-22-9">Anti-Nazi resistance and opposition</titleproper>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unitid">
            <unitid xmlns="urn:isbn:1-931666-22-9">81408951550004146</unitid>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unittitle">
            <unittitle xmlns="urn:isbn:1-931666-22-9">Anti-Nazi resistance and opposition</unittitle>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/scopecontent/p">
            <p xmlns="urn:isbn:1-931666-22-9">The "Anti-Nazi Resistance and Opposition" collection consists of pamphlets, flyers, and booklets published across Europe during World War II. These publications document the atrocities committed by the Nazis and by their collaborators, and were originally aimed to unite the oppressed populations in spiritual and armed resistance. The opposition to the Nazis was led by people from different social backgrounds: peasants, workers, teachers, business owners, as well as aristocrats. Most operated underground, and individuals often sacrificed their freedom or even their own lives to ensure the production and distribution of these materials.</p>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/materialspec/extptr">
      		<extptr xmlns="urn:isbn:1-931666-22-9"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    xlink:type="simple"
                    xlink:href="https://tau.primo.exlibrisgroup.com/discovery/collectionDiscovery?vid=972TAU_INST:TAU&amp;collectionId=81408951550004146"/>
    </xsl:template>

</xsl:stylesheet>