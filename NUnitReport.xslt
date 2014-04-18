<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>

  <!--  <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template> -->

  <xsl:template match="test-results">
    <html>
      <head>
        <style type="text/css">
          body
          {
          font-family:"Trebuchet MS";
          }
          details
          {
          width:100%;
          }
          table
          {
          border:"1";
          width:100%;
          }
          thead
          {
          background-color:lightgrey;
          }
          tr.success
          {
          background-color:lightgreen;
          }
          tr.failure
          {
          background-color:red;
          }
          tr.inconclusive
          {
          background-color:yellow;
          }
          tr.failure-details
          {
          background-color:lightpink;
          font-size:10px;
          text-indent:10px;
          }
          tr.reason
          {
          background-color:lightgrey;
          font-size:10px;
          text-indent:10px
          }
        </style>
      </head>
      <body>
        <h1>Test Results</h1>
        <p>Run on <xsl:value-of select="@date"/>, <xsl:value-of select="@time"/>
      </p>
        <xsl:apply-templates />
      </body>
    </html>
  </xsl:template>
  <xsl:template match="test-suite[@type='TestFixture']">
    <h2>
      <xsl:value-of select="@name"/>
    </h2>
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>Status</th>
          <th>Time (s)</th>
          <th>Asserts</th>
        </tr>
      </thead>
      <tbody>
        <xsl:apply-templates/>
       <!-- <tr class="pass">
          <td>ImportSmokeTest</td>
          <td>Pass</td>
          <td>1.023</td>
        </tr>
        <tr class="fail">
          <td>ImportSmokeTest2</td>
          <td>Fail</td>
          <td>1.023</td>
        </tr>
        <tr class="fail-details">
          <td colspan="3">exception</td>
        </tr>
        <tr class="not-run">
          <td>ImportSmokeTest3</td>
          <td>Not Run</td>
          <td>1.023</td>
        </tr>-->
      </tbody>
    </table>
  </xsl:template>
  
  <xsl:template match="test-case">
    <tr class="{@result}">
      <td>
        <xsl:value-of select="@name"/>
      </td>
      <td>
        <xsl:value-of select="@result"/>
      </td>
      <td>
        <xsl:value-of select="@time"/>
      </td>
      <td>
        <xsl:value-of select="@asserts"/>
      </td>
    </tr>
    <xsl:apply-templates />
  </xsl:template>

  <xsl:template match="failure">
    <tr class="failure-details">
      <td colspan="4">
        <xsl:value-of select="message" />
        <br />
        <xsl:value-of select="stack-trace" />
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="reason">
    <tr class="reason">
      <td colspan="4">
        <xsl:value-of select="message" />
      </td>
    </tr>
  </xsl:template>
</xsl:stylesheet>
