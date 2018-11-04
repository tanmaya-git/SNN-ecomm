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

public class LoginAdminAction extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		String uid = request.getParameter("uid");
		String pass = request.getParameter("pass");
		String path = "Login.jsp?status=Invalid username and password";
		String type = new LoginDAO().login(uid, pass);
		
		session.setAttribute("userid", uid);
		 session.setAttribute("role",type.trim());
		
		if (type.equalsIgnoreCase("Admin")) {
			path = "AdminHome.jsp?status=Welcome";
		}else if (type.equalsIgnoreCase("User")) {
			path = "EcommUserHome.jsp?status=Welcome";
		} else {
			path = "Login.jsp?status=Invalid username and password";
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
