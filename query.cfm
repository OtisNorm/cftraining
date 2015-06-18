<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>

<CFQUERY NAME="q" DATASOURCE="cfartgallery">
SELECT * 
FROM ARTISTS 
JOIN ART ON ARTISTS.ARTISTID = ART.ARTISTID
ORDER BY lastname, firstname
</CFQUERY>
<cfoutput query="q" group="lastname"> 
<h1>#lastname#</h1>
<cfoutput>#artname#<br></cfoutput>
</cfoutput>


<cfdump var= "#q#"/>

</body>
</html>