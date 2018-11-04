<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ScMenu.jsp' starting page</title>
    
	


		<link rel="stylesheet" type="text/css" href="css/menu.css" />
		<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
		<script src="css/HoverMenu.js" type="text/javascript">
</script>
	</head>

	<body>


		<ul id="nav">
			<li class="top">
				<a href="ScUserHome.jsp" class="top_link"><span>Home</span> </a>
			</li>
			<li class="top">
 					 <a href="ScSearch.jsp" class="top_link"><span>SearchProduct</span> </a>						
					</li>
					
					
					<li class="top">
 					 <a href="ScPubliacInforamtion.jsp" class="top_link"><span> Cold-Start Product Recommendation</span> </a>						
					</li>
					<li class="top">
 					 <a href="Graph.jsp" class="top_link"><span> Graph</span> </a>						
					</li>
			
			
			<li class="top">
				<a href="LogoutAction.jsp" class="top_link"><span>Logout</span>
				</a>
			</li>


		</ul>
