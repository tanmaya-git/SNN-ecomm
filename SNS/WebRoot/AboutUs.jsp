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

		<title>My JSP 'AboutUs.jsp' starting page</title>
		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />
	</head>
	<body>
	<!-- nnnn -->
		<center>
			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include page="Menu.jsp"></jsp:include></div>

				<div class="signup" style="margin-top: -1px; width: 900px; text-align: justify;padding: 40px;">
				
						<p>
						<h3>Abstract:</h3>
						
							In recent years, the boundaries between e-commerce and social
							networking have become increasingly blurred. Many e-commerce
							websites support the mechanism of social login where users can
							sign on the websites using their social network identities such
							as their Facebook or Twitter accounts. Users can also post their
							newly purchased products on microblogs with links to the
							e-commerce product web pages. In this paper we propose a novel
							solution for cross-site cold-start product recommendation which
							aims to recommend products from e-commerce websites to users at
							social networking sites in "cold-start" situations, a problem
							which has rarely been explored before. A major challenge is how
							to leverage knowledge extracted from social networking sites for
							cross-site cold-start product recommendation.
						</p>
						<p>
							We propose to use the linked users across social networking sites
							and e-commerce websites (users who have social networking
							accounts and have made purchases on e-commerce websites) as a
							bridge to map users' social networking features to another
							feature representation for product recommendation. In specific,
							we propose learning both users' and product' feature
							representations (called user embeddings and product embeddings,
							respectively) from data collected from e-commerce websites using
							recurrent neural networks and then apply a modified gradient
							boosting trees method to transform users' social networking
							features into user embeddings. We then develop a feature-based
							matrix factorization approach which can leverage the learnt user
							embeddings for cold-start product recommendation. Experimental
							results on a large dataset constructed from the largest Chinese
							microblogging service SINA WEIBO and the largest Chinese B2C
							e-commerce website JINGDONG have shown the effectiveness of our
							proposed framework.
						</p>

				</div>
				<div style="margin-top: -3px;">
					<jsp:include page="Footer.jsp"></jsp:include>
				</div>
			</div>
		</center>
	</body>
</html>
