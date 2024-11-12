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
            <eadid xmlns="urn:isbn:1-931666-22-9">9933397655704146</eadid>
    </xsl:template>
  
    <xsl:template match="/ead/eadheader/filedesc/titlestmt/titleproper">
            <titleproper xmlns="urn:isbn:1-931666-22-9">United Restitution Organization (URO): Rundschreiben 1961-1973</titleproper>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unitid">
            <unitid xmlns="urn:isbn:1-931666-22-9">9933397655704146</unitid>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unittitle">
            <unittitle xmlns="urn:isbn:1-931666-22-9">United Restitution Organization (URO): Rundschreiben 1961-1973</unittitle>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/scopecontent/p">
            <p xmlns="urn:isbn:1-931666-22-9">The collection contains circulars (“Rundschreiben”) that the main office of the United Restitution Organization in Frankfurt/Main sent out to the various offices of the organization between 1961 and 1973. The circulars detail judgements of the German Federal Court of Justice (Bundesgerichtshof) on claims of Holocaust survivors to individual indemnification for damages caused by Nazi persecution. Each circular is prefaced by a summary of the court’s decision and its significance for the jurisprudence of personal indemnification, which in Germany was regulated by the Federal Law on Compensation for Victims of National Socialist Persecution (Bundesentschädigungsgesetz). In addition, the circulars contain the entire decisions of the Supreme Court on which they report. The judgments provide vivid depictions of the fate of Nazi persecutees during and after the Second World War, of the broad spectrum of damages persecution caused its victims, and of the protracted legal proceedings in which they had to engage to claim compensation.</p>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/materialspec/extptr">
      		<extptr xmlns="urn:isbn:1-931666-22-9"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    xlink:type="simple"
                    xlink:href="https://tau-primo.hosted.exlibrisgroup.com/primo-explore/search?vid=TAU&amp;query=any,contains,9933397655704146"/>
    </xsl:template>

</xsl:stylesheet>