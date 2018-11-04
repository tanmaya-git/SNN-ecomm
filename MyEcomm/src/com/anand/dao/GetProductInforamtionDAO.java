package com.anand.dao;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.HashMap;

import com.anand.dto.InsertProductDTO;
import com.anand.util.MyConnection;

public class GetProductInforamtionDAO {
	static Connection con;

	public GetProductInforamtionDAO() {
		super();
	}

	
	
	
	
	public HashMap getBookRrecomendation(String path2) {
		HashMap hm = new HashMap();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE where UPPER(CATEGORY)='BOOK'";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				InsertProductDTO dto = new InsertProductDTO();

				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));

				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
				//	System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
				//	System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return hm;
	}
	
	//============================================================
	public HashMap getProductRrecomendationMS(String cat,String color,String path2) {
		HashMap hm = new HashMap();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE where UPPER(CATEGORY)='"+cat.toUpperCase()+"'  and UPPER(PRODUCT_COLOR)='"+color.toUpperCase().trim()+"'";
			System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				InsertProductDTO dto = new InsertProductDTO();

				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));

				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
				//	System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
				//	System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return hm;
	}
	
	
	//==================================================================
	
	public HashMap<Integer, InsertProductDTO> getProduct(String path2) {
		HashMap<Integer, InsertProductDTO> hm = new HashMap<Integer, InsertProductDTO>();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				InsertProductDTO dto = new InsertProductDTO();

				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));

				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
				//	System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
				//	System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return hm;
	}
	
	
	public HashMap<Integer, InsertProductDTO> getProductByCategory(
			String CATEGORY, String path2) {
		HashMap<Integer, InsertProductDTO> hm = new HashMap<Integer, InsertProductDTO>();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE where  UPPER(CATEGORY) LIKE '%"
					+ CATEGORY.toUpperCase().trim() + "%'";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				InsertProductDTO dto = new InsertProductDTO();
				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));
				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
				//	System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);
					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
				//	System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}

		return hm;
	}
	
	
	public HashMap<Integer, InsertProductDTO> getElectronicsProduct(
			String CATEGORY, String path2) {
		HashMap<Integer, InsertProductDTO> hm = new HashMap<Integer, InsertProductDTO>();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE where  UPPER(CATEGORY) LIKE '%"
					+ CATEGORY.toUpperCase().trim() + "%'";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				InsertProductDTO dto = new InsertProductDTO();
				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));

				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
				//	System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
				//	System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return hm;
	}



	public HashMap<Integer, InsertProductDTO> getWomenProduct(
			String CATEGORY, String path2) {
		HashMap<Integer, InsertProductDTO> hm = new HashMap<Integer, InsertProductDTO>();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE where  UPPER(CATEGORY) LIKE '%"
					+ CATEGORY.toUpperCase().trim() + "%'";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				InsertProductDTO dto = new InsertProductDTO();

				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));

				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
					//System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
				//	System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}

	

	public HashMap<Integer, InsertProductDTO> getBookProduct(
			String CATEGORY, String path2) {
		HashMap<Integer, InsertProductDTO> hm = new HashMap<Integer, InsertProductDTO>();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE where  UPPER(CATEGORY) LIKE '%"
					+ CATEGORY.toUpperCase().trim() + "%'";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				InsertProductDTO dto = new InsertProductDTO();

				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));

				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
				//	System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
				//	System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return hm;
	}

	
	

	public HashMap<Integer, InsertProductDTO> getHomeFurnituresProduct(
			String CATEGORY, String path2) {
		HashMap<Integer, InsertProductDTO> hm = new HashMap<Integer, InsertProductDTO>();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE where  UPPER(CATEGORY) LIKE '%"
					+ CATEGORY.toUpperCase().trim() + "%'";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				InsertProductDTO dto = new InsertProductDTO();

				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));

				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
					//System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
				//	System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return hm;
	}

	
	

	public HashMap<Integer, InsertProductDTO> getKidProduct(
			String CATEGORY, String path2) {
		HashMap<Integer, InsertProductDTO> hm = new HashMap<Integer, InsertProductDTO>();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE where  UPPER(CATEGORY) LIKE '%"
					+ CATEGORY.toUpperCase().trim() + "%'";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				InsertProductDTO dto = new InsertProductDTO();

				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));

				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
				//	System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
					//System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}	catch (Exception e) {
			System.out.println(e);
		}

		return hm;
	}
	
	public HashMap<Integer, InsertProductDTO> getMenProduct(
			String CATEGORY, String path2) {
		HashMap<Integer, InsertProductDTO> hm = new HashMap<Integer, InsertProductDTO>();

		int i = 0;

		try {
			String Q = "select * FROM PRODUCT_TABLE where  UPPER(CATEGORY) LIKE '%"
					+ CATEGORY.toUpperCase().trim() + "%'";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				InsertProductDTO dto = new InsertProductDTO();

				dto.setProductID(rs.getInt(1));
				dto.setProductName(rs.getString(2));
				dto.setCategory(rs.getString(5));
				dto.setSubCategory(rs.getString(6));
				dto.setPublication(rs.getString(7));
				dto.setAuthor(rs.getString(8));
				dto.setCompanyName(rs.getString(9));
				dto.setColor(rs.getString(10));
				dto.setModelNumber(rs.getString(11));
				dto.setSize(rs.getString(12));
				dto.setProductDescription(rs.getString(13));
				dto.setPrice(rs.getString(14));

				String pidinstring = Integer.toString(rs.getInt(1));
				Blob b = rs.getBlob(3);
				if (b != null) {
					byte b1[] = b.getBytes(1, (int) b.length());
				//	System.out.println(" path is " + path2);
					OutputStream fout = new FileOutputStream(path2 + "/"
							+ pidinstring + rs.getString(4));
					fout.write(b1);

					dto.setPicture(pidinstring + rs.getString(4));
					// ipbs.setBookPicture(ipbs.getBookID() +rs.getInt(9));
					//System.out.println(pidinstring);
				}
				i = i + 1;
				hm.put(i, dto);
			}
		}	catch (Exception e) {
			System.out.println(e);
		}

		return hm;
	}
	}