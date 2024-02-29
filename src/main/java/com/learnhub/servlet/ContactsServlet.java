package com.learnhub.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnhub.database.*;
import com.learnhub.javabeans.*;



@WebServlet("/ContactsServlet")
public class ContactsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ContactDao contactDao;

    public void init() {
        contactDao = new ContactDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String email = request.getParameter("email");
        String message = request.getParameter("message");
        
        
        ContactBean contactBean = new ContactBean();
        contactBean.setName(name);
        contactBean.setId(id);
        contactBean.setEmail(email);
        contactBean.setMessage(message);
        
        try {
			contactDao.getContact(contactBean);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        response.sendRedirect("StudentPortal.jsp");
       
    }
}