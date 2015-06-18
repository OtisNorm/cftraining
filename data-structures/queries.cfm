<cfscript>
	data = queryNew("id,first_name,last_name", "integer, varchar,varchar");
	queryAddRow(data);
	querySetCell(data,"id", "1");
	querySetCell(data,"first_name", "Otis");
	querySetCell(data,"last_name", "Normile");
	writedump(data);
</cfscript>
