<cfsetting enablecfoutputonly="true">
<cfset variables.derbyCFC = createObject("component","derbyCFC").init(adminPassword=form.adminPassword)>
<cfset variables.success = variables.derbyCFC.createIfNotExists(name=form.name)>

<cfoutput><html>
<head>
<title>DerbyCFC</title>
<style type="text/css">
body {
	font-family: Verdana, Arial;
	font-size: 0.9em;
}
input {
	font-size: 1.2em;
}
.header {
	font-size: 1.5em;
	color: ##1f98ff;
	font-weight: bold;
	text-decoration: none;
}
.header:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
<div><a href="index.cfm" class="header">DerbyCFC</a>
<p><cfif variables.success>Database and datasource <strong>created</strong><cfelse>Database and datasource <strong>not created</strong>, most likely it already exists</cfif></p>
<p><a href="getDerbyDatasources.cfm?adminPassword=#form.adminPassword#">List Derby Datasources</a></p>
</body>
</html></cfoutput>