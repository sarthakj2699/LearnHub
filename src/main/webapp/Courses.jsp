<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="com.learnhub.database.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset="ISO-8859-1">
		<title>LearnHub</title>
		
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

}
html, body {
  margin: 0; padding: 0;
  height: 100%;
  background-color:white;
  overflow: hidden;
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
        
</head>
<body>
	 <div class="main">
                <ul>                                            
                    <li><a href="StudentPortal.jsp">Home</a></li>
                    <li><a href="Courses.jsp"> Courses</a></li>
                    <li><a href="Feedback.jsp">Feedback</a></li>
                    <li><a href="Contacts.jsp">Contact us</a></li>
                    <li><a href="Home.jsp">Logout</a></li>
		   			
					
                </ul>
                <h1>Available Courses</h1>
            </div>
	 <br><br><br>
    
        <%!
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;
        %>
        
        <table>
            <tr>
                <th>Course Name</th><th>Course Author</th><th>File Name</th><th>Download</th>
            </tr>
            <%
                con = DB.getConnection();
            String sql = "select * from add_courses";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
            %>
            <tr>
               
                <td><%=rs.getString(1)%></td>
                <td><%=rs.getString(2)%></td>
                <td><%=rs.getString(3)%></td>
                
                <td><a href="DownloadServlet?fileName=<%=rs.getString(3)%>">Download</a></td>
            </tr>
            <%
                }
            %>
            
        </table><br>
        
    
</body>
</html>