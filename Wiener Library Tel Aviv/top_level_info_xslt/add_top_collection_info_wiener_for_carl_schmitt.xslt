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
            <eadid xmlns="urn:isbn:1-931666-22-9">9933397655904146</eadid>
    </xsl:template>
  
    <xsl:template match="/ead/eadheader/filedesc/titlestmt/titleproper">
            <titleproper xmlns="urn:isbn:1-931666-22-9">Carl Schmitt – The Confidential File</titleproper>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unitid">
            <unitid xmlns="urn:isbn:1-931666-22-9">9933397655904146</unitid>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unittitle">
            <unittitle xmlns="urn:isbn:1-931666-22-9">Carl Schmitt – The Confidential File</unittitle>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/scopecontent/p">
            <p xmlns="urn:isbn:1-931666-22-9">This collection contains the contents of a confidential dossier on Carl Schmitt, a prominent German jurist, political theorist, and ostensibly loyal member of the Nazi Party. At the time at which the Sicherheitsdienst des Reichsführer SS – SD Hauptamt put together this dossier, documenting a campaign aiming to discredit Schmitt, he was considered the most outstanding legal scholar of National Socialism. He served on the leadership council of the Academy for German Law, was chairperson of the Committee for State and Administrative Law, member of the Prussian State Council, editor-in-chief of the Nazi journal for lawyers, and president of the Association of National Socialist German Jurists. The dossier is composed of letters, reports, newspaper clippings, telegrams, and handwritten notes, all of which seek to prove that despite Schmitt’s recent outspoken anti-Semitism, he was an untrustworthy opportunist rather than a faithful National Socialist. Comments on Schmitt’s work, examining his writings from the 1920s up to 1932, highlight that before the Nazi party came to power, he did portray Jewish authors in a positive light and that his thinking was more closely associated with Catholicism than National Socialism.</p>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/materialspec/extptr">
      		<extptr xmlns="urn:isbn:1-931666-22-9"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    xlink:type="simple"
                    xlink:href="https://tau-primo.hosted.exlibrisgroup.com/primo-explore/search?vid=TAU&amp;query=any,contains,9933397655904146"/>
    </xsl:template>

</xsl:stylesheet>