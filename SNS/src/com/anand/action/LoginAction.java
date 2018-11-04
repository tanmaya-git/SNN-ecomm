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

public class LoginAction extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private String utype = "";
	private String username = "";

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		String target = "Login.jsp?status=Invalid username and password";
		String uid = request.getParameter("uid").trim();
		String pass = request.getParameter("pass").trim();
		
		if(uid.equals("admin")&&pass.equals(pass)){
			
			//=================== admin 
			
			
			target = "AdminHome.jsp?status=Welcome " + username;
			session.setAttribute("myusernamesession", username);
			session.setAttribute("myuidsession",uid);
			System.out.println(uid+"---------"+username);
			
		}else {
			
		
		username = new LoginDAO().login(uid, pass);

		if (username.length()>0) {
			target = "UserHome.jsp?status=Welcome " + username;
			session.setAttribute("myusernamesession", username);
			session.setAttribute("myuidsession",uid);
			System.out.println(uid+"---------"+username);

		} else {
			target = "Login.jsp?status=Invalid username and password";
		}
		}
		RequestDispatcher rd = request.getRequestDispatcher(target);
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
