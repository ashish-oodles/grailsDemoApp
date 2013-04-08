<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>
<title>Add Organization</title>
</head>
<body>
  <div class="body">
  <g:if test="${status == '1'}">
  	<h1>Organization Added Successfully</h1>
  </g:if>
  <g:elseif test="${status == '2'}">
  	<h1>Organization Already Added</h1>
  </g:elseif>
  <g:else>
  	<h1>Add Organization</h1>
  </g:else>
  <g:form method="post" action="addOperation" name="organizationForm">
  <table>
  	<tr>
  		<td>Organization Name</td>
  		<td><g:textField name="organizationName"/></td>
  	</tr>
  </table>
  <g:submitButton name="Add"/>
  </g:form>
  </div>
</body>
</html>