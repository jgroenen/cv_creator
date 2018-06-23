<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <link href="https://use.typekit.net/epb5fbr.css" rel="stylesheet"/>
        <meta name='viewport' content='width=320,initial-scale=1,user-scalable=0'/>
        <link href="cv_johan_groenen.css" rel="stylesheet"/>
      </head>
      <body>
        <h1>Johan Groenen</h1>

        <main>
          <div class="adres">
            <p>Burg. de J. de Jonglaan 8</p>
            <p>3042 NH Rotterdam</p>
            <br/>
            <p>johan@tiltshift.nl</p>
            <p>06 415 180 18</p>
            <p>www.tiltshift.nl</p>
          </div>

          <div class="gegevens">
            <section>
              <h2>Persoonlijke gegevens</h2>
              <p>
                <span class="tab">Geboortedatum:</span>
                16 oktober 1981<br/>
                <span class="tab">Geboorteplaats:</span>
                Nuenen<br/>
                <span class="tab">Geslacht:</span>
                Man<br/>
                <span class="tab">Nationaliteit:</span>
                Nederlandse</p>
            </section>

            <h2>Ervaring</h2>

            <xsl:for-each select="//werk">
              <div class="werk">
                <p class="tijd"><xsl:value-of select="van"/>
                  -

                  <xsl:value-of select="tot"/></p>
                <p class="titel"><xsl:value-of select="titel"/></p>
                <p class="bedrijf"><xsl:value-of select="bedrijf"/></p>
                <p class="werkzaamheden"><xsl:value-of select="werkzaamheden" disable-output-escaping="yes"/></p>
              </div>
            </xsl:for-each>

            <section>
              <h2>Opleiding</h2>

              <xsl:for-each select="//opleiding">
                <div class="opleiding">
                  <p class="tijd"><xsl:value-of select="van"/>
                    -

                    <xsl:value-of select="tot"/></p>
                  <p class="titel"><xsl:value-of select="titel"/></p>
                  <p class="instelling"><xsl:value-of select="instelling"/></p>
                  <p class="omschrijving"><xsl:value-of select="omschrijving" disable-output-escaping="yes"/></p>
                  <xsl:if test="extra">
                    <p class="extra">* <xsl:value-of select="extra"/></p>
                  </xsl:if>
                </div>
              </xsl:for-each>
            </section>

            <h2>Cursussen (Coursera)</h2>

            <xsl:for-each select="//cursus">
              <div class="cursus">
                -

                <xsl:value-of select="."/>
              </div>
            </xsl:for-each>

            <section>
              <h2>Honours</h2>

              <xsl:for-each select="//honour">
                <div class="honour">
                  -

                  <xsl:value-of select="."/>
                </div>
              </xsl:for-each>
            </section>

            <h2>Overige</h2>

            <xsl:for-each select="//overige">
              <div class="overige">
                <p class="tijd"><xsl:value-of select="van"/>
                  -

                  <xsl:value-of select="tot"/></p>
                <p class="titel"><xsl:value-of select="titel"/></p>
                <p class="organisatie"><xsl:value-of select="organisatie"/></p>
                <p class="omschrijving"><xsl:value-of select="omschrijving" disable-output-escaping="yes"/></p>
              </div>
            </xsl:for-each>

            <section>
              <h2>En verder...</h2>

              <xsl:for-each select="//weetje">
                <div class="weetje">
                  -

                  <xsl:value-of select="."/>
                </div>
              </xsl:for-each>
            </section>

          </div>
        </main>

      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
