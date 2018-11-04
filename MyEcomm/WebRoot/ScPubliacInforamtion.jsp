<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ScPubliacInforamtion.jsp' starting page</title>
    
		
			<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
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
				<div style="margin-top: -3px;"><jsp:include
						page="ScMenu.jsp"></jsp:include></div>
				<div class="signup"
					style="margin-top: -1px; width: 1000px;; height: auto;">
					
					<br />
					<br />
					<label style="color: gray; font-family: serif; font-size: 25px;">
						Microblogging Information
					</label>
					<br />
					<br />
					<%
						HashMap hm = (HashMap) session.getAttribute("userInfosession");
					%>
					<table class='data_table1' summary='planlist'>
						<colgroup>
							<col class='col-one'>
							<col />
						</colgroup>
						<tr>
							<td>
								<b>User Name</b>
							</td>
							<td><%=hm.get(2)%></td>
						</tr>
						<tr>
							<td>
								<b>Your favorite color</b>
							</td>
							<td><%=hm.get(3)%></td>
						</tr>
						<tr>
							<td>
								<b>Highest Qualification</b>
							</td>
							<td><%=hm.get(4)%></td>
						</tr>
						<tr>
							<td>
								<b>Occupation</b>
							</td>
							<td><%=hm.get(5)%></td>
						</tr>
						<tr>
							<td>
								<b>Date of Birth</b>
							</td>
							<td><%=hm.get(6)%></td>
						</tr>
						<tr>
							<td>
								<b>Gender</b>
							</td>
							<td><%=hm.get(7)%></td>
						</tr>
						<tr>
							<td>
								<b>Marital Status</b>
							</td>
							<td><%=hm.get(8)%></td>
						</tr>
						<tr>
							<td>
								<b>Area of interests</b>
							</td>
							<td>
								<%
									String op[] = (String[]) hm.get(9);
									for (int i = 0; i < op.length; i++) {
								%>
								<%=op[i]%>
								,
								<%
									}
								%>

							</td>
						</tr>

					</table>
					<br />
					<br />
					<a href="ScViewRecommendedProduct.jsp"><input type="button" name="btn"  style="color: gray; font-family: serif; font-size: 17px;"
							value="View recommended product using Cold-Start Product Recommendation Microblogging Information"></a>
					<br />
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