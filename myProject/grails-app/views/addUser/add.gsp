<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Add User</title>
</head>
<body>
  <div class="body">
  	<g:if test="${status == '1'}">
  	<h1>User Added Successfully</h1>
  	</g:if>
 	<g:elseif test="${status == '2'}">
  	<h1>User Already Added</h1>
  </g:elseif>
  <g:else>
  	<h1>Add New User</h1>
  </g:else>
  <g:form method="post" action="addOperation" name="userForm">
  <table>
  	<tr>
  		<td>User Name</td>
  		<td><g:textField name="name"/></td>
  	</tr>
  	<tr>
  		<td>Password</td>
  		<td><g:passwordField name="password"/></td>
  	</tr>
  	<tr>
  		<td>Age</td>
  		<td><g:textField name="age"/></td>
  	</tr>
  	<tr>
  		<td>Gender</td>
  		<td><g:radio name="gender" value="Male" checked="true"/>Male
			<g:radio name="gender" value="Female"/>Female
		</td>
  	</tr>
  	<tr>
  		<td>Organization</td>
  		<td>
  			<g:select optionKey="id" optionValue="organizationName"
          		name="orgid" from="${org}" />
  		</td>
  	</tr>
  </table>
  <g:submitButton name="Add"/>
  </g:form>
  </div>
</body>
</html>