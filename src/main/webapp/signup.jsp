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
	top: 7%;
	left: 10%;
	font-family: Gloss_And_Bloom;
	transform: translate(-50%, -50%);
	font-size: 20px;
}

.signup {
	text-align: center;
	width: 200%;
	height:1000%;
	background-color: black;
	opacity: 0.6;
	color: white;
	position: absolute;
	padding: 80px 30px;
	transform: translate(-50%, -50%);
	font-size: 20px;
	box-sizing: border-box;
	border-radius: 10px;
	top: 500%;
	left: 500%;
}

.signup input {
	width: 100%;
	margin-bottom: 20px;
}

.signup input[type="text"], input[type="password"] {
	border: none;
	border-bottom: 1px solid white;
	background-color: transparent;
	height: 40px;
	color: white;
	font-size: 17px;
}

.signup
input[type="submit"] {
	border: none;
	height: 40px;
	background-color: white;
	color: black;
	font-size: 20px;
	border-radius: 20px;
}
</style>
<head>
<title>LearnHub</title>

</head>


<body>
	<header>
		<div class="main">
			<ul>
				<li><a href="Home.jsp">SIGN IN</a></li>
			</ul>
		</div>



		<div class="title">
			<h1>LearnHub</h1>
			<br>
			<div class="image">
			
			</div>
			

			<div class="signup">

				<h1
					style="margin: 0; padding: 0 0 40px; text-align: center; font-size: 22px">Register
					Here</h1>
				<form action="<%=request.getContextPath()%>/CreateAccount" method="post">
					<input type="text" name="name" placeholder="Enter your Name" required> 
					<input type="text" name="email" placeholder="Enter your email id" required> 
					<input type="text" name="id" placeholder="Create Username" required>
					<input type="password" name="pass" placeholder="Enter Password" required>
					<input type="password" name="cpass"placeholder="Confirm Password" required>
					<input type="text" name="mobile" placeholder="Enter your mobile no." required>
					<input type="text" name="address" placeholder="Enter your address" required>
					<b>Upload Your Photo</b>
					<input type="file" name="photo" placeholder="Upload your photo" >
					
					<input type="submit" name="submit" value="Register">


				</form>
			</div>
	</header>

</body>
</html>