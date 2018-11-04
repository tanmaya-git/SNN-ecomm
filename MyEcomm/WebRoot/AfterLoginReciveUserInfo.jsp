<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.anand.dao.GetProductInforamtionDAO"%>
<%@page import="com.anand.dao.RecommendedProduct"%>
<%@page import="com.anand.dto.InsertProductDTO"%>
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

		<title>My JSP 'AfterLoginReciveUserInfo.jsp' starting page</title>

	</head>

	<body>
		<%
			HashMap UserInformationHm = new HashMap();
			UserInformationHm.put(1, request.getParameter("LOGINID").trim());
			UserInformationHm.put(2, request.getParameter("USERNAME").trim());
			UserInformationHm.put(3, request.getParameter("FCOLOR").trim());
			UserInformationHm.put(4, request.getParameter(
					"HIGHESTQUALIFICATION").trim());
			UserInformationHm.put(5, request.getParameter("OCCUPATION").trim());
			UserInformationHm.put(6, request.getParameter("DOB").trim());
			UserInformationHm.put(7, request.getParameter("GENDER").trim());
			UserInformationHm.put(8, request.getParameter("MARITALSTATUS")
					.trim());
			
		%>


		<%
			String c = request.getParameter("COUNT").trim();
			int count = Integer.parseInt(c);

			String userIn[] = new String[count];
			for (int i = 1; i <= count; i++) {
		%>
		<br />
		<%=request.getParameter(i + "")%>
		<br />
		<%
			}
		%>


		<br />

		<%
			String path2 = request.getRealPath("/images");
			String GENDER = request.getParameter("GENDER");
			String MARITALSTATUS = request.getParameter("MARITALSTATUS");
			String color = request.getParameter("FCOLOR");
			String interest = "";

			HashMap hmBook = new HashMap();
			HashMap hmKid = new HashMap();
			HashMap hmElectro = new HashMap();
			HashMap hmMen = new HashMap();
			HashMap hmWomen = new HashMap();
			HashMap hmHF = new HashMap();

			hmBook = new GetProductInforamtionDAO()
					.getBookRrecomendation(path2);
			for (int i = 1; i <= count; i++) {
				interest = request.getParameter(i + "").trim();
userIn[i-1]=interest;
System.out.println(interest);
				if (interest.equalsIgnoreCase("Shopping")) {
					hmElectro = new GetProductInforamtionDAO()
							.getProductRrecomendationMS("Electronics", color,
									path2);
					hmElectro.put(0, 1);
				} else {
					hmElectro = new GetProductInforamtionDAO()
							.getProductRrecomendationMS("Electronics", color,
									path2);
					hmElectro.put(0, 0);
				}
			}

			//==============================

			if (GENDER.equalsIgnoreCase("M")) {
				for (int i = 1; i <= count; i++) {
					interest = request.getParameter(i + "").trim();
					
System.out.println(interest);

//=================================================

hmMen = new GetProductInforamtionDAO()
								.getProductRrecomendationMS("Men", color, path2);
						hmMen.put(0, 1);
						//================================================
					if (interest.equalsIgnoreCase("Fashion")) {
						hmMen = new GetProductInforamtionDAO()
								.getProductRrecomendationMS("Men", color, path2);
						hmMen.put(0, 1);
					} else {
						hmMen = new GetProductInforamtionDAO()
								.getProductRrecomendationMS("Men", color, path2);
						hmMen.put(0, 0);
					}
				}
				if (MARITALSTATUS.equalsIgnoreCase("Married")) {
					hmWomen = new GetProductInforamtionDAO()
							.getProductRrecomendationMS("Women", color, path2);

				}
			} else if (GENDER.equalsIgnoreCase("F")) {
				for (int i = 1; i <= count; i++) {
					interest = request.getParameter(i + "").trim();
					
					
					//==================================
					
					hmWomen = new GetProductInforamtionDAO()
								.getProductRrecomendationMS("Women", color,
										path2);
						hmWomen.put(0, 1);
					//===========================================
					if (interest.equalsIgnoreCase("Fashion")) {
						hmWomen = new GetProductInforamtionDAO()
								.getProductRrecomendationMS("Women", color,
										path2);
						hmWomen.put(0, 1);
					} else {
						hmWomen = new GetProductInforamtionDAO()
								.getProductRrecomendationMS("Women", color,
										path2);
						hmWomen.put(0, 0);
					}
				}
				if (MARITALSTATUS.equalsIgnoreCase("Married")) {
					hmMen = new GetProductInforamtionDAO()
							.getProductRrecomendationMS("Men", color, path2);
					hmKid = new GetProductInforamtionDAO()
							.getProductRrecomendationMS("Kid", color, path2);
					for (int i = 1; i <= count; i++) {
						interest = request.getParameter(i + "").trim();
						if (interest.equalsIgnoreCase("Public Art")
								|| interest.equalsIgnoreCase("Food")
								|| interest.equalsIgnoreCase("Film")) {
							hmHF = new GetProductInforamtionDAO()
									.getProductRrecomendationMS(
											"HomeFurnitures", color, path2);
							hmHF.put(0, 1);
						} else {
							hmHF = new GetProductInforamtionDAO()
									.getProductRrecomendationMS(
											"HomeFurnitures", color, path2);
							hmHF.put(0, 0);
						}
					}

				}
			}
			System.out.println("===================================>>>>>>>>> "+hmBook.size());
			HashMap hmHM = new HashMap();
			int index = 0;
			
			if (hmBook.size() > 0) {
				index = index + 1;
				hmHM.put(index, RecommendedProduct
						.getRecommendedProduct(hmBook));
			}

			if (hmKid.size() > 0) {
				index = index + 1;
				hmHM
						.put(index, RecommendedProduct
								.getRecommendedProduct(hmKid));
			}
			if (hmMen.size() > 1) {
				index = index + 1;
				hmHM
						.put(index, RecommendedProduct
								.getRecommendedProduct(hmMen));
			}

			if (hmWomen.size() > 1) {
				index = index + 1;
				hmHM.put(index, RecommendedProduct
						.getRecommendedProduct(hmWomen));
			}

			if (hmElectro.size() > 1) {
				index = index + 1;
				hmHM.put(index, RecommendedProduct
						.getRecommendedProduct(hmElectro));
			}

			if (hmHF.size() > 1) {
				index = index + 1;
				hmHM.put(index, RecommendedProduct.getRecommendedProduct(hmHF));
			}

			HashMap HMResult = new HashMap();

			HashMap hmTemp = new HashMap();
			int key = 0;
			for (int i = 1; i <= hmHM.size(); i++) {
				hmTemp = (HashMap) hmHM.get(i);

				if (hmTemp.size() == 1) {
					key = key + 1;
					HMResult.put(key, hmTemp.get(1));
				} else if (hmTemp.size() == 2) {
					key = key + 1;
					HMResult.put(key, hmTemp.get(1));
					key = key + 1;
					HMResult.put(key, hmTemp.get(2));
				}
			}

			InsertProductDTO dto = new InsertProductDTO();

			System.out.println(HMResult.size());
			System.out.println(HMResult);

			for (int i = 1; i <= HMResult.size(); i++) {
				dto = (InsertProductDTO) HMResult.get(i);
				System.out.println(dto.getProductID() + "====="
						+ dto.getPrice());
			}

			UserInformationHm.put(9, userIn);
			session.setAttribute("recommendproductsession", HMResult);
			session.setAttribute("userInfosession",UserInformationHm);
			
		%>
		<jsp:forward page="ScUserHome.jsp"></jsp:forward>
	</body>
</html>
