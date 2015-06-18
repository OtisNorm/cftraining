<cfscript>
	employees = [];
	employee = {};
	employee["First_name"] = "Otis";
	employee["Last_name"] = "Normile";
	employee["Age"] = "56";
	employee["isMember"] = true;
	ArrayAppend(employees,employee);
	
	employee = {};
	employee["First_name"] = "Fred";
	employee["Last_name"] = "Mahoney";
	employee["Age"] = "26";
	employee["isMember"] = false;
	ArrayAppend(employees,employee);
	
	writedump(employees);
</cfscript>