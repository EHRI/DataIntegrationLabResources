<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/ead/archdesc/did">
        <xsl:copy>
            <xsl:apply-templates />
          	<materialspec label="Web Source">
        	<extptr xlink:type="simple" xlink:href="https://digital.sciencehistory.org/collections/qfih5hl"/>
      		</materialspec>
        </xsl:copy>
      	
    </xsl:template>

</xsl:stylesheet>