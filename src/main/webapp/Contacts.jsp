<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LearnHub</title>
</head>
<body>

<style>
         *{
    margin: 0;
    padding: 0;
    font-family: Century Gothic;
       
         }  
    

ul{
    float: right;
    list-style-type: none;
    margin-top: 10px;
    margin-right: 30px;
    color: white;
}
.logo{
            
            background-repeat: no-repeat;
            position: absolute;
            margin-top: 150px;
            margin-right: 50px;
    
}
ul li{
    display: inline-block
}
ul li a{
    text-decoration: none;
    color: black;
    padding: 5px 20px;
    border: 1px  solid transparent;
    transition: 0.6s ease;
}
ul li a:hover{
    background-color: black;
    color:white;
}

html, body {
  margin: 0; padding: 0;
  height: 100%;
  background-color:white;
  overflow: hidden;
}


.footer{
     background-color: transparent;
     text-align: center;
    position: absolute;
  top: 95%;
  width: 100%;
  color: black;
 } 
 .contacts{
	width: 320px;
	height: 480px;
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

.contacts input {
	width: 100%;
	margin-bottom: 20px;
}

.contacts input[type="text"], input[type="text"] {
	border: none;
	border-bottom: 1px solid white;
	background-color: transparent;
	height: 40px;
	color: white;
	font-size: 17px;
}

.contacts input[type="submit"] {
	border: none;
	height: 40px;
	background-color: white;
	color: black;
	font-size: 20px;
	border-radius: 20px;
}

.contacts input[type="submit"]:hover {
	background-color: #AED6F1;
	color: white;
}


  
      
           
}


    </style>
       
    
     <body >
        <header>
            <div class="logo">
            <img src="Background.png" height="30%" width="30%" float="center">
                
            </div>
            <div class="main">
                <ul>                                            
                    <li><a href="StudentPortal.jsp">Home</a></li>
                    <li><a href="Courses.jsp">Courses</a></li>
                    <li><a href="Feedback.jsp">Feedback</a></li>
                    <li><a href="Contacts.jsp">Contact Us</a></li>
                    <li><a href="StudentPortal.jsp">Logout</a></li>
		   
					
                </ul>
            </div>
                  <div class="contacts">

					<h1 style="margin: 0; padding: 0 0 20px; text-align: center; font-size: 22px">Send Message</h1>
					 <form action="ContactsServlet" method="post">
						<input type="text" name="name" placeholder="Enter Your name" required><br>
						<input type="text" name="id" placeholder="Enter Your ID" required><br>
						<input type="text" name="email" placeholder="Enter Your email" required><br>
						<input type="text"  name="message" size="50" placeholder="Write Your Message" required>
						<input type="submit" name="submit" value="Submit">
						<h6>You can also send mail to learnhub@gmail.com</h6> 
			
				   	</form>
                </div>	
            
          
            
            <div class="footer">
            <h6>Website Managed By Sarthak Jain</h6>
                
            </div>
	
   
        </header>   
        


</body>
</html>