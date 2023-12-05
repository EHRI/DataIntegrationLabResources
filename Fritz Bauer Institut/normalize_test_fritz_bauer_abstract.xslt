<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes" encoding="utf-8"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="//abstract">
       <xsl:for-each select="distinct-values(tokenize(., '&lt;lb[/]&gt;&lt;lb[/]&gt;'))">
         <abstract><xsl:value-of select='replace(replace(replace(replace(replace(., "&#x9a;", "š"), "&#x8e;", "Ž"), "&#x8a;", "Š"), "&#x92;|&#x91;", "&apos;"), "&#x96;", "&#8212;")' /></abstract>
       </xsl:for-each>
  	</xsl:template>

</xsl:stylesheet>