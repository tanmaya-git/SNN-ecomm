<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  <link href="css/a.css" rel="stylesheet" type="text/css" media="all"/>
<script language="JavaScript" type="text/javascript" src="scripts/ts_picker.js"></script>
  </head>
  
  <body>
   <center>
<div style="width: 1000px; height: auto; margin-top: -15px;">
			<jsp:include page="Header.jsp"></jsp:include>
			<div style="margin-top: -3px;"><jsp:include page="EcommUserMenu.jsp"></jsp:include></div>
			<div class="signup" style="margin-top: -1px; width: 100%;">
			<center>	
			
			
				<br/>
				<br/>
				<br/>
<form action="./SearchAction"  name="event1" onsubmit="return validate()">
					<table>
						<tr>
							<td colspan="2" style="">
								
							</td>
						</tr>
						<tr>
						<td style="text-align: center;" colspan="2">
							<img src="images/wordSearch.PNG" />
							</td>
						</tr>
						<tr>
							
							<td style="text-align: center;">
								<input type="text" name="s" id="s"	class="input_password" value="" style="width: 500px;height: 40px;font-size: large;">
								</td>
								<td>
								<input type="image" src="images/seach.png"/>
							</td>								
						</tr>                  
					</table>
				</form> 
				
				<br/>
				<br/>
				<br/>
				
				</center>
			</div>
			<div style="margin-top: -3px;">
				<jsp:include page="Footer.jsp"></jsp:include>
			</div>
		</div>   
		</center>
  </body>
</html>
