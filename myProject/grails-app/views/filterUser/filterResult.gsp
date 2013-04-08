<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Filter Result</title>
</head>
<body>
  <div class="body">
  <table>
  <tr>
  	<th>Name</th>
  	<th>Age</th>
  	<th>Id</th>
  	<th>Password</th>
  	<th>Gender</th>
  	<th>Created On</th>
  	<th>Organization</th>
  </tr>
  	<g:each in="${result}">
  	<tr>
  		<td>${it.name}</td>
  		<td>${it.age}</td>
  		<td>${it.id}</td>
  		<td>${it.password}</td>
  		<td>${it.gender}</td>
  		<td>${it.dateCreated}</td>
  		<td>${it.organization.organizationName}</td>
    </tr>
	</g:each>
	</table>
  </div>
</body>
</html>