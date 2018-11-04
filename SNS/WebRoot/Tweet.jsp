<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

		<title>My JSP 'UserHome.jsp' starting page</title>


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

						<form action="./TweetAction" method="post">
							<div class="mydiv"
								style="width: 600px; height: auto;  text-align: justify;">

								<div
									style="width: 600px; height: auto; background-color: #f291b2;  padding-top: 2px;color: white;">
								<font size="6" face="Times New Roman"> &nbsp;	What's on your mind</font>
								</div>
								<div
									style="text-align: justify; width: 580px; height: auto;">
									<textarea style="width: 599px;height: 200px;" name="mytweet"></textarea>
								</div>
								<div
									style="width: 590px; height: 23px; background-color: #f291b2; color: white; padding-top: 2px; padding-left: 10px;">
								<label  style="float: left;">	<font face="Times New Roman"> Select Tweet Category: </font></label>
									<select name="tc"  style="float: left;">
										<option value="FamilyActivities">
											Family Activities
										</option>

										<option value="Fashion">
											Fashion
										</option>
										<option value="Film">
											Film
										</option>
										<option value="Food">
											Food
										</option>
										<option value="Gardens">
											Gardens
										</option>
										<option value="Medicine">
											Medicine
										</option>
										<option value="Museums">
											Museums
										</option>
										<option value="Music">
											Music
										</option>
										<option value="Art">
											Art
										</option>
										<option value="Shopping">
											Shopping
										</option>
										<option value="Zoo">
											Zoo
										</option>
										<option value="Sports">
											Sports
										</option>
										<option value="Health">
											Health
										</option>
									</select>
									<input type="submit" name="btn" value="Post" style="float: right;margin-right: 2px;background-color: silver;">
							</div>
							</div>
						</form>

				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
