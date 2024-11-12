<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="ead/archdesc/dsc/c/c/c/did">
        <xsl:copy>
            <unitid><xsl:value-of select="../@id" /></unitid>
            <xsl:apply-templates />
          	<note>
              <p>
                <xsl:for-each select="container">
                    <xsl:value-of select="@label" />&#160;<xsl:value-of select="@type" />&#160;<xsl:value-of select="text()" />&#xD;
                </xsl:for-each>
              </p>
            </note>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="ead/archdesc/dsc/c/c/did">
        <xsl:copy>
            <unitid><xsl:value-of select="../@id" /></unitid>
            <xsl:apply-templates />
          	<note>
              <p>
                <xsl:for-each select="container">
                    <xsl:value-of select="@label" />&#160;<xsl:value-of select="@type" />&#160;<xsl:value-of select="text()" />&#xD;
                </xsl:for-each>
              </p>
            </note>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>