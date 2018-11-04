<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'MicrobloggingFeatureSelection.jsp' starting page</title>
    

		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
		<style>
.mydiv {
	display: block;
	background-color: #edf9ed;
	border-radius: 25px;
	border: 2px solid #73AD21;
	padding: 20px;
	width: 200px;
	height: 150px;
}
</style>
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $(document).ajaxStart(function(){
        $("#wait").css("display", "block");
    });
    $(document).ajaxComplete(function(){
        $("#wait").css("display", "none");
    });
    $("button").click(function(){
        $("#txt").load("demo_ajax_load.asp");
    });
});
</script>
</head>
<body>



	
	
		<center>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="AdminMenu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 1000px;">


					<br />
					<br />
					<br />
					<br />
					<form action="MicrobloggingFeatureSelectionAction.jsp">
<table border="1">
<tr><th colspan="2">Categorisation of the microblogging features. The
number of feature dimensions are shown in
parentheses</th></tr>
<tr><td> <b><i> Categories </i></b> </td><td>  <b><i> Features </i></b> </td></tr>
<tr><td>Demographic Attributes</td><td>Gender, Age, Marital status, Education, Career, Interests</td></tr>
<tr><td>Text Attributes</td><td>Topic distributions,
Word embeddings </td></tr>
<tr><td>Network Attributes</td><td>Latent group preference</td></tr>
<tr><td>Temporal Attributes </td><td>Daily activity distribution,
Weekly activity distribution</td></tr>
</table>

					<br />
					<br />
					<table><tr><td><img src="images/arrow00.gif" width="100px;"></img></td>
					<td>
					<input type="submit" name="btn" value="Extract microblogging features
from social media"> </td> </tr></table>
					<br />
					<br />
					</form>
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
