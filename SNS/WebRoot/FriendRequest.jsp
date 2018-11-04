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
	</head>
	<body>
		<center>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="UserMenu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 1000px;">

					<div
						style="width: 300px; height: auto; background-color: aqua; float: left;">

		<%@ include file="LeftMenu.html" %>

					</div>
					<div
						style="width: 695px; height: auto; background-color: silver; float: left;">

						<br />
						<br />

						<%
							for (int i = 0; i <1; i++) {
						%>
						<div
							style="width: 600px; height: auto; background-color: white; text-align: justify; ">

							<div
								style="width: 590px; height: 20px; background-color: lime; color: white; padding-top: 2px; padding-left: 10px;">
								Anand Verma
								12/05/2016
							</div>
							<div
								style="padding: 5px; text-align: justify; width: 580px; height: auto;">
								
<img src="images/nobody_m.original.jpg" border="0" style="width: 100px;">
				
				
							</div>
							<div
								style="width: 590px; height: auto; background-color: #4ebcff; color: white; padding-top: 2px; padding-left: 10px;">

kjlkj


							</div>
						</div>
						<br />
						<%
							}
						%>

					</div>
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
