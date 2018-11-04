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

		<title>My JSP 'Login.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript">
function validator() {

	document.getElementById("msguid").innerHTML = "";
	document.getElementById("msgpass").innerHTML = "";

	if (document.getElementById("uid").value == "") {

		document.getElementById("msguid").innerHTML = "Plealse Enter User ID";
		return false;
	} else if (document.getElementById("pass").value == "") {

		document.getElementById("msgpass").innerHTML = "Plealse Enter Password";
		return false;
	}

}
</script>
	</head>
	<body>
		<center>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include page="Menu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 100%;">
					<center>

						<form action="./LoginAdminAction" onsubmit="return validator();">
							<br/>	<br/>	<br/>
							<table border="0" style="" width="350px">

								<tr>
									<td style="text-align: left;" colspan="2">
										<h2>
											Login
										</h2>
										<hr />
									</td>
								</tr>
								<tr>
									<td colspan="2" style="">
										<label
											style="color: red; font-style: italic; text-align: center;">
											<%
												String status = request.getParameter("status");
												if (status != null) {
													out.println(status);
												}
											%>
										</label>

									</td>
								</tr>
								<tr>
									<td>
										Login ID :
									</td>
									<td>
										<input type="text" name="uid" id="uid" value="">
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										<label id="msguid"
											style="color: red; font-size: 16px; font-style: italic;"></label>

									</td>
								</tr>
								<tr>
									<td>
										Password :
									</td>
									<td>
										<input type="password" name="pass" id="pass" value="">

									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										<label id="msgpass"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										<input type="submit" value="LOGIN">
									</td>
								</tr>

								<tr>
									<td style="text-align: left;" colspan="2">
										<hr />
										<h4>
											Recover your social account
										</h4>
										<a href="LoginUser.jsp"> <img src="images/signInWithSM.png" border="0">	 </a>
									</td>
								</tr>
							</table>
						</form>
							<br/>	<br/>	<br/>
					</center>
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
