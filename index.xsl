<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
    <head>
        <title>Cars Card</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css"/>
    </head>

    <body class="container mt-4">

        <h2 class="text-center mb-4">Cars Card</h2>

        <div class="row">
            <xsl:for-each select="cards/card">
            <div class="col-md-3 mb-4">
                <div class="card">
                    <img src="{images}" class="card-img-top" alt="Car Image"/>

                    <div class="card-body">
                        <h5 class="card-title">
                            <xsl:value-of select="name"/>
                        </h5>

                        <p class="card-text">Color: <xsl:value-of select="color"/></p>
                        <p class="card-text">Model: <xsl:value-of select="modal"/></p>
                        <p class="card-text">Price: <xsl:value-of select="price"/></p>
                        <p class="card-text"><xsl:value-of select="content"/></p>
                    </div>
                </div>
            </div>
            </xsl:for-each>
        </div>

    </body>
</html>
</xsl:template>
</xsl:stylesheet>
