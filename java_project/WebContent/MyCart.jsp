<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">

div{
	text-align: center;
}
li{
	padding:5%;
}
tr{
margin: 50px;
}
table{
font-size: 20px;
}
</style>
</head>
<%
String product_name[]=(String[])request.getAttribute("product_name");
List<Integer> price = (List<Integer>)request.getAttribute("price");
List<Integer> quantity = (List<Integer>)request.getAttribute("quantity");
session.setAttribute("product_name", product_name);
session.setAttribute("price", price);
session.setAttribute("quantity", quantity);
%>
<%String s = "black"; %>
<body>
<form action="medicine">
	<div><h1>Welcome to Pharmacy.</h1></div>

	<div style="float: left; width: 49%">
	<ul>
	<li>Place Order</li>
	<li style="border: :1px solid black">My Cart</li>
	<li>Bill</li>
	</ul>
	</div>
	
	<center><h2 style="border:2px Red;">List of medicine to be added to cart </h2></center>

<center>
<table style="padding: 10px">
<tr>
<th>Product Name</th>
<th>Quantity</th>
<th> Price </th>
</tr>

<%for(int i =0;i<product_name.length;i++){ %>
<tr>
<td><%=product_name[i] %></td>
<td><%=quantity.get(i) %></td>
<td><%=price.get(i) %></td>
</tr>
<%}%>

</table>
</center>

<center>
<br><br><input type="submit"name="action" value="cart" ><br><br>
</center>
</form>


</body>
</html>