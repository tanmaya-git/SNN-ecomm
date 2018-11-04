<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dto.InsertProductDTO"%>
<%@page import="com.anand.dao.ExistingRecommendation"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'EcommUserExrecommendation.jsp' starting page</title>
    
	 
<link href="css/a.css" rel="stylesheet" type="text/css" media="all"/>
<style type="text/css">
body {
	background-color: #fff;
	color: #333;
	font: 14px 'Open Sans', sans-serif;
	margin: 0;
	padding: 0;
}

table {
	display: table;
	border-collapse: separate;
	border-spacing: 2px;
	border: 1px solid #d9d9d9;
}

table td {
	padding: 7px 10px;
	background-color: #fafaf6;
	color: #333;
	border: 1px solid #d9d9d9;
}

td,th {
	display: table-cell;
	vertical-align: inherit;
}

.data_table1 {
	font-size: 13px;
	width: 450px;
	text-align: left !important;
	border-collapse: collapse;
	padding: 0 15px;
	margin-bottom: 0;
	background: #f4f4f4 !important;
}

table th {
	padding: 10px 8px;
	background-color: #f1efef;
	color: #333;
	font-weight: 700;
	border: 1px solid #d9d9d9;
}

th {
	font-weight: bold;
	text-align: -internal-center;
}
</style>
  </head>  
  <body>
   <center>
<div style="width: 1000px; height: auto; margin-top: -15px;">
			<jsp:include page="Header.jsp"></jsp:include>
			<div style="margin-top: -3px;"><jsp:include page="EcommUserMenu.jsp"></jsp:include></div>
			<div class="signup" style="margin-top: -1px; width: 100%;">
			<center>
		
  <br/>
					<label style="color: #090986;font-weight: 980;">Showing Recommended Products</label>
<hr/>
					<%
								String path2 = request.getRealPath("/images");
						InsertProductDTO dto = new InsertProductDTO();
						
						String uid=(String)session.getAttribute("userid");;
						ExistingRecommendation obj=new ExistingRecommendation();
						List<String> al=obj.getProductIDPurchedByUser(uid);
						
					for(int i=0;i<al.size();i++){
					dto=obj.getExtRrecomendation(path2,al.get(i));			
					%>
					<br/>
					<br/>
					<div style="width: 950px; height: auto; background-color: white; float: inherit;">
						<div style="width: 200px; height: auto; float: left;">
							<img src="images/<%=dto.getPicture()%>" width="160px;"
								height="280px;" border="0">
						</div>
						<div style="width: 400px; height: auto; float: left;">
							<label
								style="text-align: left; font-family: sans-serif; text-decoration: none; color: #0000aa; font-size: 18px; text-decoration: blink '">
								<%=dto.getProductName()%>
							</label>
							<ul
								style="text-align: left; font-family: serif; font-size: 14px;">
								<%
									if (dto.getCategory().equalsIgnoreCase("Book")) {
								%>
								<li><%=dto.getPublication()%></li>
								<li><%=dto.getAuthor()%></li>
								<%
									} else {
								%>
								<li><%=dto.getCompanyName()%></li>
								<li><%=dto.getColor()%></li>
								<%
									if (dto.getCategory().equalsIgnoreCase("Electronics")) {
								%>
								<li><%=dto.getModelNumber()%></li>
								<%
									} else {
								%>
								<li><%=dto.getSize()%></li>
								<%
									}
									}
								%>
								<li>
									<%=dto.getProductDescription()%>
								</li>

							</ul>
						</div>
						<div style="width: 300px; height: auto; float: left;">
							<h2>
								$<%=dto.getPrice()%>
							</h2>
							<i style="color: green;"><b>cash on delivery</b> </i>
							<br />
							<br />
							<a href=""><img src="images/buynow.PNG" width="120px;"
									height="120px;" border="0"> </a>
						</div>
						<div style="width: 20px; height: 280px;">
							<br />
						</div>
					</div>
					<br /><hr/>
					<br />
<%} %>
					
					<br />
					<br />
					<br />
				
			</center>
			</div>
			<div style="margin-top: -3px;">
				<jsp:include page="Footer.jsp"></jsp:include>
			</div>
		</div>  
		</center> 
  </body>
</html>