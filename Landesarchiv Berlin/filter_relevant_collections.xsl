<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xpath-default-namespace="urn:isbn:1-931666-22-9" xmlns="urn:isbn:1-931666-22-9" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xlink="http://www.w3.org/1999/xlink">
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
  	
  	
  	<xsl:template match="c">
      <xsl:if test=".//did/unitid[normalize-space() = 'A Pr.Br.Rep. 005 A' or
                                  normalize-space() = 'A Pr.Br.Rep. 030' or
                                  normalize-space() = 'A Pr.Br.Rep. 030-02' or
                                  normalize-space() = 'A Pr.Br.Rep. 030-02-02' or
                                  normalize-space() = 'A Pr.Br.Rep. 030-02-05' or
                                  normalize-space() = 'A Pr.Br.Rep. 030-08' or
                                  normalize-space() = 'A Pr.Br. Rep. 042' or
                                  normalize-space() = 'A Pr.Br.Rep. 057' or
                                  normalize-space() = 'A Pr.Br.Rep. 057 (Karteien)' or
                                  normalize-space() = 'A Pr.Br.Rep. 107-01' or
                                  normalize-space() = 'A Pr.Br.Rep. 107-01 (Fotos)' or
                                  normalize-space() = 'A Rep. 001-02' or
                                  normalize-space() = 'A Rep. 002' or
                                  normalize-space() = 'A Rep. 003-03 (Karteien)' or
                                  normalize-space() = 'A Rep. 003-03' or
                                  normalize-space() = 'A Rep. 003-04-01' or
                                  normalize-space() = 'A Rep. 003-04-04 (Karteien)' or
                                  normalize-space() = 'A Rep. 003-04-04' or
                                  normalize-space() = 'A Rep. 005-03-01' or
                                  normalize-space() = 'A Rep. 005-07' or
                                  normalize-space() = 'A Rep. 009' or
                                  normalize-space() = 'A Rep. 010-02' or
                                  normalize-space() = 'A Rep. 032-08' or
                                  normalize-space() = 'A Rep. 037-08-01 (Karteien)' or
                                  normalize-space() = 'A Rep. 037-08-01' or
                                  normalize-space() = 'A Rep. 038-01' or
                                  normalize-space() = 'A Rep. 042-05-03' or
                                  normalize-space() = 'A Rep. 042-08' or
                                  normalize-space() = 'A Rep. 042-08-01' or
                                  normalize-space() = 'A Rep. 046-01' or
                                  normalize-space() = 'A Rep. 048-04-01' or
                                  normalize-space() = 'A Rep. 048-05-01' or
                                  normalize-space() = 'A Rep. 062' or
                                  normalize-space() = 'A Rep. 093-03' or
                                  normalize-space() = 'A Rep. 216' or
                                  normalize-space() = 'A Rep. 225' or
                                  normalize-space() = 'A Rep. 225-02' or
                                  normalize-space() = 'A Rep. 230-03' or
                                  normalize-space() = 'A Rep. 231' or
                                  normalize-space() = 'A Rep. 243-04' or
                                  normalize-space() = 'A Rep. 244-01' or
                                  normalize-space() = 'A Rep. 244-03' or
                                  normalize-space() = 'A Rep. 345' or
                                  normalize-space() = 'A Rep. 250-04-09' or
                                  normalize-space() = 'A Rep. 251-08' or
                                  normalize-space() = 'A Rep. 352' or
                                  normalize-space() = 'A Rep. 341-03' or
                                  normalize-space() = 'A Rep. 342' or
                                  normalize-space() = 'A Rep. 342-02' or
                                  normalize-space() = 'A Rep. 342-05' or
                                  normalize-space() = 'A Rep. 349' or
                                  normalize-space() = 'A Rep. 356 (Karteien)' or
                                  normalize-space() = 'A Rep. 356' or
                                  normalize-space() = 'A Rep. 358 (Karteien)' or
                                  normalize-space() = 'A Rep. 358-02' or
                                  normalize-space() = 'A Rep. 380' or
                                  normalize-space() = 'A Rep. 500' or
                                  normalize-space() = 'A Rep. 550(10.01.1724)' or
                                  normalize-space() = 'B Rep. 002' or
                                  normalize-space() = 'B Rep. 042' or
                                  normalize-space() = 'B Rep. 012' or
                                  normalize-space() = 'B Rep. 020' or
                    			  normalize-space() = 'B Rep. 025' or
                                  normalize-space() = 'B Rep. 057-01' or
                                  normalize-space() = 'B Rep. 078' or
                                  normalize-space() = 'B Rep. 105' or
                                  normalize-space() = 'B Rep. 142-06' or
                                  normalize-space() = 'B Rep. 202' or
                                  normalize-space() = 'B Rep. 203' or
                                  normalize-space() = 'B Rep. 206' or
                                  normalize-space() = 'B Rep. 207' or
                                  normalize-space() = 'B Rep. 209' or
                                  normalize-space() = 'B Rep. 211' or
                                  normalize-space() = 'B Rep. 232-11' or
                                  normalize-space() = 'B Rep. 232-35' or
                                  normalize-space() = 'B Rep. 235-09' or
                                  normalize-space() = 'C Rep. 104' or
                                  normalize-space() = 'C Rep. 118-01' or
                                  normalize-space() = 'C Rep. 800' or
                                  normalize-space() = 'C Rep. 902-02-05' or
                                  normalize-space() = 'C Rep. 906-01' or
                                  normalize-space() = 'C Rep. 906-02' or
                                  normalize-space() = 'E Rep. 061-16' or
                                  normalize-space() = 'E Rep. 061-20' or
                                  normalize-space() = 'E Rep. 200-61' or
                                  normalize-space() = 'E Rep. 300-37' or
                                  normalize-space() = 'E Rep. 300-63' or
                                  normalize-space() = 'F Rep. 120']">
        <xsl:copy>
            <xsl:apply-templates />
        </xsl:copy>
      </xsl:if>
    </xsl:template>

</xsl:stylesheet>