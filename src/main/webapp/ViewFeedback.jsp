<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "learnhub";
String userid = "root";
String password = "root@123";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
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
 
 .table {
	width: 600px;
	height: auto;
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

table, td, th {  
  border: 1px solid #ddd;
  text-align: left;
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 15px;
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
                    <li><a href="AddCourses.jsp">Add Courses</a></li>
                    <li><a href="ViewFeedback.jsp">View Feedback</a></li>
                    <li><a href="ViewStudents.jsp">View Students</a></li>
                    <li><a href="AdminPortal.jsp">Logout</a></li>
		   
					
                </ul>
            </div>
     <div class="table">
			<h1>Students Feedback</h1><br>
			<table >
			
			<tr>
			<td>Name</td>
			<td>Email</td>
			<td>Feedback</td>
		
			
			</tr>
			
			<%
			try{
			connection = DriverManager.getConnection(connectionUrl+database, userid, password);
			statement=connection.createStatement();
			String sql ="select * from feedback";
			resultSet = statement.executeQuery(sql);
			while(resultSet.next()){
			%>
			<tr>
			<td><%=resultSet.getString("name") %></td>
			<td><%=resultSet.getString("email") %></td>
			<td><%=resultSet.getString("feedback") %></td>
			
			</tr>
</div>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>