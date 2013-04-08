<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
  	<h1>User successfully logged in</h1>
  	<table>
  	<tr>
  		<td>User Name</td>
  		<td>${user.name}</td>
  	</tr>
  	<tr>
  		<td>Password</td>
  		<td>${user.password}</td>
  	</tr>
  	<tr>
  		<td>Id</td>
  		<td>${user.id}</td>
  	</tr>
  	<tr>
  		<td>Date Created</td>
  		<td>${user.dateCreated}</td>
  	</tr>
  	<tr>
  		<td>Gender</td>
  		<td>${user.gender}</td>
  	</tr>
  	<tr>
  		<td>Age</td>
  		<td>${user.age}</td>
  	</tr>
  	<tr>
  		<td>Organization</td>
  		<td>${org.organizationName}</td>
  	</tr>
  	</table>
  </div>
</body>
</html>