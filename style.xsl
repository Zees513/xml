<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">


    <html>
      <body>
        <table border='2' callpadding='7' callspacing='2'>
          <tr>
            <th>name</th>
            <th>Email</th>
            <th>age</th>
            <th>image</th>
          </tr>

          <xsl:for-each select="aptech/student">
            <tr>
              <td>
                <xsl:value-of select="name" />
              </td>
              <td>
                <xsl:value-of select="email" />
              </td>
              <td>
                <xsl:value-of select="age" />
              </td>
              <td>
                <img src="{image}" width="200" height="150" />
              </td>

            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>