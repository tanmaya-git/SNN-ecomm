<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dao.LoginDAO"%>
<%@page import="com.anand.dao.MyUrl"%>
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

		<title>My JSP 'LoginService.jsp' starting page</title>

		<link rel="stylesheet" type="text/css" href="css/a.css">
		<style>
.mydiv {
	display: block;
	border-radius: 25px;
	border: 3px solid red;
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
				<br/>	
				<hr/>
				<br/>

				<div style="margin-top: 0px;">


<br/>
<br/>
					<div class="mydiv"
						style="width: 600px; height: auto; text-align: center;">
						<%
							String username = "";
							String uid = request.getParameter("uid");
							String pass = request.getParameter("pass");
							String target = "Login.jsp?status=Invalid username and password";
							HashMap<Integer, String> hm = new LoginDAO()
									.loginService(uid, pass);
							if (hm.size() > 2) {
							
							String url=MyUrl.createUrl(hm);
							
							System.out.println("\n\n===========>>"+url);
								target = "http://127.0.0.1:9075/MyEcomm/LoginUser.jsp?"+url;
						%>
						<img src="images/smedia.PNG"  border="0">
						<br/>

					<font face="Verdana" size="3">	<b>ecommerce website</b> will receive:
						<br />
					your public profile and email address </font>
						<br />	<br />
						<a
							href="http://127.0.0.1:9075/MyEcomm/AfterLoginReciveUserInfo.jsp?<%=url%>"><button style="width: auto;height: 40px;background-color: #3e7bf9;color: white;padding-left: 100px;padding-right: 100px;font-size: 25px;"> <font face="Times New Roman">Continue as <%=hm.get(2) %></font></button></a>
						<br />	<br />
						<a
							href="http://127.0.0.1:9075/MyEcomm/index.jsp?status=goood" style="color: silver;"><font face="Verdana" size="4">Cancle</font></a>
						<br />	<br />					
					
						<label  style="color: red;">
					
					<img src="images/lock.png"  border="0" width="5%">
					
					 <font face="Times New Roman" size="4">	App terms privacy policy </font>
						</label>
						<%
							} else {
						%>
					<font face="Times New Roman" size="2">	Invalid user name and password</font>
						<a
							href="http://127.0.0.1:9075/MyEcomm/LoginUser.jsp?status=Invalid username and password">ok</a>
						<%
							}
						%>
					</div>
					
<br/>
<br/>
				</div>
				<div style="margin-top: -3px;">
	<br/>	<br/>
				</div>
			</div>
		</center>
	</body>
</html>