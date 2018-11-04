<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dto.RegistrationDTO"%>
<%@page import="com.anand.dao.RegistrationDAO"%>
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

		<title>My JSP 'ap.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	

	</head>

	<body>
		<%
			RegistrationDTO dto = new RegistrationDTO();
			String val = "";
			String uid = request.getParameter("uid");
			String pass = request.getParameter("pass");
			String uname = request.getParameter("uname");
			String email = request.getParameter("email");
			String mob = request.getParameter("mob");
			String yfc = request.getParameter("yfc");
			String hq = request.getParameter("hq");
			String oc = request.getParameter("oc");
			String ms = request.getParameter("ms");
			String[] aoi = request.getParameterValues("aoi");
			String eventdate = request.getParameter("eventdate");
			String g = request.getParameter("g");
			String uaddress = request.getParameter("uaddress");
			System.out.println(uid);
			System.out.println(pass);
			System.out.println(uname);
			System.out.println(email);
			System.out.println(mob);
			System.out.println(yfc);
			System.out.println(hq);
			System.out.println(oc);
			System.out.println(ms);
			System.out.println(eventdate);
			System.out.println(g);
			System.out.println(uaddress);
			dto.setLoginID(uid.trim());
			dto.setPassword(pass.trim());
			dto.setUserName(uname.trim());
			dto.setEmail(email.trim());
			dto.setMobileNo(mob.trim());
			dto.setColor(yfc.trim());
			dto.setHighestQualification(hq.trim());
			dto.setOccupation(oc.trim());
			dto.setDob(eventdate.trim());
			dto.setGender(g.trim());
			dto.setAddres(uaddress.trim());
			dto.setMaritalStatus(ms.trim());
			dto.setFashion(val);
			dto.setFilm(val);
			dto.setFood(val);
			dto.setGardens(val);
			dto.setMedicine(val);
			dto.setMuseums(val);
			dto.setPublicArt(val);
			dto.setShopping(val);
			dto.setSports(val);
			dto.setZoo(val);
			for (int i = 0; i < aoi.length; i++) {
				System.out.println(aoi[i]);
				val = aoi[i].trim();
				if (val.equalsIgnoreCase("Fashion")) {
					dto.setFashion(val);
				} else if (val.equalsIgnoreCase("Film")) {
					dto.setFilm(val);
				} else if (val.equalsIgnoreCase("Food")) {
					dto.setFood(val);
				} else if (val.equalsIgnoreCase("Gardens")) {
					dto.setGardens(val);
				} else if (val.equalsIgnoreCase("Medicine")) {
					dto.setMedicine(val);
				} else if (val.equalsIgnoreCase("Museums")) {
					dto.setMuseums(val);
				} else if (val.equalsIgnoreCase("Public Art")) {
					dto.setPublicArt(val);
				} else if (val.equalsIgnoreCase("Shopping")) {
					dto.setShopping(val);
				} else if (val.equalsIgnoreCase("Sports")) {
					dto.setSports(val);
				} else if (val.equalsIgnoreCase("Zoo")) {
					dto.setZoo(val);
				}
			}
			String target = "Registration.jsp?status=Registration Failed  !!!!!";
			boolean f = new RegistrationDAO().registerUser(dto);
			if (f == true) {
				target = "Login.jsp?status=Welcome Account is created successfully";
			} else {
				target = "Registration.jsp?status=Registration Failed  !!!!!";
			}
			RequestDispatcher rd = request.getRequestDispatcher(target);
			rd.forward(request, response);
		%>
	</body>
</html>
