<%@page import="bean.Customerbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Found Customers</title>
</head>
<body>
<% Customerbean customer=(Customerbean)request.getAttribute("customer"); %>
<center>
<h2>The Results are</h2>
</center>
<table >
<th>User id</th>
<th>Customer name</th>
<th>Password</th>
<th>Mobile number</th>
<th>Address</th>
<th>gender</th>
<th>State</th>
<tr><%if(customer!=null){ %>
<td><%=customer.getUserid() %></td>
<td><%=customer.getUsername() %></td>
<td><%=customer.getPassword() %></td>
<td><%=customer.getMobile_number() %></td>
<td><%=customer.getAddress() %></td>
<td><%=customer.getGender() %></td>
<td><%=customer.getState() %></td>
<%} %>
</tr>
<tr>

</tr>

<tr>
<td><a href="searchCustomer.jsp"><h3>Back</h3></a></td>
</tr>
</table>

</body>
</html>