<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin_customer details</title>
</head>
<body>
<h2>admin_customer Details</h2>
<form action="admin" >
<input  type="hidden" name="requestAction" value="add"/>

<table>


<tr>
<td>Username:</td>
<td><input type="text" name="username" /></td>
</tr>


<tr>
<td>password:</td>
<td><input type="text" name="password" /></td>
</tr>

<tr>
<td>mobile_number:</td>
<td><input type="text" name="mobile_number" /></td>
</tr>

<tr>
<td>address:</td>
<td><input type="text" name="address" /></td>
</tr>

<tr>
<td>Gender:</td>
 <td><input type="radio" name="gender" value="male"> Male<br> </td>
<td><input type="radio" name="gender" value="female"> Female<br></td>
</tr> 

<tr>
<td>state:</td>
 <td><select name="state" >
 <option value="maharashtra" label="maharashtra" >
 <option value="west bengal" label="west bengal">
 <option value="madhya pradesh" label="madhya pradesh">
 <option value="punjab" label="punjab">
 <option value="assam" label="assam">
 
 </select></tr> 

<tr>
<td> &nbsp; </td>
<td> <button onclick="document.location='result.jsp'">add admin_customer</button>

</tr>

</tr>
</table>
</form>
<button onclick="document.location='index.jsp'">logout</button>

</body>
</html>