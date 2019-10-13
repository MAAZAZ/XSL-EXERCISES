<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>exercice XSL</title>
                <style>
                    #continent{
                    font-weight:bold;
                    }
                </style>
            </head>
            <body>
                <ul>
                    <li id="continent">Europe :</li> <br/>
                <xsl:for-each select="mondial/country">
                    <xsl:variable name="continent" select="encompassed/@continent"/>
                        <xsl:if test="$continent='europe'">
                            <ul>
                            <xsl:variable name="code" select="@car_code"/>
                            <li> <xsl:value-of select="name[1]"/> </li>
                            <ul>
                            <li> code : <xsl:value-of select="$code"/> </li>
                            <li> population : <xsl:value-of select="population[last()]"/> </li>
                            <li> Les villes :
                             <xsl:for-each select="(city|province/city)">
                                <xsl:value-of select="name[1]"/>  &#160;/
                             </xsl:for-each> 
                            </li>
                             <li> Les aéroport :
                             <xsl:for-each select="following-sibling::airport">
                                <xsl:if test="$code=./@country">
                                    <xsl:value-of select="name[1]"/>  &#160;/
                                </xsl:if>
                             </xsl:for-each>
                             </li>
                            </ul>
                            </ul>
                            <br/>
                          </xsl:if>      
                </xsl:for-each>
                
                    <li id="continent">Afrique :</li> <br/>
                    <xsl:for-each select="mondial/country">
                        <xsl:variable name="continent" select="encompassed/@continent"/>
                        <xsl:if test="$continent='africa'">
                            <ul>
                                <xsl:variable name="code" select="@car_code"/>
                                <li> <xsl:value-of select="name[1]"/> </li>
                                <ul>
                                    <li> code : <xsl:value-of select="$code"/> </li>
                                    <li> population : <xsl:value-of select="population[last()]"/> </li>
                                    <li> Les villes :
                                        <xsl:for-each select="(city|province/city)">
                                            <xsl:value-of select="name[1]"/>  &#160;/
                                        </xsl:for-each> 
                                    </li>
                                    <li> Les aéroport :
                                        <xsl:for-each select="following-sibling::airport">
                                            <xsl:if test="$code=./@country">
                                                <xsl:value-of select="name[1]"/>  &#160;/
                                            </xsl:if>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </ul>
                            <br/>
                        </xsl:if>      
                    </xsl:for-each>
                    
                    <li id="continent">Amerique :</li> <br/>
                    <xsl:for-each select="mondial/country">
                        <xsl:variable name="continent" select="encompassed/@continent"/>
                        <xsl:if test="$continent='america'">
                            <ul>
                                <xsl:variable name="code" select="@car_code"/>
                                <li> <xsl:value-of select="name[1]"/> </li>
                                <ul>
                                    <li> code : <xsl:value-of select="$code"/> </li>
                                    <li> population : <xsl:value-of select="population[last()]"/> </li>
                                    <li> Les villes :
                                        <xsl:for-each select="(city|province/city)">
                                            <xsl:value-of select="name[1]"/>  &#160;/
                                        </xsl:for-each> 
                                    </li>
                                    <li> Les aéroport :
                                        <xsl:for-each select="following-sibling::airport">
                                            <xsl:if test="$code=./@country">
                                                <xsl:value-of select="name[1]"/>  &#160;/
                                            </xsl:if>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </ul>
                            <br/>
                        </xsl:if>      
                    </xsl:for-each>
                    
                    <li id="continent">Asie :</li> <br/>
                    <xsl:for-each select="mondial/country">
                        <xsl:variable name="continent" select="encompassed/@continent"/>
                        <xsl:if test="$continent='asia'">
                            <ul>
                                <xsl:variable name="code" select="@car_code"/>
                                <li> <xsl:value-of select="name[1]"/> </li>
                                <ul>
                                    <li> code : <xsl:value-of select="$code"/> </li>
                                    <li> population : <xsl:value-of select="population[last()]"/> </li>
                                    <li> Les villes :
                                        <xsl:for-each select="(city|province/city)">
                                            <xsl:value-of select="name[1]"/>  &#160;/
                                        </xsl:for-each> 
                                    </li>
                                    <li> Les aéroport :
                                        <xsl:for-each select="following-sibling::airport">
                                            <xsl:if test="$code=./@country">
                                                <xsl:value-of select="name[1]"/>  &#160;/
                                            </xsl:if>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </ul>
                            <br/>
                        </xsl:if>      
                    </xsl:for-each>
                    
                    <li id="continent">Australia :</li> <br/>
                    <xsl:for-each select="mondial/country">
                        <xsl:variable name="continent" select="encompassed/@continent"/>
                        <xsl:if test="$continent='australia'">
                            <ul>
                                <xsl:variable name="code" select="@car_code"/>
                                <li> <xsl:value-of select="name[1]"/> </li>
                                <ul>
                                    <li> code : <xsl:value-of select="$code"/> </li>
                                    <li> population : <xsl:value-of select="population[last()]"/> </li>
                                    <li> Les villes :
                                        <xsl:for-each select="(city|province/city)">
                                            <xsl:value-of select="name[1]"/>  &#160;/
                                        </xsl:for-each> 
                                    </li>
                                    <li> Les aéroport :
                                        <xsl:for-each select="following-sibling::airport">
                                            <xsl:if test="$code=./@country">
                                                <xsl:value-of select="name[1]"/>  &#160;/
                                            </xsl:if>
                                        </xsl:for-each>
                                    </li>
                                </ul>
                            </ul>
                            <br/>
                        </xsl:if>      
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
