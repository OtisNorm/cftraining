<cfscript>
	employee = structNew();
	employee.first_name = "Otis";
	employee["last_name"] = "Normile";
	employee.age = "56";
	employee.isAwesome = true;
	writedump(employee);
</cfscript>
