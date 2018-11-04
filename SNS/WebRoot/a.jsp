<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'a.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

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
	padding: 5px 8px;
	background-color: #fafaf6;
	color: #333;
	border: 1px solid #d9d9d9;
}

td,th {
	display: table-cell;
	vertical-align: inherit;
}

.data_table1 {
	font-size: 12px;
	width: 240px;
	text-align: left !important;
	border-collapse: collapse;
	padding: 0 10px;
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
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
		<table class='data_table1' summary='planlist'>
			<colgroup>
				<col class='col-one'>
				<col />
			</colgroup>
			<thead>
				<tr class="actv">
					<th class='colgroup'>
						Plan Type
					</th>
					<th>
						Operator Circle
					</th>
					<th>
						Recharge value
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td style="background-color: #fffff1;">
						<b>fgdfg</b>
					</td>
					<td style="background-color: #fffff1;">
						Bihar Jharkhand
					</td>
				
					<td style="background-color: #fffff1;">
						<a href='/recharge/tariff-details.html?id=16451725'><b>View</b>
						</a>
					</td>
				</tr>
				<tr>
					<td>
						<b>fgdfg</b>
					</td>
					<td>
						Bihar Jharkhand
					</td>
					<td>
						<a href='/recharge/tariff-details.html?id=16451725'><b>View</b>
						</a>
					</td>
				</tr>

				<tr>
					<td style="background-color: #fffff1;">
						<b>fgdfg</b>
					</td>
					<td style="background-color: #fffff1;">
						Bihar Jharkhand
					</td>
					<td style="background-color: #fffff1;">
						<a href='/recharge/tariff-details.html?id=16451725'><b>View</b>
						</a>
					</td>
				</tr>
				<tr>
					<td>
						<b>fgdfg</b>
					</td>
					<td>
						Bihar Jharkhand
					</td>
					<td>
						<a href='/recharge/tariff-details.html?id=16451725'><b>View</b>
						</a>
					</td>
				</tr>


			</tbody>
		</table>
</center>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
<br/>
	</body>
</html>
