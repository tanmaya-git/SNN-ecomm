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
import com.anand.dao.TweetDAO;
import com.anand.dto.TweetDTO;
import com.anand.util.CurrentDate;

public class TweetAction extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private String utype = "";
	private String username = "";

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();

		String mytweet = request.getParameter("mytweet");
		String tc = request.getParameter("tc");
		TweetDTO dto=new TweetDTO();
		dto.setTweet(mytweet.trim());
		dto.setTweetCategory(tc.trim());
		
	String username=(String)	session.getAttribute("myusernamesession");
	String userid=(String)		session.getAttribute("myuidsession");
		dto.setLoginID(userid);
		dto.setTweeterName(username);
		dto.setTweetDate(CurrentDate.getCurrentDate());
		
		boolean flag = new TweetDAO().tweet(dto);

		String target = "TweetAlertMessage.jsp?status=<label style='color: red;font-size: 20px;'>Failed to send your message. Please try later or contact administrator by other way.</label>";

		session.setAttribute("uid", request.getParameter("uid"));
		if (flag) {
			target = "TweetAlertMessage.jsp?status=<label style='color: green;font-size: 20px;'>Your message was sent successfully. Thanks</label>";

		} else {
			target = "TweetAlertMessage.jsp?status=<label style='color: red;font-size: 20px;'>Failed to send your message. Please try later or contact administrator by other way.</label>";

		}
		session.setAttribute("role", utype);
		System.out.println((String) session.getAttribute("role"));
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
