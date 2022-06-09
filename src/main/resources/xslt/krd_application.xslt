<?xml version="1.0" encoding="UTF-8"?>
<!--Designed and generated by Altova StyleVision Enterprise Edition 2016 rel. 2 (x64) - see http://www.altova.com/stylevision for more information.-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:altova="http://www.altova.com" xmlns:altova-xfi="http://www.altova.com/xslt-extensions/xbrl" xmlns:altovaext="http://www.altova.com/xslt-extensions" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:clitype="clitype" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:iso4217="http://www.xbrl.org/2003/iso4217" xmlns:ix="http://www.xbrl.org/2008/inlineXBRL" xmlns:java="java" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:sps="http://www.altova.com/StyleVision/user-xpath-functions" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xff="http://www.xbrl.org/2010/function/formula" xmlns:xfi="http://www.xbrl.org/2008/function/instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="altova altova-xfi altovaext array clitype fn iso4217 ix java link map math sps xbrldi xbrli xff xfi xlink xs xsd xsi">
	<xsl:output version="4.0" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:variable name="altova:nPxPerIn" select="96"/>
	<xsl:template match="/">
		<html>
			<head>
				<title/>
				<meta name="generator" content="Altova StyleVision Enterprise Edition 2016 rel. 2 (x64) (http://www.altova.com)"/>
				<meta http-equiv="X-UA-Compatible" content="IE=9"/>
				<xsl:comment>[if IE]&gt;&lt;STYLE type=&quot;text/css&quot;&gt;.altova-rotate-left-textbox{filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3)} .altova-rotate-right-textbox{filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1)} &lt;/STYLE&gt;&lt;![endif]</xsl:comment>
				<xsl:comment>[if !IE]&gt;&lt;!</xsl:comment>
				<style type="text/css">.altova-rotate-left-textbox{-webkit-transform: rotate(-90deg) translate(-100%, 0%); -webkit-transform-origin: 0% 0%;-moz-transform: rotate(-90deg) translate(-100%, 0%); -moz-transform-origin: 0% 0%;-ms-transform: rotate(-90deg) translate(-100%, 0%); -ms-transform-origin: 0% 0%;}.altova-rotate-right-textbox{-webkit-transform: rotate(90deg) translate(0%, -100%); -webkit-transform-origin: 0% 0%;-moz-transform: rotate(90deg) translate(0%, -100%); -moz-transform-origin: 0% 0%;-ms-transform: rotate(90deg) translate(0%, -100%); -ms-transform-origin: 0% 0%;}</style>
				<xsl:comment>&lt;![endif]</xsl:comment>
				<style type="text/css">@page { margin-left:0.60in; margin-right:0.60in; margin-top:0.79in; margin-bottom:0.79in } @media print { br.altova-page-break { page-break-before: always; } }</style>
			</head>
			<body>
				<br/>
				<img style="height:0.94in; width:1.81in; ">
					<xsl:attribute name="src">
						<xsl:text>data:image/png;base64,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</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="alt"/>
				</img>
				<br/>
				<div style="position: relative">
					<div style="height:0.38in; overflow:hidden; position:relative; width:4.83in; ">
						<xsl:comment>[if IE]&gt;&lt;v:line style=&quot;height:0; left:0; position:absolute; top:0; width:0;&quot; from=&quot;0,0&quot; to=&quot;0,0&quot;&gt;&lt;/v:line&gt;&lt;![endif]</xsl:comment>
						<div style="height:0.49in; left:0in; overflow:hidden; padding:2px; position:absolute; top:0in; width:6.91in; ">
							<span style="font-family:Arial; font-size:11pt; font-weight:bold; ">
								<xsl:text>Wniosek o udostępnienie </xsl:text>
							</span>
							<xsl:if test="KrdApplicationData/ReportType = &apos;raport z informacji gospodarczej&apos;">
								<span style="font-family:Arial; font-size:11pt; font-weight:bold; ">
									<xsl:text>raportu informacji gospodarczej</xsl:text>
								</span>
							</xsl:if>
							<xsl:if test="KrdApplicationData/ReportType = &apos;raport z rejestru zapytań&apos;">
								<span style="font-family:Arial; font-size:11pt; font-weight:bold; ">
									<xsl:text>raportu rejestru zapytań</xsl:text>
								</span>
							</xsl:if>
							<br/>
						</div>
					</div>
				</div>
				<br/>
				<table border="0">
					<xsl:variable name="altova:CurrContextGrid_0" select="."/>
					<tbody>
						<tr>
							<td style="width:2.49in; ">
								<span style="font-family:Arial; font-size:10pt; font-weight:bold; ">
									<xsl:text>Dane dłużnika:</xsl:text>
								</span>
							</td>
							<td style="width:2.77in; "/>
						</tr>
						<tr>
							<td style="width:2.49in; ">
								<xsl:if test="KrdApplicationData/NumberType = &apos;PESEL&apos;">
									<span style="font-family:Arial; font-size:10pt; ">
										<xsl:text>Imię i nazwisko:</xsl:text>
									</span>
								</xsl:if>
								<span style="font-family:Arial; font-size:10pt; ">
									<xsl:text>&#160;</xsl:text>
								</span>
								<xsl:if test="KrdApplicationData/NumberType = &apos;NIP&apos;">
									<span style="font-family:Arial; font-size:10pt; ">
										<xsl:text>Nazwa:</xsl:text>
									</span>
								</xsl:if>
							</td>
							<td style="width:2.77in; ">
								<xsl:for-each select="$XML">
									<xsl:for-each select="KrdApplicationData">
										<xsl:for-each select="Debtor">
											<span style="font-family:Arial; font-size:10pt; ">
												<xsl:apply-templates/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</td>
						</tr>
						<tr>
							<td style="width:2.49in; ">
								<xsl:if test="KrdApplicationData/NumberType = &apos;PESEL&apos;">
									<span style="font-family:Arial; font-size:10pt; ">
										<xsl:text>PESEL:</xsl:text>
									</span>
								</xsl:if>
								<span style="font-family:Arial; font-size:10pt; ">
									<xsl:text>&#160;</xsl:text>
								</span>
								<xsl:if test="KrdApplicationData/NumberType = &apos;NIP&apos;">
									<span style="font-family:Arial; font-size:10pt; ">
										<xsl:text>NIP:</xsl:text>
									</span>
								</xsl:if>
							</td>
							<td style="width:2.77in; ">
								<xsl:for-each select="$XML">
									<xsl:for-each select="KrdApplicationData">
										<xsl:for-each select="Number">
											<span style="font-family:Arial; font-size:10pt; ">
												<xsl:apply-templates/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</td>
						</tr>
						<tr>
							<td style="width:2.49in; ">
								<span style="font-family:Arial; font-size:10pt; ">
									<xsl:text>Sygnatura sprawy:</xsl:text>
								</span>
							</td>
							<td style="width:2.77in; ">
								<xsl:for-each select="$XML">
									<xsl:for-each select="KrdApplicationData">
										<xsl:for-each select="Signature">
											<span style="font-family:Arial; font-size:10pt; ">
												<xsl:apply-templates/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</td>
						</tr>
					</tbody>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
