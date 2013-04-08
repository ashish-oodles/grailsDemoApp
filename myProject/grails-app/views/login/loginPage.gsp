<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Insert title here</title>
</head>
<body>
  <div class="body">
  <g:form action="loginOperation" method="post" name="loginForm">
  	<table>
  	<tr>
  		<td>User name</td>
  		<td><g:textField name="name"/>
  	</tr>
  	<tr>
  		<td>Password</td>
  		<td><g:passwordField name="password"/></td>
  	</tr>
  	</table>
  	<g:submitButton name="Login"/>
  </g:form>
  </div>
</body>
</html>