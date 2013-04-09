<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="main"/>

<title>Filter</title>

</head>
<body>
  <div class="body">
  	<g:formRemote update="updateMe" method="Post"  url="[action:'filterResult2',controller:'filterUser']" name="filterForm">
  		<table>
  			<tr>
  				<td>Age</td>
  				<td><g:textField name="fromage"/>-<g:textField name="toage"/></td>
  			</tr>
  			<tr>
  				<td>Gender</td>
  				<td><g:radio name="gender" value="Male" checked="true"/>Male
					<g:radio name="gender" value="Female"/>Female
					</td>
  			</tr>
  			
  			<tr>
  				<td>Organization</td>
  				<td><g:select optionKey="id" optionValue="organizationName"
          		name="orgid" from="${org}" />
  				</td>
  			</tr>
  		</table>
  		<g:submitButton name="Filter" value= "Filter"/>
  	</g:formRemote>
  	<div id="updateMe" class="updateMe">
  
  </div>
  
  </div>
</body>
</html>
