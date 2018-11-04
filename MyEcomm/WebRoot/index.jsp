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

		<title>My JSP 'index.jsp' starting page</title>


		<link rel="stylesheet" type="text/css" href="css/a.css">

	</head>
	<body>
	<center>
		<div style="width: 1000px; height: auto; margin-top: -15px;">
			<jsp:include page="Header.jsp"></jsp:include>
			<div style="margin-top: -3px;"><jsp:include page="Menu.jsp"></jsp:include></div>

			<div style="margin-top: 0px;">
			
			<img src="images/ecposter.jpg"   style="width: 1000px; height: 300px;">
			</div>
			<div style="margin-top: -3px;">
				<jsp:include page="Footer.jsp"></jsp:include>
			</div>
		</div>
		</center>
	</body>
</html>
