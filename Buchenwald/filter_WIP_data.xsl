<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xpath-default-namespace="urn:isbn:1-931666-22-9"
  xmlns="urn:isbn:1-931666-22-9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
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
                         name() = 'c09'] ">
    <xsl:choose>
      <xsl:when
        test="./did/unitid[normalize-space() = 'BwA-I-ha-NMG-KdAW' or
                        			  normalize-space() = 'BwA-III-K-thS-5' or
                        			  normalize-space() = 'BwA-III-K-thS-76' or
                        			  normalize-space() = 'BwA-III-K-thS-78' or
                        			  normalize-space() = 'BwA-III-K-thS-79' or
                        			  normalize-space() = 'BwA-I-ha-NMG-KdAW' or
              						      normalize-space() = 'BwA-I-ha-NMG-???' or
                        			  normalize-space() = 'BwA-K-III-thS-6']" />
      <xsl:otherwise>
        <xsl:copy>
          <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

</xsl:stylesheet>