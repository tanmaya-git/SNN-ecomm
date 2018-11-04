<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.util.Const"%>
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

		<title>My JSP 'LoginUser.jsp' starting page</title>


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
				<div style="margin-top: -3px;"><jsp:include page="Menu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 100%;">
					<center>
					<img src="images/smedia.PNG"  border="0">
					
						<div class="mydiv"
							style="width: 320px; height: auto; text-align: justify;">
							<form action="<%=Const.url%>"
								onsubmit="return validator();">
								<table border="0" style="" width="305px">
									<tr>
										<td></td>
										<td style="text-align: center; font-size: 25px; color: black;">

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
											<span class="dot">*</span>
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
											<span class="dot">*</span>
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
								</table>
							
							</form>
						</div>
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