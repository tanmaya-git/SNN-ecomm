
<%@page import="com.anand.dao.GraphDao"%><%

String  condation=request.getParameter("condation");
new GraphDao().recommendationSetisfaction(condation);

%>

<jsp:forward page="ScViewRecommendedProduct.jsp?msg=Thank you"></jsp:forward>