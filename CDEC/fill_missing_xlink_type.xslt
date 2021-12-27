<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="//*[@xlink:href and not(@xlink:type)]">
      	<xsl:copy>
          	<xsl:attribute name="xlink:type">simple</xsl:attribute>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
      	
    </xsl:template>

</xsl:stylesheet>