<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dao.RegularUserMatrixDAO"%>
<%@page import="com.anand.dto.InsertProductDTO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'PerformEmbeddings.jsp' starting page</title>
    
	
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
         <br/> <br/>
      
      
      
    <table border="1" style="background-color: #D5F5E3;padding: 5px;margin-left: 200px;">
     
     <tr><td style="padding: 5px;"> <b>#</b></td><td style="padding: 5px;"> <b> User ID </b> </td> <td style="padding: 5px;"> <b> Product ID </b> </td> <td style="padding: 5px;"> <b>Product Name</b> </td>  </tr>
     
      <% 
      HashMap hm=new RegularUserMatrixDAO().getAllUserPurchedProductInfo();
      
      session.setAttribute("RegularUserMatrix",hm);
      
      InsertProductDTO dto=new InsertProductDTO();
      
      Set<String> set=new HashSet<String>();
      
      
      Set<String> product=new HashSet<String>();
      
       HashMap<String,Set<String>> hmuser=new HashMap<String,Set<String>>();
      
      for(int i=1;i<=hm.size();i++){
      dto=(InsertProductDTO)hm.get(i);
      set.add(dto.getPurchedProductID());
      
      if(hmuser.containsKey(dto.getUserID())){
      product=hmuser.get(dto.getUserID());
      product.add(dto.getProductName());
      hmuser.put(dto.getUserID().trim(),product);
      }else{
      
 Set<String> product1=new HashSet<String>();
      product1.add(dto.getProductName());
      hmuser.put(dto.getUserID().trim(),product1);
       
      }
      
      %>
     <tr style="background-color: #F1C40F; color: white;">  <td style="padding: 5px;"><%=i%></td> <td><%=dto.getUserID()%></td>  <td style="padding: 5px;"><%=dto.getPurchedProductID()%></td> <td style="padding: 5px;"><%=dto.getProductName()%></td>   </tr>
      <%
      }
      
      session.setAttribute("set",set);
      session.setAttribute("hmuser",hmuser);
      
      %>


      </table>
      
      
      
      <br/>
      
      <form action="ViewPurchageProductListAction.jsp">
      <input type="submit" name="btn" value="Perform Product Embeddings and User Embeddings">
      </form>
     
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