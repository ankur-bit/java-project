<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
String s = (String)request.getAttribute("medicine");
String medicine[] = s.split(",");
%>
<body>
<%--
<table>
<tr>
<td>Employee Id:</td>
<td><input type="text" name="user_id" value="<%=medicine[0] %>" /></td>
</tr>

<tr>
<td>product Id:</td>
<td><input type="text" name="user_id" value="<%=medicine.getProduct_id() %>" /></td>
</tr>


<tr>
<td>Product Name:</td>
<td><input type="text" name="product_name" value="<%=medicine.getProduct_name() %>" /></td>
</tr>


<tr>
<td>price :</td>
<td><input type="text" name="price" value="<%=medicine.getPrice() %>"/></td>
</tr>

<tr>
<td>Quantity :</td>
<td><input type="text" name="quantity" value="<%=medicine.getQuantity() %>"/></td>
</tr>

</table>
--%>

<table border="2">
<tr>
		<th>Product Id</th>
		<th>Product name</th>
		<th>Price</th>
		</tr>
<tr><%if(medicine!= null){ %>
	<td><%= medicine[0]%></td>
	<td><%= medicine[1]%></td>
	<td><%= medicine[2]%></td>
	<%} %>
	</tr>

</table>
</body>
</html>