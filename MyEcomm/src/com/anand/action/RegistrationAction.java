package com.anand.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anand.dao.LoginDAO;

public class RegistrationAction extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		
		String uid = request.getParameter("login");
		String pass = request.getParameter("pass");
		String name = request.getParameter("name");
		
		
		
		String path = "Login.jsp?status=Invalid username and password";
		
		if(new LoginDAO().checkUser(uid)){
			

			path = "Registration.jsp?status=login  id is not available please try with other login id  !!!!!";
			
		}else {
			
			boolean f = new LoginDAO().registerUser(uid, pass,name);
			
		if (f) {

			path = "Login.jsp?status=Welcome Account is created successfully";
		} else {
			path = "Registration.jsp?status=Registration Failed  !!!!!";
		}
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		doGet(request, response);

		out.flush();
		out.close();
	}

}
