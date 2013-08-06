<?xml version="1.0"?>
<xsl:stylesheet 
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:yweather="http://xml.weather.yahoo.com/ns/rss/1.0" version="1.0">

        <xsl:output indent="yes" method="text" encoding="UTF-8" omit-xml-declaration="yes" />

        <xsl:template match="/">
                <xsl:value-of select="//item/yweather:forecast[2]/@text" />
                <xsl:text>, Low: </xsl:text>
                <xsl:value-of select="//item/yweather:forecast[2]/@low" /> 
                <xsl:text>°C, High: </xsl:text>
                <xsl:value-of select="//item/yweather:forecast[2]/@high" /> 
                <xsl:text>°C</xsl:text>
        </xsl:template>


</xsl:stylesheet>
