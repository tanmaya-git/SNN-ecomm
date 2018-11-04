<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dao.TweetDAO"%>
<%@page import="com.anand.dto.TweetDTO"%>
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

		<title>My JSP 'Like.jsp' starting page</title>

		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
	</head>
	<body>
		<center>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="UserMenu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 1000px;">

					<br />
					<br />
					<br />

<%	String tlike = request.getParameter("tlike"); %>
					<table style="background-color: #4ebcff;">
						<tr><td colspan="4" style="color: white;"><%=tlike %><hr/></td></tr>
						<%
							int pid = Integer.parseInt(request.getParameter("pid").trim());

							HashMap hm = new TweetDAO().getTweetLikes(pid);
							TweetDTO dto = new TweetDTO();
							for (int i = 1; i <= hm.size(); i++) {
								dto = (TweetDTO) hm.get(i);
							}
						%>
						<tr>
							<td>
								&nbsp;
							</td>
							<td>
								<%
									String like = dto.getLike().trim();
									if (like.equalsIgnoreCase("like")) {
								%>
								<img src="images/like.PNG" border="0"
									style="width: 30px; height: 30px;">
								<%
									}
									if (like.equalsIgnoreCase("love")) {
								%>
								<img src="images/love.PNG" border="0"
									style="width: 30px; height: 30px;">
								<%
									}
									if (like.equalsIgnoreCase("haha")) {
								%>
								<img src="images/haha.PNG" border="0"
									style="width: 30px; height: 30px;">
								<%
									}
									if (like.equalsIgnoreCase("wow")) {
								%>
								<img src="images/wow.PNG" border="0"
									style="width: 30px; height: 30px;">
								<%
									}
									if (like.equalsIgnoreCase("sad")) {
								%>
								<img src="images/sad.PNG" border="0"
									style="width: 30px; height: 30px;">
								<%
									}
									if (like.equalsIgnoreCase("angry")) {
								%>
								<img src="images/angry.PNG" border="0"
									style="width: 30px; height: 30px;">
								<%
									}
								%>
							</td>
							<td>
								<font size="5" face="Times New Roman" style="color: silver;"> 	&nbsp;	&nbsp; <%=dto.getLikeName()%>
								</font>
							</td>
							<td>
								&nbsp;
							</td>
						</tr>
					</table>
					<br />
					<br />
					<br />

				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
