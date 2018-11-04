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

		<title>My JSP 'ViewTweet.jsp' starting page</title>

		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
		<style>
.mydiv {
	display: block;
	background-color: #edf9ed;
	border-radius: 25px;
	border: 2px solid #73AD21;
	padding: 20px;
	width: 200px;
	height: 150px;
}
</style>
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

					<%
						HashMap hm = new TweetDAO().allTweet();
 						TweetDTO dto = new TweetDTO();
						for (int i = 1; i <= hm.size(); i++) {
							dto = (TweetDTO) hm.get(i);
					%>
					<div class="mydiv"
						style="width: 600px; height: auto; text-align: justify;">

						<div
							style="width: 590px; height: 20px; background-color: #f291b2; color: #f9fb2f; padding-top: 2px; padding-left: 10px;">
							<font size="4" face="verdana"> <label style="float: left;">
									<%=dto.getTweeterName()%></label> <label style="float: right;">
									<%=dto.getTweetDate()%>
									&nbsp; &nbsp;
								</label> </font>
						</div>
						<div
							style="padding: 10px; text-align: justify; width: 580px; height: auto; background-color: white;">
							<font size="3" face="arial"><%=dto.getTweet()%></font>
						</div>
						<div
							style="width: 590px; height: auto; background-color: #4ebcff; color: white; padding-top: 2px; padding-left: 10px;">

							<a href="Reaction.jsp?r=like&pid=<%=dto.getTweetID()%>"
								style="text-decoration: none;"> <img src="images/like.PNG"
									border="0" style="width: 30px; height: 30px;"> </a> &nbsp;
							<a href="Reaction.jsp?r=love&pid=<%=dto.getTweetID()%>"
								style="text-decoration: none;"> <img src="images/love.PNG"
									border="0" style="width: 30px; height: 30px;"> </a> &nbsp;
							<a href="Reaction.jsp?r=haha&pid=<%=dto.getTweetID()%>"
								style="text-decoration: none;"> <img src="images/haha.PNG"
									border="0" style="width: 30px; height: 30px;"> </a> &nbsp;
							<a href="Reaction.jsp?r=wow&pid=<%=dto.getTweetID()%>"
								style="text-decoration: none;"> <img src="images/wow.PNG"
									border="0" style="width: 30px; height: 30px;"> </a> &nbsp;
							<a href="Reaction.jsp?r=sad&pid=<%=dto.getTweetID()%>"
								style="text-decoration: none;"> <img src="images/sad.PNG"
									border="0" style="width: 30px; height: 30px;"> </a> &nbsp;
							<a href="Reaction.jsp?r=angry&pid=<%=dto.getTweetID()%>"
								style="text-decoration: none;"> <img src="images/angry.PNG"
									border="0" style="width: 30px; height: 30px;"> </a>
							<a
								href="Like.jsp?pid=<%=dto.getTweetID()%>&tlike=<%=dto.getTotalLike()%>"
								style="color: silver; font-size: 25px;"><label>
									<%=dto.getTotalLike()%>
								</label> </a>
						</div>
					</div>
					<br />
					<%
						}
					%>

				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>