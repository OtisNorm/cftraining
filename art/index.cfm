<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>cf101</title>
<cfinclude template="../includes/head.cfm" />
</head>
<body>
<!--- use cfquery to select all the art in the cfartgallery database --->

<CFQUERY NAME="a" DATASOURCE="cfartgallery">
	SELECT *  
  	FROM ART 
	
 </cfquery>

 <ol>
 <cfoutput query="a">
<LI> #ARTNAME#  #DESCRIPTION#  #PRICE#</LI>

<a href="details.cfm?artname=#ARTNAME#">
 </cfoutput>

</OL>
<cfinclude template="../includes/nav.cfm" />
<div class="container">
<!--- use cfoutput to display the art from the query. display the art name, the description and the price --->
<!--- next, make each list item a link to details.cfm, pass the artid on the url --->
<!--- bonus - format the price to use dollars --->

</div>
</body>
</html>