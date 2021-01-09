<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
* {
	margin: 0;
	padding: 0;
}
body {
	font-family: 'Poppins', sans-serif;
	background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url(https://imgscf.slidemembers.com/docs/1/1/244/pharmacy_pharmacist_multipurpose_presentation_keynote_template_243482.jpg);
	color: white;
	background-repeat: norepeat;
	background-size: cover;
}
form{
style="float: right;
width: 49%; border-radius:50px; border: 3px solid white"
}
.btn{
  width: 10%;
  background: none;
  border: 2px solid #4caf50;
  color: white;
  padding: 5px;
  font-size: 18px;
  cursor: pointer;

  margin: 50;
  position: absolute;
  top: 50%;
  left: 70%;
}
p{
color:white;
}

header {
	height: 100vh;
	-webkit-background-size: cover;
	background-size: cover;
	background-position: center center;
	position: relative;
}
.nav-area {
	float: right;
	list-style: none;
	margin-top: 30px;
}
.nav-area li {
	display: inline-block;
}
.nav-area li a {
	color: #fff;
	text-decoration: none;
	padding: 5px 20px;
	font-family: poppins;
	font-size: 16px;
	text-transform: uppercase;
}
.nav-area li a:hover {
	background: #fff;
	color: #333;
}

.logo img {
	width: 100%;
	padding: 15px 0;
}
.welcome-text {
	position: absolute;
	width: 600px;
	height: 300px;
	margin: 20% 30%;
	text-align: center;
}
.welcome-text h1 {
	text-align: center;
	color: #fff;
	text-transform: uppercase;
	font-size: 60px;
}
.welcome-text h1 span {
	color: #00fecb;
}
.welcome-text a {
	border: 1px solid #fff;
	padding: 10px 25px;
	text-decoration: none;
	text-transform: uppercase;
	font-size: 14px;
	margin-top: 20px;
	display: inline-block;
	color: #fff;
}
.welcome-text a:hover {
	background: #fff;
	color: #333;
}
/*resposive*/

@media (max-width:600px) {
	.wrapper {
		width: 100%;
	}
	.logo {
		float: none;
		width: 50%;
		text-align: center;
		margin: auto;
	}
	img {
		width: ;
	}
	.nav-area {
		float: none;
		margin-top: 0;
	}
	.nav-area li a {
		padding: 5px;
		font-size: 11px;
	}
	.nav-area {
		text-align: center;
	}
	.welcome-text {
		width: 100%;
		height: auto;
		margin: 30% 0;
	}
	.welcome-text h1 {
		font-size: 30px;
	}
}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Page</title>
  <meta charset="UTF-8">
    <title>Order</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet">    
</head>
<body>
<br><br>

<header>
<ul class="nav-area">
<li><a href="Home.jsp">Home</a></li>
<li><a href="login.jsp">Sign In</a></li>
<li><a href="About.jsp">About</a></li>
<li><a href="Contact.jsp">Contact</a></li>
</ul>
<br><br><br><br>
<br><br><br><br>

<%String s = "LightGrey"; %>
<body>
	<div><h1>Welcome to Pharmacy.</h1></div>

	<div style="float: left; width: 49%">
	<ul>
	<li style="background: <%=s%>">Place Order</li>
	<li>My Cart</li>
	<li>Bill</li>
	</ul>
	</div>
	
	<div>
	

<form action="medicine" >
	<center>

<table class="roundedCorners">

<tr>
<th> <h2>Product Name:</h2></th>
</tr>
<tr>
<td> 
<input id="checkbox" name="product_name"  type="checkbox" value="Crocin"/><label for="checkbox">Crocin</label>

<td>
<p ><label>Quantity:</label></p>
  </td>
  <td>
  <select id="medicine" name="quantity">
    <option value="0">0</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
  </select>
  </td>
  </tr>
<tr>
<td>
<input id="checkbox" name="product_name"  type="checkbox" value="Colonotril"/><label for="checkbox">Colonotril</label>

<td>
<p><label>Quantity:</label></p>
</td> 
<td>
<select id="medicine" name="quantity">
    <option value="0">0</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
  </select>
  </td>
</tr>
<tr>
<td>

<input id="checkbox" name="product_name"  type="checkbox" value="Abacavir"/><label for="checkbox">Abacavir</label>
<td>
<p><label>Quantity:</label></p>
</td>
<td>
<select id="medicine" name="quantity">
    <option value="0">0</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
  </select>
  </td>
</tr>
</table>
</center>
<input type="submit" class="btn" name="action" value="order" >

</form>
	
	</div>	
</body>


</header>


</body>
</html>