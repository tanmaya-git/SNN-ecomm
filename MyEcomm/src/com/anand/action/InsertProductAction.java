package com.anand.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.anand.dao.InsertProductDAO;
import com.anand.dto.InsertProductDTO;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class InsertProductAction extends HttpServlet {


	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String path = "InsertProduct.jsp?msg=sorry some problem occurred try later";
		InsertProductDTO dto = new InsertProductDTO();

		Map<?, ?> map = request.getParameterMap();
		try {
			BeanUtils.populate(dto, map);
		} catch (IllegalAccessException e1) {

			e1.printStackTrace();
		} catch (InvocationTargetException e1) {

			e1.printStackTrace();

		}

		
		
		System.out.println(dto.getCategory());
		boolean f = false;
		boolean f1 = false;

		if (dto.getCategory().equalsIgnoreCase("Electronics")) {
			f = new InsertProductDAO().insertElectronicsProduct(dto);

		} else if (dto.getCategory().equalsIgnoreCase("Men")) {

			dto.setColor(request.getParameter("color"));
			dto.setCompanyName(request.getParameter("companyName"));

			f = new InsertProductDAO().insertMenProduct(dto);

		} else if (dto.getCategory().equalsIgnoreCase("Women")) {

			f = new InsertProductDAO().insertWomenProduct(dto);

		} else if (dto.getCategory().equalsIgnoreCase("Kid")) {

			f = new InsertProductDAO().insertKidProduct(dto);

		} else if (dto.getCategory().equalsIgnoreCase("HomeFurnitures")) {

			f = new InsertProductDAO().insertHomeFurnituresProduct(dto);

		} else if (dto.getCategory().equalsIgnoreCase("Book")) {

			f = new InsertProductDAO().insertBookProduct(dto);

		} else {
			// please select category
			f1 = true;
		}

		if (f1 == false) {
			if (f == true) {
				path = "InsertProduct.jsp?msg=product inserted successfully";
			} else {
				path = "InsertProduct.jsp?msg=sorry some problem occurred try later";
			}
		} else {
			path = "InsertProduct.jsp?msg=please select a product category";
		}

		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
		out.flush();
		out.close();
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		doGet(request, response);
		out.flush();
		out.close();
	}

}
