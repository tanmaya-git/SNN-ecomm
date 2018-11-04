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

		<title>My JSP 'InsertProduct.jsp' starting page</title>



		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />




	</head>

	<body>
		<center>

			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="AdminMenu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 100%;">
					<center>

						<div style="">
							<br />

							<br />
							<br />

							<br />


							<h2 style="color: gray; font-family: sans-serif;">
								<%
									String msg = request.getParameter("msg");

									if (msg != null) {
										out.print(msg);
									}
								%>
							</h2>
							<br />

							<br />
							<br />
							<br />

						</div>
					</center>
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
