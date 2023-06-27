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
            <eadid xmlns="urn:isbn:1-931666-22-9">9932934263804146</eadid>
    </xsl:template>
  
    <xsl:template match="/ead/eadheader/filedesc/titlestmt/titleproper">
            <titleproper xmlns="urn:isbn:1-931666-22-9">Biographical press cuttings collection (1945-1970s)</titleproper>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unitid">
            <unitid xmlns="urn:isbn:1-931666-22-9">9932934263804146</unitid>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unittitle">
            <unittitle xmlns="urn:isbn:1-931666-22-9">Biographical press cuttings collection (1945-1970s)</unittitle>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/scopecontent/p">
            <p xmlns="urn:isbn:1-931666-22-9">The biographical files (close to 3,000) are arranged in alphabetical order and include information about different persons, mainly non-Jews, in the post-war world: political leaders, politicians, philosophers, writers, scientists, high ranking officers (including Nazis) and more, in Israel, the USA and different European countries. The documentation was gathered between 1945 and 1970s. It includes material from periodicals and press cuttings. Some files include biographical information from other sources.</p>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/materialspec/extptr">
      		<extptr xmlns="urn:isbn:1-931666-22-9"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    xlink:type="simple"
                    xlink:href="https://tau-primo.hosted.exlibrisgroup.com/primo-explore/search?vid=TAU&amp;query=any,contains,9932934263804146"/>
    </xsl:template>

</xsl:stylesheet>