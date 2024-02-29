package com.learnhub.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.learnhub.database.*;
import com.learnhub.javabeans.*;



@WebServlet("/FeedbackServlet")
public class FeedbackServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private FeedbackDao feedbackDao;

    public void init() {
        feedbackDao = new FeedbackDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String name = request.getParameter("name");
        String id = request.getParameter("id");
        String email = request.getParameter("email");
        String feedback = request.getParameter("feedback");
        
        
        FeedbackBean feedbackBean = new FeedbackBean();
        feedbackBean.setName(name);
        feedbackBean.setId(id);
        feedbackBean.setEmail(email);
        feedbackBean.setFeedback(feedback);
        
        try {
			feedbackDao.getFeedback(feedbackBean);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        response.sendRedirect("StudentPortal.jsp");
       
    }
}