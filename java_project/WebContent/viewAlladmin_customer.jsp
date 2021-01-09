<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.util.List ,bean.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>List of All admin_customer</h2>
<%List<Customerbean> listOfAlladmin_customer =(List<Customerbean>) request.getAttribute("listOfAlladmin_customer"); %>

<table border=1>
<th>user_id</th>
<th>username</th>
<th>password</th>
<th>mobile_number</th>
<th>address</th>
<th>gender</th>
<th>state</th>

<%for(Customerbean x:listOfAlladmin_customer) { %>
<tr>
<td><%=x.getUserid() %> </td>
<td><%=x.getUsername() %> </td>
<td><%=x.getPassword() %> </td>
<td><%=x.getMobile_number() %> </td>
<td><%=x.getAddress() %></td>
<td><%=x.getGender() %> </td>
<td><%=x.getState() %></td>
<td><a href="updateadmin_customerForm?requestAction=openUpdateForm&user_id=<%=x.getUserid() %>">Update</a></td>

</tr>
<%} %>
</table>
</body>
</html>