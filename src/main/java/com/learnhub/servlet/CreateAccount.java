package com.learnhub.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnhub.database.*;
import com.learnhub.javabeans.*;



@WebServlet("/createAccount")
public class CreateAccount extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private CreateAccountDAO createAccountDao;

    public void init() {
        createAccountDao = new CreateAccountDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String cpass = request.getParameter("cpass");
        String mobile = request.getParameter("mobile");
        String address = request.getParameter("address");
        
        Students students = new Students();
        students.setName(name);
        students.setEmail(email);
        students.setId(id);
        students.setPass(pass);
        students.setCpass(cpass);
        students.setMobile(mobile);
        students.setAddress(address);

        try {
            createAccountDao.registerStudents(students);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("Home.jsp");
    }
}