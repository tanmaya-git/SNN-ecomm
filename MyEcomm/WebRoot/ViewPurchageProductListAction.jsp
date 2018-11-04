<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dao.RegularUserMatrixDAO"%>
<%@page import="com.anand.dto.InsertProductDTO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.anand.util.MyConnection"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ViewPurchageProductListAction.jsp' starting page</title>
    
<link href="css/a.css" rel="stylesheet" type="text/css" media="all"/>

  </head>
  
  <body>
         <center>
         
          <div style="width: 1000px; height: auto; margin-top: -15px;">
			<jsp:include page="Header.jsp"></jsp:include>
			<div style="margin-top: -3px;"><jsp:include page="AdminMenu.jsp"></jsp:include></div>
			<div class="signup" style="margin-top: -1px; width: 100%;">
			<center>
		   <div style="background-color:white; margin:20px; color: black; text-align: center; height: auto; ">
         <br/> <br/>
         <h3>Product Embeddings and User Embeddings learning completed</h3>
      <p>  
      <!--  We separate user embeddings from
product embeddings and use vu and vp to denote
the learnt K-dimensional embedding for user u and
product p respectively. -->
</p>



<%

      HashMap hm=(HashMap)session.getAttribute("RegularUserMatrix");
      
      
      Set<String> product=new HashSet<String>();
      
       HashMap<String,Set<String>> hmuser=(HashMap)session.getAttribute("hmuser");
      
      InsertProductDTO dto=new InsertProductDTO();
      
      Set<String> set1=new HashSet<String>();
      
      List<String> list1=new ArrayList<String>((Set)session.getAttribute("set"));
      List<String> list2=new ArrayList<String>((Set)session.getAttribute("set"));
	int counter=0;	
	
Connection	con = new MyConnection().getDBConnection();
 %>
<br/>
<hr/>
<table border="1"   style="background-color: #F4F6F7;">
<tr style="background-color: green;color: white;"><th>#</th><th>Product 1</th><th>Product 2</th><th>Similarity</th></tr>
<%for(int i=0;i<list1.size();i++){ 
list2.remove(list1.get(i));
for(int j=0;j<list2.size();j++){
counter++;
%>



<tr style="font-family: Times New Roman;"><th><%=counter%></th><th> <%=list1.get(i) %> </th><th> <%=list2.get(j) %></th><th> <%=new RegularUserMatrixDAO().getProductSim(Integer.parseInt(list1.get(i).trim()),Integer.parseInt(list2.get(j).trim()),con)%></th></tr>

<%

}
} %>
</table>


<br/>
<hr/>

<br/>

 <table style="background-color: #F4F6F7;" border="1">
<tr style="background-color: #D0D3D4; color: white; font-size: 20px;padding: 3px;"><th>#</th><th> User </th><th>Purchased product</th></tr>
<%

List key=new ArrayList(hmuser.keySet());
for(int i=0;i<key.size();i++){ %>



<tr style="background-color: #F1C40F;font-family: Times New Roman; font-size: 15px;"><th><%=i%></th><th> <%=key.get(i) %> </th><td> <%=hmuser.get(key.get(i)) %></td></tr>

<%} %>
</table>


<br/>
<hr/>

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

