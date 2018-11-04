<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ScSearch.jsp' starting page</title>
    
	
  <link href="css/a.css" rel="stylesheet" type="text/css" media="all"/>
<script language="JavaScript" type="text/javascript" src="scripts/ts_picker.js"></script>
  </head>
  
  <body>
   <center>
<div style="width: 1000px; height: auto; margin-top: -15px;">
			<jsp:include page="Header.jsp"></jsp:include>
			<div style="margin-top: -3px;"><jsp:include page="ScMenu.jsp"></jsp:include></div>
			<div class="signup" style="margin-top: -1px; width: 100%;">
			<center>	
			
			
				<br/>
				<br/>
				<br/>
<form action="./ScSearchAction"  name="event1" onsubmit="return validate()">
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
