<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xpath-default-namespace="http://ead3.archivists.org/schema/"
  xmlns="http://ead3.archivists.org/schema/" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xlink="http://www.w3.org/1999/xlink">
  <xsl:output method="xml" indent="yes" />

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*[name() = 'c' or
                       	 name() = 'c01' or
                       	 name() = 'c02' or
                         name() = 'c03' or
                         name() = 'c04' or
                         name() = 'c05' or
                         name() = 'c06' or
                         name() = 'c07' or
                         name() = 'c08' or
                         name() = 'c09'][accessrestrict]" />

</xsl:stylesheet>