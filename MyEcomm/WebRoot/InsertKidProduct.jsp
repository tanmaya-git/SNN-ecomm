<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'InsertKidProduct.jsp' starting page</title>
    
		<link href="css/a.css" rel="stylesheet" type="text/css" media="all" />

	</head>

	<body>
		<center>

			<div style="width: 1000px; height: auto; margin-top: -15px;">
				<jsp:include page="Header.jsp"></jsp:include>
				<div style="margin-top: -3px;"><jsp:include
						page="AdminMenu.jsp"></jsp:include></div>
				<div class="signup" style="margin-top: -1px; width: 100%;">
					<center>

						<div style="">
							<br />
							<h2>
								Insert new Kid Product
							</h2>
							<br />

							<form action="InsertProductAction">
							
							
							<input type="hidden" name="category" value="Kid">
								<table>
									<tr>
										<td>
											Product Name
										</td>
										<td>
											<input type="text" name="productName" id="pname" value="">
										</td>
									</tr>
						
									<tr>
										<td></td>
										<td>
										<input type="hidden" name="category" value="Kid">
										</td>
									</tr>
									<tr>
										<td style="width: 160px;">
											Select SubCategory
										</td>
										<td>
											<select name="subCategory" id="cat4">
												<option value="">
													---Select---
												</option>
												<option value="KidFootwear">
													Kid Footwear
												</option>
												<option value="KidClothing">
													Kid Clothing
												</option>
											</select>
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td colspan="2">
											<table id="mwk">
												<tr>
													<td style="width: 160px;">
														Company Name
													</td>
													<td>
														<input type="text" name="companyName" />
													</td>
												</tr>
												<tr>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td>
														Size
													</td>
													<td>
														<input type="text" name="size" />
													</td>
												</tr>
												<tr>
													<td></td>
													<td></td>
												</tr>
												<tr>
													<td>
														Color
													</td>
													<td>
														<input type="text" name="color" />
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
									</tr>

									<tr>
										<td>
											Price
										</td>
										<td>
											<input type="text" name="price" />
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td>
											Picture
										</td>
										<td>
											<input type="file" name="picture" />
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td>
											Description
										</td>
										<td>
											<textarea name="productDescription" rows="5" cols="40"></textarea>
										</td>
									</tr>
									<tr>
										<td></td>
										<td></td>
									</tr>
									<tr>
										<td></td>
										<td>
											<input type="Submit" name="btn" value="Submit Product Info" />
										</td>
									</tr>


								</table>
							</form>
							<br />
							<br />

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
