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
            <eadid xmlns="urn:isbn:1-931666-22-9">9932939494404146</eadid>
    </xsl:template>
  
    <xsl:template match="/ead/eadheader/filedesc/titlestmt/titleproper">
            <titleproper xmlns="urn:isbn:1-931666-22-9">Grahamstown Trial, Grahamstown, South Africa, 1934</titleproper>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unitid">
            <unitid xmlns="urn:isbn:1-931666-22-9">9932939494404146</unitid>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unittitle">
            <unittitle xmlns="urn:isbn:1-931666-22-9">Grahamstown Trial, Grahamstown, South Africa, 1934</unittitle>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/scopecontent/p">
            <p xmlns="urn:isbn:1-931666-22-9">The "Grahamstown Trial" which took place in 1934 in Port Elizabeth (ZA) deals with several issues; a document crudely forged by Harry Victor Inch, the Protocols of the Wise Men of Zion and a Jewish world conspiracy. "Die Rapport" (an anti-Semitic newspaper) published a document allegedly stolen from the Western Road Synagogue in Port Elizabeth: This fake document contains a series of antigentile writings including a vague plan of Jewish world domination. The forgery pretends to be a record of an address delivered by Abraham Levy (the Minister of the Port Elizabeth Hebrew Congregation) to the members of the local Jewish community. This libel action exposed the defendants' unfounded anti-Semitism and large amounts of criminal activity. The following files contain the full court transcript and the verdict of the trial.</p>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/materialspec/extptr">
      		<extptr xmlns="urn:isbn:1-931666-22-9"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    xlink:type="simple"
                    xlink:href="https://tau-primo.hosted.exlibrisgroup.com/primo-explore/search?vid=TAU&amp;query=any,contains,9932939494404146"/>
    </xsl:template>

</xsl:stylesheet>