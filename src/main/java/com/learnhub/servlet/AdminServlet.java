package com.learnhub.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnhub.database.AdminDao;
import com.learnhub.javabeans.AdminBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		AdminBean adminBean = new AdminBean();
		adminBean.setUsername(username);
		adminBean.setPassword(password);
		
		AdminDao adminDao = new AdminDao();
		if (adminDao.validate(adminBean))
		    {
			     response.sendRedirect("AdminPortal.jsp");
			
		    }
		else 
		{
			response.sendRedirect("AdminPortal.jsp");
		}
	}

}
