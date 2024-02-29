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
.title {
    position: absolute;
    top: 50%;
    left: 50%;
    font-family: Gloss_And_Bloom;
    transform: translate(-50%,-50%);
    font-size: 50px;
    color: black;
}
.moto{
     position: absolute;
    top: 90%;
    left: 35%;
    font-family: Gloss_And_Bloom;
    transform: translate(-50%,-50%);
    font-size: 25px;	
    color: black;
    
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
                
            
            <div class="title">  
                <h5>Welcome Student To</h5><h1> LearnHub</h1><br>
                <div class="moto">
                <h4>Learn New Things Everyday.</h4>
                </div>
            </div>
            
            <div class="footer">
            <h6>Website Managed By Sarthak Jain</h6>
                
            </div>
	
   
        </header>   
        


</body>
</html>