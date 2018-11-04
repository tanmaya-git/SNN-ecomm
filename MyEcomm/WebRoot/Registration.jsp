<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Registration.jsp' starting page</title>
    
	<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
	<style type="text/css">
	ul {
  list-style-type: none;
  text-align: left;
}
	</style>
	</head>
	<body>
		<center>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include page="Menu.jsp"></jsp:include></div>

						<h3> Sign up</h3>
						
						
						<div style="width: 500px;height: auto;"> 
						 <label
											style="color: red; font-style: italic; text-align: center;">
											<%
												String status = request.getParameter("status");
												if (status != null) {
													out.println(status);
												}
											%>
										</label>
						<form action="RegistrationAction">
						<ul>
						
						<li> &nbsp; </li>
						<li> &nbsp; </li>
						<li>Enter login id</li>
						<li> <input type="text" name="login" value=""> </li>
						
						<li> &nbsp; </li>
						<li>Enter password </li>
						<li> <input type="password" name="pass" value=""> </li>
						
						<li> &nbsp; </li>
						<li>Enter Name</li>
						<li> <input type="text" name="name" value=""> </li>
						
						<li> &nbsp; </li>
						<li> <input type="submit" name="btn" value="Sign up"> </li>
						</ul>
						
						</form>
						<br/>				<br/>				<br/>				<br/>				<br/>
						
</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
