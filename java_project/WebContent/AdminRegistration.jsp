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

}
.btn{
  width: 100%;
  background: none;
  border: 2px solid #4caf50;
  color: white;
  padding: 5px;
  font-size: 18px;
  cursor: pointer;
  margin: 12px 0;
}

.login-box {
  float: center;
  font-size: 20px;
  border-bottom: 5px #4caf50;
  margin-bottom: 90px;
  padding: 13px 0;
  color: white;
  max-width: 400px;
  margin: auto;
}
.wrapper {
	width: 1190px;
	margin: auto;
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
.logo {
	float: left;
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
<title>Admin Registration</title>
 <meta charset="UTF-8">
    <title>Admin Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet">   
</head>
<body>


<header>
<ul class="nav-area">
<li><a href="Home.jsp">Home</a></li>
<li><a href="login.jsp">Sign In</a></li>
<li><a href="About.jsp">About</a></li>
<li><a href="Contact.jsp">Contact</a></li>
</ul>
<br><br><br><br><br><br><br><br>
<div class="login-box">
<form action="addAdmin" method="Post">
<input type="hidden" name="requestAction" value="addAdmin" />
<table>
<tr>
	<td>User Id :</td>
	<td><input type="text" name="user_id" /></td>
</tr>
<tr>
	<td>User Name :</td>
	<td><input type="text" name="username" /></td>
</tr>
<tr>
	<td>Password :</td>
	<td><input type="text" name="password" /></td>
</tr>
<tr>
	<td>Mobile No. :</td>
	<td><input type="text" name="mobile_number" /></td>
</tr>
<tr>
	<td>Address :</td>
	<td><input type="text" name="address" /></td>
</tr>
<tr>
	<td>Gender :</td>
	<td>
	<input type="radio" id="Male" name="gender" value="Male"/>
	<label for="male">Male</label>
	<input type="radio" id="Female" name="gender" value="Female" />
	<label for="female">Female</label>
	<input type="radio" id="other" name="gender" value="other"/>
	<label for="other">Other</label>
	</td>
</tr>
<tr>
	<td>State :</td>
	<td>
	<select name="state" id="state">
					<option value="pune">Pune</option>
					<option value="mumbai">Mumbai</option>
					<option value="delhi">Delhi</option>
	
				</select>
     </td>
</tr>
<tr>
	<td><input type="submit" class="btn" value="Add Admin" /></td>
</tr>
</table>
</form>
</div>
</header>
</body>
</html>