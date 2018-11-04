package com.anand.dao;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.anand.dto.InsertProductDTO;
import com.anand.util.MyConnection;

public class ExistingRecommendation {


	static Connection con;

	public ExistingRecommendation() {
		super();
	}

	

	
	public List<String> getProductIDPurchedByUser(String uid) {
		List<String> al = new ArrayList<String>();

		int i = 0;

		try {
			String Q = "SELECT PRODUCTID FROM  REGULAR_USER_MATRIX where USERID='"+uid.trim()+"' INTERSECT SELECT PRODUCTID FROM  REGULAR_USER_MATRIX where USERID='"+uid.trim()+"'";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				al.add(rs.getString(1));
				
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return al;
	}
	
	
	
	
	
	
	
	public InsertProductDTO getExtRrecomendation(String path2,String pid) {
		InsertProductDTO dto = new InsertProductDTO();


		try {
			String Q = "select * FROM PRODUCT_TABLE where pid="+pid;
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				

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
			}
		}

		catch (Exception e) {
			System.out.println(e);
		}

		return dto;
	}
	
}