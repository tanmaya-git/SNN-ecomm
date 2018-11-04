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

		<title>My JSP 'Registration.jsp' starting page</title>


		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />


		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
		<script language="JavaScript" type="text/javascript"
			src="scripts/ts_picker.js">
</script>

		<script type="text/javascript">
function validate() {

	document.getElementById("msguid").innerHTML = "";
	document.getElementById("msgpass").innerHTML = "";
	document.getElementById("msgcpass").innerHTML = "";
	document.getElementById("msguname").innerHTML = "";
	document.getElementById("msgemail").innerHTML = "";
	document.getElementById("msgmob").innerHTML = "";
	document.getElementById("msgeventdate").innerHTML = "";
	document.getElementById("msguaddress").innerHTML = "";
	if (document.getElementById("uid").value == "") {

		document.getElementById("msguid").innerHTML = "Please Enter Login ID";
		return false;
	}
	if (document.getElementById("pass").value == "") {

		document.getElementById("msgpass").innerHTML = "Please Enter Password";
		return false;
	}
	if (document.getElementById("cpass").value == "") {
		document.getElementById("msgcpass").innerHTML = "Please Enter Confirm Password";
		return false;
	}
	if (document.getElementById("cpass").value != document
			.getElementById("pass").value) {
		document.getElementById("msgcpass").innerHTML = "These passwords don't match. Try again?";
		return false;
	}
	var username = document.getElementById("uname");
	var filter = /^([a-zA-Z])+$/;
	if (!filter.test(username.value)) {
		document.getElementById("msguname").innerHTML = "Please Enter valid User Name";
		return false;
	}

	if (document.getElementById("email").value == "") {
		document.getElementById("msgemail").innerHTML = "Please Enter Email ID";
		return false;
	}
	if (document.getElementById("email").value != "") {
		var email = document.getElementById('email');
		var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
		if (!filter.test(email.value)) {
			document.getElementById("msgemail").innerHTML = "Please provide a valid email address";

			return false;
		}
	}

	if (document.getElementById("mob").value == "") {
		document.getElementById("msgmob").innerHTML = "Please Enter Mobile Number";
		return false;
	}
	if (document.getElementById("eventdate").value == "") {
		document.getElementById("msgeventdate").innerHTML = "Plealse Enter Date of Birth";
		return false;
	}
	if (document.getElementById("uaddress").value == "") {
		document.getElementById("msguaddress").innerHTML = "Plealse Enter Address";
		return false;
	}
	if (document.getElementById("mob").value != "") {
		var inputtxt = document.getElementById("mob").value;
		var phoneno = /^\d{10}$/;
		if (inputtxt.match(phoneno)) {
			return true;
		} else {
			document.getElementById("msgmob").innerHTML = "Not a valid Phone Number";
			return false;
		}

	}

}
</script>
	</head>

	<body>
		<center>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include page="Menu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 100%;">
					<center>
						<form action="ap.jsp" name="event1"
							onsubmit="return validate();">
							
						<h2>Registration Form</h2>
							<table>
								<tr>
									<td colspan="2" style="">
										<label
											style="color: red; font-style: italic; text-align: center;">
											<%
												String status = request.getParameter("status");
												if (status != null) {
													out.println(status);
												}
											%>
										</label>
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Login ID :
										</p>
									</td>
									<td>
										<input type="text" name="uid" id="uid" 
											value="" required="">
										<label id="msguid"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Password :
										</p>
									</td>
									<td>
										<input type="password" name="pass" id="pass"
											 value="" required="">
										<label id="msgpass"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Confirm Password :
										</p>
									</td>
									<td>
										<input type="password" name="cpass" id="cpass"
											value="" required="">
										<label id="msgcpass"
											style="color: red; font-size: 16px; font-style: italic;"></label>

									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											User Name :
										</p>
									</td>
									<td>
										<input type="text" name="uname" id="uname" 
											value="" required="">
										<label id="msguname"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Email :
										</p>
									</td>
									<td>
										<input type="text" name="email" id="email" 
											value="" required="">
										<label id="msgemail"
											style="color: red; font-size: 16px; font-style: italic;"></label>

									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Mobile No :
										</p>
									</td>
									<td>
										<input type="text" name="mob" id="mob" 
											value="" required="">
										<label id="msgmob"
											style="color: red; font-size: 16px; font-style: italic;"></label>

									</td>
								</tr>
									<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Your favorite color:
										</p>
									</td>
									<td>
										<select name="yfc">
											<option value="Green">
												Green
											</option>											
											<option value="Gold">
												Gold
											</option>
											<option value="Turquoise">
												Turquoise
											</option>
											<option value="Blue">
												Blue
											</option>
											<option value="Purple">
												Purple
											</option>											
											<option value="Pink">
												Pink
											</option>											
											<option value="Black">
												Black
											</option>
											<option value="Orange">
												Orange
											</option>
											<option value="Yellow">
												White
											</option>
											<option value="Red">
												Red
											</option>											
										</select>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Highest Qualification :
										</p>
									</td>
									<td>
									
										<select name="hq">
											<option value="10th">
												10th
											</option>											
											<option value="12th">
												12th
											</option>
											<option value="graduation">
												Graduation
											</option>
											<option value="PhD">
												PhD
											</option>
											<option value="other">
												Other
											</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Occupation :
										</p>
									</td>
									<td>										
										<select name="oc">
											<option value="engineer">
												Engineer
											</option>											
											<option value="doctor">
												Doctor
											</option>
											<option value="teacher">
												Teacher
											</option>
											<option value="former">
												Former
											</option>
											<option value="student">
												Student
											</option>
											<option value="other">
												Other
											</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Marital Status :
										</p>
									</td>
									<td>
										<select name="ms">
											<option value="Married">
												Married
											</option>											
											<option value="Single">
												Single
											</option>
										</select>									

									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Area of interests :
										</p>
									</td>
									<td style="width: 400px;">
										<input type="checkbox" name="aoi" value="Fashion" />
										Fashion
										<br />
										<input type="checkbox" name="aoi" value="Film" />
										Film
										<br />
										<input type="checkbox" name="aoi" value="Food" />
										Food
										<br />
										<input type="checkbox" name="aoi" value="Gardens" />
										Gardens
										<br />
										<input type="checkbox" name="aoi" value="Medicine" />
										Medicine
										<br />
										<input type="checkbox" name="aoi" value="Museums" />
										Museums
										<br />
										<input type="checkbox" name="aoi" value="Public Art" />
										Public Art
										<br />
										<input type="checkbox" name="aoi" value="Shopping" />
										Shopping
										<br />
										<input type="checkbox" name="aoi" value="Sports" />
										Sports
										<br />
										<input type="checkbox" name="aoi" value="Zoo"  checked="checked"/>
										Zoo
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>								
								<tr>
									<td>
										<p>
											Date of Birth :
										</p>
									</td>
									<td>
										<input type="text"  name="eventdate"
											id="eventdate" value="" style="width: 100px;"
											readonly="readonly">
										<a
											href="javascript:show_calendar('document.event1.eventdate', document.event1.eventdate.value);"><img
												src="images/cal.gif" alt="a" width="25" height="20"
												border="0" /> </a>
										<label id="msgeventdate"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Gender :
										</p>
									</td>
									<td >
										M
										<input type="radio" name="g" id="g" value="M"
											checked="checked" />
										&nbsp; F
										<input type="radio" name="g" id="g" value="F" />
									</td>
								</tr>
								<tr>
									<td>
										&nbsp;
									</td>
									<td>
										&nbsp;
									</td>
								</tr>
								<tr>
									<td>
										<p>
											Address :
										</p>
									</td>
									<td>
										<textarea name="uaddress" id="uaddress" rows="5" cols="25"></textarea>

									</td>
								</tr>
								<tr>
									<td>

									</td>
									<td>
										<label id="msguaddress"
											style="color: red; font-size: 16px; font-style: italic;"></label>
									</td>
								</tr>
								<tr>
									<td></td>
									<td>
										<input type="submit" class="submit" value="Register">
									</td>
								</tr>
							</table>
						</form>
					</center>
				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>