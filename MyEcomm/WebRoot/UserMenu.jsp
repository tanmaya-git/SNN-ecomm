<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserMenu.jsp' starting page</title>
    
	<link href="css/menu.css" rel="stylesheet" type="text/css" media="all"/>
<script src="css/HoverMenu.js" type="text/javascript"></script>
  </head>
  
  <body>
  
  
 		 <ul id="nav">
 		 			<li class="top">
 					 <a href="UserHome.jsp" class="top_link"><span>User Home</span> </a>						
					</li>
					<li class="top">
 					 <a href="ViewProductUser.jsp" class="top_link"><span>ViewProduct</span> </a>						
					</li>
					<li class="top">
 					 <a href="UserPubliacInforamtion.jsp" class="top_link"><span>ViewRecommendedProduct</span> </a>						
					</li>
					
					<li class="top">
 					 <a href="Graph.jsp" class="top_link"><span>Graph</span> </a>						
					</li>
					<li class="top">
						<a href="ChangePassword.jsp" class="top_link"><span>ChangePassword</span></a>
					</li>
					<li class="top">
						<a href="LogoutAction.jsp" class="top_link"><span>Logout</span> </a>
					</li>
		</ul>         
                      
                      </body>
</html>
