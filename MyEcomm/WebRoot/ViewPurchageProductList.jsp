<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dao.RegularUserMatrixDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'ViewPurchageProductList.jsp' starting page</title>   

	<link href="css/a.css" rel="stylesheet" type="text/css" media="all"/>

  </head>
  
  <body>
         <center>
         
          <div style="width: 1000px; height: auto; margin-top: -15px;">
			<jsp:include page="Header.jsp"></jsp:include>
			<div style="margin-top: -3px;"><jsp:include page="AdminMenu.jsp"></jsp:include></div>
			<div class="signup" style="margin-top: -1px; width: 100%;">
			<center>
		   <div style="background-color:white; margin-top: -5px; color: black; font-size: 30px; text-align: center; height: auto; ">
       
      <center>
      
      
      <h5 style="color: gray;font-family: sans-serif;">parched product matrix</h5>
      <table style="background-color: #F4F6F7;">
      <tr><td>#</td><td style="background-color: #D0D3D4; color: white; font-size: 20px;padding: 3px;">U s e r &nbsp;  &nbsp; L i s t</td></tr>
      
      <tr><td style="background-color: #D0D3D4; color: white; font-size: 20px;padding: 3px;">P<br/>r<br/>o<br/>d<br/>u<br/>c<br/>t</td><td>
      
      
    <table border="1" style="background-color: #D5F5E3;">
       <tr style="background-color: #F1C40F;"><td>#</td>
      <% String s1="A<br/>n<br/>a<br/>n<br/>d"; 
      String s2="R<br/>a<br/>j";
      
      String s3="S<br/>n<br/>a<br/>n<br/>d";
      String s4="A<br/>n<br/>a<br/>n<br/>d";
      String s5="A<br/>n<br/>a<br/>n<br/>d";
      HashMap hmuser=new RegularUserMatrixDAO().getAllUser();
      HashMap hmproduct=new RegularUserMatrixDAO().getAllProductId();
      HashMap hm=new RegularUserMatrixDAO().getAllUserPurchedStatus();
      
      for(int i=1;i<=hmuser.size();i++){
      %>
      <td><%=hmuser.get(i)%></td>
      <%
      }
      
      
      %>
</tr>

<%

for(int i=1;i<=hmproduct.size();i++){
 %>

      <tr> <td><%=hmproduct.get(i)%></td>
      
      <%   for(int j=1;j<=hmuser.size();j++){
      %>
      <td><%
      String val=(String)hm.get(((String)hmuser.get(j))+((String)hmproduct.get(i)));
      if(hm.containsKey(((String)hmuser.get(j))+((String)hmproduct.get(i)))){
      %>
      Y
      <%
      }else{
      %>
      N
      <%
      }
      %></td>
      <%
      }     
      
      %>
      </tr>
      <%
}
 %>
      </table>
      
      
      </td></tr>
      </table>
      </center>
      
      <br/>
      
     
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