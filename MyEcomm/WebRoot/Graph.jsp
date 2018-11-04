<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.anand.dao.GraphDao"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Graph.jsp' starting page</title>
    


		<link href="css/a.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
		<script src="js/jquery.min.js" type="text/javascript">
</script>
		<script src="js/highcharts.js" type="text/javascript">
</script>

		<script type="text/javascript">

Highcharts.visualize = function(table, options) {
	// the categories
	options.xAxis.categories = [];
	$('tbody th', table).each(function(i) {
		options.xAxis.categories.push(this.innerHTML);
	});

	// the data series
	options.series = [];
	$('tr', table).each(
			function(i) {
				var tr = this;
				$('th, td', tr).each(function(j) {
					if (j > 0) { // skip first column
							if (i == 0) { // get the name and init the series
								options.series[j - 1] = {
									name : this.innerHTML,
									data : []
								};
							} else { // add values
								options.series[j - 1].data
										.push(parseFloat(this.innerHTML));
							}
						}
					});
			});

	var chart = new Highcharts.Chart(options);
}

// On document ready, call visualize on the datatable.
$(document).ready(
		function() {
			var table = document.getElementById('datatable'), options = {
				chart : {
					renderTo : 'container',
					defaultSeriesType : 'column'
				},
				title : {
					text : 'recommendation user review'
				},
				xAxis : {},
				yAxis : {
					title : {
						text : ''
					}
				},
				tooltip : {
					formatter : function() {
						return '<b>' + this.series.name + '</b><br/>' + this.y
								+ ' ' + this.x.toLowerCase();
					}
				}
			};

			Highcharts.visualize(table, options);
		});
</script>

  </head>
  
  <body>
         <center>
         
          <div style="width: 1000px; height: auto; margin-top: -15px;">
			<jsp:include page="Header.jsp"></jsp:include>
			<div style="margin-top: -3px;"><jsp:include page="ScMenu.jsp"></jsp:include></div>
			<div class="signup" style="margin-top: -1px; width: 100%;">
			<center>
		   <div style="background-color:white; margin-top: -5px; color: black; font-size: 30px; text-align: center; height: 300px; ">
         <br/> <br/>

<%

double []pr=new GraphDao().getSatisfaction();
float g=1.0f;
float a=1.10f;
float b=2.0f;


							DecimalFormat df = new DecimalFormat("00.00");
 %>

	<table
							style="margin-top: -1px; width: 100%; background-image: url(images/back1.png);">
							<tr>
								<td>
									<div style="width: 900px; height: 300px;">
										<div
											style="background-color: white; width: 200px; height: 300px; float: left;">
											<br />
											<br />
											<br />
											<br />
											<br />
											percentage (%)
										</div>

										<div id="container"
											style="width: 700px; height: 300px; float: left;">
										</div>
									</div>
									<table id="datatable" border="1" width="453" cellspacing="0"
										cellpadding="0" align="center" height="98">
										<thead>
											<tr>
												<th></th>
												<th align="center" style="color: green">
													Good
												</th>
												<th align="center" style="color: green">
													Avg
												</th>
												<th align="center" style="color: green">
													Bad
												</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th></th>
												<td align="center"><%=df.format(pr[0]*100)%></td>
												<td align="center"><%=df.format(pr[1]*100)%></td>
												<td align="center"><%=df.format(pr[2]*100)%></td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</table>
		

      
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
