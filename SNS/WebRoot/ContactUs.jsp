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

		<title>My JSP 'ContactUs.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />

	</head>
	<body>
		<center>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include page="Menu.jsp"></jsp:include></div>

				<div class="signup" style="margin-top: -1px; width: 100%;">
					<center>
						<br />
						<br />
						<br />
						<h1>
							Contact Us
						</h1>
						<h3>
							Naresh i Technologies
						</h3>
						<h5>
							Satyam Theatre Rd, Ameerpet, Hyderabad, Andhra Pradesh 500016
						</h5>


						<br />
						<br />
						<br />
						<br />
						<br />
					</center>
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
