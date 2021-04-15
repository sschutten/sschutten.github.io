{
  "author": "Sander Schutten",
  "date": "2006-03-03T11:34:00Z",
  "description": "",
  "draft": false,
  "slug": "increase-xslt-performance-by-using-xlskey",
  "title": "Increase XSLT performance by using xls:key"
}


hlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>  </SPAN>/></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> <o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-tab-count: 1″>      </SPAN><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>  </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:key</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>     </SPAN>name</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>NumberKey</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>     </SPAN>match</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>/*[local-name()=’top’ and namespace-uri()=’http://biztalk/Conversion.schemas’]/*[local-name()=’row’ and namespace-uri()=”]</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> <o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>     </SPAN>use</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>KeyValue</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> </SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>/></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-tab-count: 1″>      </SPAN><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>  </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:template</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> match</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>/</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>      </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPA  
 N><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>ns0:Rows</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>          </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:for-each</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> select</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>/*[local-name()=’top’ and namespace-uri()=’http://biztalk/Conversion.schemas’]/*[local-name()=’row’ and namespace-uri()=” and generate-id(.) = generate-id(key(‘NumberKey’, KeyValue)[1])]</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>              </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:variable</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> name</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>current_Number</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> select</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>KeyValue</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> </SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>/></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>              </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>Data</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>                  </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>keyValue</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>            &nb  
 sp;         </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:value-of</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> select</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>$current_Number</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> </SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>/></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>                  </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”></</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>keyValue</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>                  </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:for-each</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> select</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>//row[KeyValue=$current_Number]</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>                      </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>Part</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>                          </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>PartID</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>                              </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-  
 language: EN-US”>xsl:value-of</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> select</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>nr_data</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> </SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>/></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>                          </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”></</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>PartID</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>                      </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”></</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>Part</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>                  </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”></</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:for-each</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>              </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”></</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>Data</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>          </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”></</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:for-each</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>      </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”></</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>n  
 s0:Rows</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt; mso-layout-grid-align: none”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>  </SPAN></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”></</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:template</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”></</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:stylesheet</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>></SPAN><SPAN lang=NL style=”FONT-SIZE: 8pt; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt”><o:p></o:p></SPAN></P> <P></FONT><FONT color=#000000>Explanation:</FONT><FONT color=#0000ff></P></FONT></FONT> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: maroon; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>xsl:key</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>  </SPAN>name</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>NumberKey</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>  </SPAN>match</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>/*[local-name()=’top’ and namespace-uri()=’http://biztalk/Conversion.schemas’]/*[local-name()=’row’ and namespace-uri()=”]</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”> <o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><SPAN style=”mso-spacerun: yes”>  </SPAN>use</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>=”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: black; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>KeyValue</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>”</SPAN><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: red; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><o:p></o:p></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”>/></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><FONT face=”Times New Roman” color=#000000 size=3>This creates the key. The name of the key is specified by the name attribute. The match attribute specifies the elements to be selected by the key. The use attribute specifies the element to use as the key value.</FONT></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><FONT face=”Times New Roman” color=#000000 size=3></FONT></SPAN> </P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><FONT color=#000000 size=2>key(‘NumberKey’, KeyValue)</FONT></SPAN></P> <P class=MsoNormal style=”MARGIN: 0in 0in 0pt”><SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><FONT face=”Times New Roman” color=#000000 size=3&gt  
 ;This gets all the elements that have the key value. The first parameter of this function is the name of the key. The second parameter is the lookup value. Note that this function returns a node set and therefor we select the first element in the example XSLT (<SPAN style=”FONT-SIZE: 8pt; BACKGROUND: white; COLOR: blue; FONT-FAMILY: ‘Courier New'; mso-bidi-font-size: 12.0pt; mso-highlight: white; mso-ansi-language: EN-US”><FONT color=#000000 size=2>key(‘NumberKey’, KeyValue)[1]</FONT></SPAN></FONT></SPAN>).</P>”
