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
	background-repeat: no-repeat;
	background-size: cover;
}

.wrapper1 {
	top: 30%;
	width: 590px;	
	float: left;
}
.wrapper2 {
	
	width: 590px;	
	top: 40%;
	float: right;
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
<title>Home</title>
  <meta charset="UTF-8">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet">    
</head>
<body>
<br><br>

<header>
<ul class="nav-area">
<li><a href="Home.jsp">Home</a></li>
<li><a href="About.jsp">About</a></li>
<li><a href="Contact.jsp">Contact</a></li>
</ul>
<br>
<br>
<center>
<div class="wrapper1">
 <div class="logo">
<div> <a href="AdminLogin.jsp">
<img  alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7kQP6kcwuMDlXfhUGpvNHkP-1DMUHH5a7RA&usqp=CAU"  >    
</center>      </div>
</div>
<div class="wrapper2">
 <div class="logo">
 	<center>
         <a href="CustomerLogin.jsp">
<img  alt="" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQa6e2FcNbIPQul2pDvlPWUULTt8TEPRvE41A&usqp=CAU" >
</center>    
        </div>
 </div>
</center>

</header>


</body>
</html>