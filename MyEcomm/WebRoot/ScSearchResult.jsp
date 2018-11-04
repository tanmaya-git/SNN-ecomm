<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dto.InsertProductDTO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ScSearchResult.jsp' starting page</title>
    
		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />

	</head>

	<body>
		<center>

			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="ScMenu.jsp"></jsp:include></div>
				<div class="signup"
					style="margin-top: -1px; width: 1000px;; height: auto;">
<hr/>
<label
									style="color: red; font-style: italic; font-size: 25px;">
									<%
										String status = (String)session.getAttribute("smsg");
										session.setAttribute("smsg","");
										if (status != null) {
											out.println(status);
										}
									%>
								</label>
<hr/>
					<%
								String path2 = request.getRealPath("/images");
						InsertProductDTO dto = new InsertProductDTO();
						HashMap<Integer, InsertProductDTO> hm=(HashMap)session.getAttribute("euserachresulthm");
					for(int i=1;i<=hm.size();i++){
					dto=hm.get(i);				
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
							<a href="ScSearchResultProductBuy.jsp?key=<%=i%>"><img src="images/buynow.PNG" width="120px;"
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
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>