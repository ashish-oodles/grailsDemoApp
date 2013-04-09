
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
