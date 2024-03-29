<?xml version='1.0'?>

<!-- This file is part of the book                 -->
<!--                                               -->
<!--   Abstract Algebra: Theory and Applications   -->
<!--                                               -->
<!-- Copyright (C) 1997-2014  Thomas W. Judson     -->
<!-- See the file COPYING for copying conditions.  -->

<!-- This is similar to the print version of the book, nothing electronic -->
<!-- but everything is electronic: active hyperlinks, colored text        -->
<!-- Includes Sage remarks, but none of the other Sage extras             -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Copy current file (aa-teachers-print.xsl) into mathbook/user -->
<!-- Then other imports are all relative to that directory -->

<!-- Copy  aa-teachers-latex.xsl  into  mathbook/user                 -->
<!-- aa-teachers-latex.xsl  will subsequently import  aa-teachers-common.xsl -->
<xsl:import href="aa-teachers-latex.xsl" />

<xsl:param name="latex.font.size" select="'11pt'" />

<!-- Print edition is 4 3/8 inches wide for body -->
<!-- PDF only is wider, eg better for Sage material -->
<!-- Default is "letterpaper", we could fine-tune margins if desired   -->
<!-- 1.25 inch side margins, 0.75 inch top/bottom -->
<xsl:param name="latex.geometry">
	<xsl:text>left=1.25in,right=1.25in,top=0.75in,bottom=0.75in,headsep=0.25in</xsl:text>
</xsl:param>

<!-- Makes hyperlinks, program listings, etc. active and colored -->
<!-- (This is the default, but set here just to be explicit)     -->
<xsl:param name="latex.print" select="'no'" />

<!-- Each Chapter has a <paragraphs> about Sage,      -->
<!-- which will be included by default                -->
<!-- But print copies of aa-teachers will not include        -->
<!-- the two Sage sections (discussion and exercise)  -->
<!-- This is where we kill these two sections         -->
<xsl:template match="section[title='Sage']" />
<xsl:template match="exercises[title='Sage Exercises']" />

</xsl:stylesheet>