<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dto.InsertProductDTO"%>
<%@page import="com.anand.dao.PurchedDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'EUSearchResultProductBuy.jsp' starting page</title>
    
	
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
         
         <%
         
         int key=Integer.parseInt(request.getParameter("key"));
    
         InsertProductDTO dto = new InsertProductDTO();
						HashMap<Integer, InsertProductDTO> hm=(HashMap)session.getAttribute("euserachresulthm");
						dto=hm.get(key);
						
			String uid=(String)session.getAttribute("userid");	
			
			new PurchedDAO().orderProduct(dto,uid,"12/11/2017");
					
          %>
      
<h1 style="color: gray;">order has been placed</h1>
      <br/> <br/>
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