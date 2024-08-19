<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="urn:isbn:1-931666-22-9" xmlns:xlink="http://www.w3.org/1999/xlink" xpath-default-namespace="urn:isbn:1-931666-22-9">
  <xsl:output method="xml" indent="yes"/>
  
  <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
  </xsl:template>

 <!--Remove OAI-PMH tags before EAD-->  
  <xsl:template match="/">
    	<xsl:copy>
            <xsl:apply-templates select="//ead"/>
        </xsl:copy>
  </xsl:template>

<!--Copied the existing remove-empty-nodes XSLT to get rid of empty <p> tag under <processinfo>--> 
  <xsl:strip-space elements="*"/>
    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    <xsl:template match="*[not(@*|*|comment()|processing-instruction()) and normalize-space()='']"/>

  <!--Put <persname> inside a new <p> tag-->  
  <xsl:template match="//processinfo">
      <xsl:copy>
        <p>
          <xsl:apply-templates select="persname"/>
        </p>
        <xsl:apply-templates select="*[not(local-name() = 'persname')]"/>
      </xsl:copy>
  </xsl:template>

  <xsl:template match="//did">
    <xsl:copy>
      <xsl:apply-templates />
      <xsl:if test="unitid[extptr]">
        <materialspec>
          <xsl:copy-of select="unitid/extptr" />
        </materialspec>
      </xsl:if>
      <xsl:if test="not(unitid) or not(unitid/text())">
        <unitid>
          	<xsl:choose>
            	<xsl:when test="../../@id">
                  <xsl:value-of select="../../@id" />
            	</xsl:when>
              	<xsl:otherwise>
                  <xsl:value-of select="//ead/eadheader/eadid/text()" />
                </xsl:otherwise>
      		</xsl:choose>
      	</unitid>  
      </xsl:if>
      <xsl:if test="//eadid[@url]">
        <materialspec>
           <extptr xlink:type="simple">
             <xsl:attribute name="href" namespace="http://www.w3.org/1999/xlink">
               <xsl:value-of select="//eadid/@url" />
             </xsl:attribute>
           </extptr>
        </materialspec>
      </xsl:if>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="//langusage/language">
    <xsl:copy>
      <xsl:if test="not(@langcode) and contains(lower-case(text()), 'français')">
        <xsl:attribute name="langcode">fre</xsl:attribute>
      </xsl:if>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="//langusage">
    <xsl:copy>
      <xsl:if test="not(language) and not(language/@langcode) and contains(lower-case(text()), 'français')">
        <language>
        	<xsl:attribute name="langcode">fre</xsl:attribute>
        </language>
      </xsl:if>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
  
  <xsl:template match="//p/emph">
    <xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="//head">
    <p>
    	<xsl:apply-templates />
    </p>
  </xsl:template>
    
  <xsl:template match="//p/note">
    	<xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="//p/persname">
    	<xsl:apply-templates />
  </xsl:template>
  
  <xsl:template match="//unitid/extptr"/>

  <xsl:template match="p/@class" /> 

  <xsl:template match="c/@id"/>  
  
</xsl:stylesheet>
