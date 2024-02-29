<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.learnhub.database.*"%>
<%@page import="com.learnhub.servlet.*"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LearnHub</title>
</head>
<body>

<style>
* {
	margin: 0;
	padding: 0;
	font-family: Century Gothic;
}

ul {
	float: right;
	list-style-type: none;
	margin-top: 30px;
	margin-right: 30px;
}

ul li {
	display: inline-block
}

ul li a {
	text-decoration: none;
	color: black;
	padding: 5px 20px;
	border: 1px solid transparent;
	transition: 0.6s ease;
}

ul li a:hover {
	background-color: #AED6F1;
	color: white;
}

.title {
	position: absolute;
	top: 70%;
	left: 35%;
	font-family: Gloss_And_Bloom;
	transform: translate(-50%, -50%);
	font-size: 50px;
}

.moto {
	position: absolute;
	top: 75%;
	left: 40%;
	font-family: Gloss_And_Bloom;
	transform: translate(-50%, -50%);
	font-size: 20px;
}

.signin {
	width: 320px;
	height: 380px;
	background-color: black;
	opacity: 0.6;
	color: white;
	position: absolute;
	top: 50%;
	right: 2%;
	padding: 70px 30px;
	transform: translate(-50%, -50%);
	font-size: 20px;
	box-sizing: border-box;
	border-radius: 10px;
}

.signin input {
	width: 100%;
	margin-bottom: 20px;
}

.signin input[type="text"], input[type="password"] {
	border: none;
	border-bottom: 1px solid white;
	background-color: transparent;
	height: 40px;
	color: white;
	font-size: 17px;
}

.signin input[type="submit"] {
	border: none;
	height: 40px;
	background-color: white;
	color: black;
	font-size: 20px;
	border-radius: 20px;
}

.signin input[type="submit"]:hover {
	background-color: #AED6F1;
	color: white;
}

.signin a{
	
	color: black;
	font-size: 20px;
	text-align: center;
	text-decoration: none;
}

.signin a {

	color: white;
}


</style>

		<head>
<title>LearnHub</title>

		</head>


		<body>
			<header>
				<div class="main">
					<ul>
						<li><a href="Home.jsp">Students</a></li>

						<li><a href="Admin.jsp">Admin</a></li>
					</ul>
				</div>

				<img src="Background.png" height="50%" width="50%" float="center">
				<div class="title">
					<h1>LearnHub</h1>
					<br>
					<div class="moto">
						<h4>Learn New Things Everyday</h4>
					</div>
				</div>
				<div class="signin">

					<h1 style="margin: 0; padding: 0 0 20px; text-align: center; font-size: 22px">STUDENTS LOGIN
						HERE</h1>
					 <form action="login" method="post">
						<input type="text" name="id" placeholder="Enter Username" required>
						<input type="password" name="pass" placeholder="Enter Password" required>
						<input type="submit" name="submit" value="Login"> 
						<a href="signup.jsp">Create Account</a>
						

				   	</form>


				</div>

			</header>

</body>
</html>