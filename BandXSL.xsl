<?xml version="1.0"?>

<!--
    Document   : BandXSL.xsl
    Created on : 18. dubna 2017, 13:27
    Author     : honzakanta
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <xsl:output method="text" />
        <xsl:template match="BandDatabase">
          [
          <xsl:for-each select="Band">
             <xsl:sort select="@id" />
                            {
                            "Nazev": "<xsl:value-of select="title" />",
                            "Logo": "<xsl:value-of select="url" />",
                            "Aktivní_roky": "<xsl:value-of select="Activeyear" />",
                            "Hodnocení": "<xsl:value-of select="rating" />",
                            "Členové": "<xsl:value-of select="members" />",
                            "Popis": "<xsl:value-of select="description" />",
                            "Stranky": "<xsl:value-of select="url" />",
                            "Styl": "<xsl:value-of select="gender" />",
                            }
             <xsl:if test="position() != last()">,</xsl:if>
          </xsl:for-each>
          ]
    </xsl:template>

</xsl:stylesheet>
