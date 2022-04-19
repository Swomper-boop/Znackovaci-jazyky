<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
    <body>
      <h3>Pujcovna_filmu</h3>
      <table border="2">
        <tr>
          <th>nazev</th>
          <th>cena_kc</th>
          <th>datum_premiery</th>
          <th>zanr</th>
          <th>hodnoceni_imdb</th>
          <th>hodnoceni_divaku</th>
          <th>zeme_vydani</th>
          <th>kamera</th>
          <th>rezie</th>
          <th>vekove_omezeni</th>
          <th>delka_min</th>
          <th>hlavni_muzska_role</th>
          <th>hlavni_zenska_role</th>
          <th>scenar</th>
          <th>recenze_mnozstvi</th>
          <th>hudba</th>
          <th>slogan</th>
          <th>pujcka_dny</th>
          <th>kategorie</th>
        </tr>

        <xsl:for-each select="Pujcovna_filmu/seznam">
        <xsl:sort select="nazev"/>
        <xsl:if test="vekove_omezeni">

        <tr>
          <td><xsl:value-of select="nazev"/></td>
          <td><xsl:value-of select="cena_kc"/></td>
          <td><xsl:value-of select="datum_premiery"/></td>
          <td><xsl:value-of select="zanr"/></td>
          <td><xsl:value-of select="hodnoceni_imdb"/></td>
          <td><xsl:value-of select="hodnoceni_divaku"/></td>
          <td><xsl:value-of select="zeme_vydani"/></td>
          <td><xsl:value-of select="kamera"/></td>
          <td><xsl:value-of select="rezie"/></td>
          <td><xsl:value-of select="vekove_omezeni"/></td>
          <td><xsl:value-of select="delka_min"/></td>
          <td><xsl:value-of select="hlavni_muzska_role"/></td>
          <td><xsl:value-of select="hlavni_zenska_role"/></td>
          <td><xsl:value-of select="scenar"/></td>
          <td><xsl:value-of select="recenze_mnozstvi"/></td>
          <td><xsl:value-of select="hudba"/></td>
          <td><xsl:value-of select="slogan"/></td>
          <td><xsl:value-of select="pujcka_dny"/></td>
          <td><xsl:value-of select="kategorie"/></td>

          <xsl:choose>
            <xsl:when test="vekove_omezeni > 14">
         <td bgcolor="#00bfff">
           <xsl:value-of select="nazev"/> film čeká na vás</td>
              </xsl:when>
          <xsl:otherwise>
             <td></td>
          </xsl:otherwise>

          </xsl:choose>

          </tr>
          </xsl:if>
          </xsl:for-each>

        </table>
      </body>
      </html>
    </xsl:template>

  </xsl:stylesheet>
          
