<!---validate parameters--->
<cfparam name="form.first_name" default=" " >
<cfparam name="form.last_name" default=" ">

<!---is it alphabetic--->

<cfif NOT isDefined("form.last_name") OR isNumeric(form.last_name) or Len(form.last_name)LT 3>
	<cflocation url="search.cfm" addtoken="no" />

</cfif>


<cfif isNumeric(form.first_name)>
	<cflocation url="search.cfm" addtoken="no" />
</cfif>

<!---Query the database using passed search terms--->

<cfquery name="q" datasource="#dsn#" result="info">
	SELECT *  
  FROM employees 
  
	<!--- add a WHERE clause based on passed parameters  --->
  WHERE first_name LIKE '#form.first_name#%'
  AND last_name LIKE '#form.last_name#%'
 
</cfquery>

<!---did we get any hits?--->

<!---if so display sorry dude--->
<!---if yes display search results--->

<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>cf101</title>
<cfinclude template="../includes/head.cfm" />
</head>

<body>
<cfinclude template="../includes/nav.cfm" />
<div class="container">
<cfdump var= "#form#"/>
<!---<cfdump var= "#q.recordcount#" />--->
<ol class="list-group" >

<cfoutput query="info" maxrows="100">
<li class= "list-group-item"><a href="details.cfm?emp_no=#q.emp_no#">#last_name#, #first_name#</a></li>
</cfoutput>
</ol>

</div>
</body>
</html>