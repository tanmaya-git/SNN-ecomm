<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    <title>My JSP 'EcommUserHome.jsp' starting page</title>
  
<link href="css/a.css" rel="stylesheet" type="text/css" media="all"/>
  </head>  
  <body>
   <center>
<div style="width: 1000px; height: auto; margin-top: -15px;">
			<jsp:include page="Header.jsp"></jsp:include>
			<div style="margin-top: -3px;"><jsp:include page="EcommUserMenu.jsp"></jsp:include></div>
			<div class="signup" style="margin-top: -1px; width: 100%;">
			<center>
		
                 <div style="background-color:white; margin-top: -5px; color: black; font-size: 30px; text-align: center; height: 300px; ">
         <br/> <br/>
      <img src="images/welcomeback.gif" wd3__shadow_src="images/welcomeback.gif" border="0">
      
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