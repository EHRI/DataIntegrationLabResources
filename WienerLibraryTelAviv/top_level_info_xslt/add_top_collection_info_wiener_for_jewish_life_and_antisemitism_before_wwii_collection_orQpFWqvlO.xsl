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
            <eadid xmlns="urn:isbn:1-931666-22-9">9933425308804146</eadid>
    </xsl:template>
  
    <xsl:template match="/ead/eadheader/filedesc/titlestmt/titleproper">
            <titleproper xmlns="urn:isbn:1-931666-22-9">Jewish life and antisemitism before WWII</titleproper>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unitid">
            <unitid xmlns="urn:isbn:1-931666-22-9">9933425308804146</unitid>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/unittitle">
            <unittitle xmlns="urn:isbn:1-931666-22-9">Jewish life and antisemitism before WWII</unittitle>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/scopecontent/p">
            <p xmlns="urn:isbn:1-931666-22-9">The Jewish life and Anti-Semitism collection consists of booklets, pamphlets and articles published in Europe during 1820-1940. One part of the collection contains sources that provide an insight into Jewish life in Europe up to 1933. It includes statutes of Jewish schools, synagogues and welfare organizations, and Jewish calendars, sermons, commemorative speeches, celebrations, anniversary texts, and songbooks. The other section comprises anti-Semitic texts that were self-published, printed by nationalistic or right-wing publishing houses, and later by National Socialist publishers or their affiliates. The publications elaborate on what they present as negative Jewish economic, cultural and political influences, such as communism and socialism. They repeat common Anti-Semitic stereotypes and reflect the atmosphere of their times. Beside those anti-Semitic publications, the collection also presents anti-anti-Semitic material written or compiled by various Jewish organizations, e. g. the Verein zur Abwehr des Antisemitismus, as an active reaction against the anti-Semitic arguments. The digitization of the collection was made possible thanks to the generous contribution of the Claims Conference - Conference on Jewish Material Claims Against Germany, EVZ - Foundation Remembrance, Responsibility and Future, BMF - German Federal Ministry of Finance.</p>
    </xsl:template>
  
  	<xsl:template match="/ead/archdesc/did/materialspec/extptr">
      		<extptr xmlns="urn:isbn:1-931666-22-9"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    xlink:type="simple"
                    xlink:href="https://tau-primo.hosted.exlibrisgroup.com/primo-explore/search?vid=TAU&amp;query=any,contains,9933425308804146"/>
    </xsl:template>

</xsl:stylesheet>