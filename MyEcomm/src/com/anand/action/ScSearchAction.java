package com.anand.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.anand.dao.SearchDAO;

public class ScSearchAction extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {

response.setContentType("text/html");
PrintWriter out = response.getWriter();
String search = request.getParameter("s");
String s = search.toUpperCase();
String msg = "Sorry try again !!!!!";
HttpSession session = request.getSession();

String path2 = request.getRealPath("/images");

	HashMap hmv = new SearchDAO().search(s.trim(),path2);
if(hmv.size()>0){
		msg = "Showing results for "+search;
}
		session.setAttribute("euserachresulthm", hmv);

session.setAttribute("smsg", msg);
RequestDispatcher rd = request.getRequestDispatcher("ScSearchResult.jsp");
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
