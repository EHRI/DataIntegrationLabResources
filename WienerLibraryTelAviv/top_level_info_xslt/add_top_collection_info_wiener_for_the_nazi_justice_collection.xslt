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
            <eadid xmlns="urn:isbn:1-931666-22-9">9932948460404146</eadid>
    </xsl:template>
  
    <xsl:template match="/ead/eadheader/filedesc/titlestmt/titleproper">
            <titleproper xmlns="urn:isbn:1-931666-22-9">The Nazi Justice collection</titleproper>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unitid">
            <unitid xmlns="urn:isbn:1-931666-22-9">9932948460404146</unitid>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unittitle">
            <unittitle xmlns="urn:isbn:1-931666-22-9">The Nazi Justice collection</unittitle>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/scopecontent/p">
            <p xmlns="urn:isbn:1-931666-22-9">The Nazi Justice collection provides information on the judiciary of the Third Reich and hundreds of trial transcripts. One part of the collection (Box I) contains registers of convicts, laws and regulations, information on judges and attorneys, a detailed report of executions in Brandenburg (from October 1944 to April 1945) and a list of Nazis who had been active in Auschwitz. The other part (Boxes II to IX) contains trial transcripts in alphabetical order, mainly from the Protectorate of Bohemia and Moravia, from 1942 to 1945. Alleged crimes range from illegal slaughtering of animals to listening to hostile radio stations. Most trials were either held in a German “Special court” (Sondergericht) or in the “People's court” (Volksgericht).</p>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/materialspec/extptr">
      		<extptr xmlns="urn:isbn:1-931666-22-9"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    xlink:type="simple"
                    xlink:href="https://tau-primo.hosted.exlibrisgroup.com/primo-explore/search?vid=TAU&amp;query=any,contains,9932948460404146"/>
    </xsl:template>

</xsl:stylesheet>