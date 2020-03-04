<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h1 align="center">Annuaire</h1>
<h2>La liste des personnes</h2>
<table border="2" cellspacing="2" cellpading="3" align="center">
<tr align="center"><td>Nom</td><td>Prénom</td><td>Adresse</td></tr>
<xsl:for-each select="annuaire/personne">
<tr align="center">
<td><xsl:value-of select="identite/nom"/></td>
<td><xsl:value-of select="identite/prenom"/></td>
<td><xsl:value-of select="identite/adresse/rue"/><br/>
<xsl:value-of select="identite/adresse/code-postale"/>
<xsl:value-of select="identite/adresse/ville"/><br/>
<xsl:for-each select="identite/adresse">
<xsl:value-of select="telephone"/>
</xsl:for-each>
</td>
 </tr>
</xsl:for-each>
 </table>
 <hr/>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

