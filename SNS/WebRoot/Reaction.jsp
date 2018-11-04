<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dto.TweetDTO"%>
<%@page import="com.anand.dao.TweetDAO"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'Reaction.jsp' starting page</title>



	</head>

	<body>
		<%
		
		
	String username=(String)session.getAttribute("myusernamesession");
			String uid=(String)	session.getAttribute("myuidsession");
			String r = request.getParameter("r").trim();
			String pid = request.getParameter("pid").trim();
			//String uid = request.getParameter("uid");
			//String lname = request.getParameter("pass");
			TweetDTO dto = new TweetDTO();
			dto.setLikeDate("34/12/2345");
			dto.setTweetID(Integer.parseInt(pid));
			dto.setLikeName(username);
			dto.setLike(r);
			dto.setLoginID(uid);
			
			//check tweeterid and login id
			
			boolean f=new TweetDAO().checkTweetLike(dto);
			if(f==true){
			//update likes type
			new TweetDAO().updateLike(dto);
			}else{
			// new tweet
			new TweetDAO().like(dto);
			// update tweet count
			new TweetDAO().updateLikeCount(dto);
			}
			RequestDispatcher rd = request.getRequestDispatcher("UserHome.jsp");
		rd.forward(request, response);
		%>
		
		check
t={
update liketype
}
f={
insert new and update tweettable total like
}
	</body>
</html>
