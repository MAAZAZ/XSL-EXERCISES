<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>exercice 2 XSL</title>
                <style>
                    th,tr,td{
                    border: 2px solid black;
                    text-align: center;
                    }
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th></th>
                        <th>Muslim</th>
                        <th>Christian</th>
                        <th>Jewish</th>
                    </tr>
                    <tr>
                        <th> Europe </th>
                        <td>
                            <xsl:variable name="muslim" select="format-number(sum(//encompassed[@continent='europe']/following-sibling::religion[text()='Muslim']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$muslim"/>
                        </td>
                        <td>
                            <xsl:variable name="christian" select="format-number(sum(//encompassed[@continent='europe']/following-sibling::religion[text()='Christian Orthodox' or text()='Christian' or text()='Roman Catholic' or text()='Protestant' or text()='Anglican' or text()='Presbyterian' or text()='Christian Congregationalist' or text()='Ekalesia Niue']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$christian"/>
                        </td>
                        <td>
                            <xsl:variable name="jewish" select="format-number(sum(//encompassed[@continent='europe']/following-sibling::religion[text()='Jewish']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$jewish"/>
                        </td>
                    </tr>
                    <tr>
                        <th> Afrique </th>
                        <td>
                            <xsl:variable name="muslim" select="format-number(sum(//encompassed[@continent='africa']/following-sibling::religion[text()='Muslim']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###') "/>
                             <xsl:value-of select="$muslim"/>
                        </td>
                        <td>
                            <xsl:variable name="christian" select="format-number(sum(//encompassed[@continent='africa']/following-sibling::religion[text()='Christian Orthodox' or text()='Christian' or text()='Roman Catholic' or text()='Protestant' or text()='Anglican' or text()='Presbyterian' or text()='Christian Congregationalist' or text()='Ekalesia Niue']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$christian"/>
                        </td>
                        <td>
                            <xsl:variable name="jewish" select="format-number(sum(//encompassed[@continent='africa']/following-sibling::religion[text()='Jewish']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$jewish"/>
                        </td>
                    </tr>
                    <tr>
                        <th> Asie </th>
                        <td>
                            <xsl:variable name="muslim" select="format-number(sum(//encompassed[@continent='asia']/following-sibling::religion[text()='Muslim']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###') " />
                            <xsl:value-of select="$muslim"/>
                        </td>
                        <td>
                            <xsl:variable name="christian" select="format-number(sum(//encompassed[@continent='asia']/following-sibling::religion[text()='Christian Orthodox' or text()='Christian' or text()='Roman Catholic' or text()='Protestant' or text()='Anglican' or text()='Presbyterian' or text()='Christian Congregationalist' or text()='Ekalesia Niue']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$christian"/>
                        </td>
                        <td>
                            <xsl:variable name="jewish" select="format-number(sum(//encompassed[@continent='asia']/following-sibling::religion[text()='Jewish']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$jewish"/>
                        </td>
                    </tr>
                    <tr>
                        <th> Amerique </th>
                        <td>
                            <xsl:variable name="muslim" select="format-number(sum(//encompassed[@continent='america']/following-sibling::religion[text()='Muslim']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###') " />
                            <xsl:value-of select="$muslim"/>
                        </td>
                        <td>
                            <xsl:variable name="christian" select="format-number(sum(//encompassed[@continent='america']/following-sibling::religion[text()='Christian Orthodox' or text()='Christian' or text()='Roman Catholic' or text()='Protestant' or text()='Anglican' or text()='Presbyterian' or text()='Christian Congregationalist' or text()='Ekalesia Niue']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$christian"/>
                        </td>
                        <td>
                            <xsl:variable name="jewish" select="format-number(sum(//encompassed[@continent='america']/following-sibling::religion[text()='Jewish']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$jewish"/>
                        </td>
                    </tr>
                    <tr>
                        <th> Australia </th>
                        <td> 
                            <xsl:variable name="muslim" select="format-number(sum(//encompassed[@continent='australia']/following-sibling::religion[text()='Muslim']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###') " /> 
                            <xsl:value-of select="$muslim"/>
                        </td>
                        <td>
                            <xsl:variable name="christian" select="format-number(sum(//encompassed[@continent='australia']/following-sibling::religion[text()='Christian Orthodox' or text()='Christian' or text()='Roman Catholic' or text()='Protestant' or text()='Anglican' or text()='Presbyterian' or text()='Christian Congregationalist' or text()='Ekalesia Niue']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$christian"/>
                        </td>
                        <td>
                            <xsl:variable name="jewish" select="format-number(sum(//encompassed[@continent='australia']/following-sibling::religion[text()='Jewish']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$jewish"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <th> Total </th>
                        <td> 
                            <xsl:variable name="muslim" select="format-number(sum(//religion[text()='Muslim']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$muslim" />
                        </td>
                        <td> 
                            <xsl:variable name="christian" select="format-number(sum(//religion[text()='Christian Orthodox' or text()='Christian' or text()='Roman Catholic' or text()='Protestant' or text()='Anglican' or text()='Presbyterian' or text()='Christian Congregationalist' or text()='Ekalesia Niue']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$christian" />
                        </td>
                        <td> 
                            <xsl:variable name="christian" select="format-number(sum(//religion[text()='Jewish']/(preceding-sibling::population[1] * @percentage)) div 100,'###,###')"/>
                            <xsl:value-of select="$christian" />
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>