package com.anand.dao;

import java.io.FileOutputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.HashMap;
import java.util.List;

import com.anand.dto.InsertProductDTO;
import com.anand.util.MyConnection;

public class RegularUserMatrixDAO {
	static Connection con;

	public RegularUserMatrixDAO() {
		super();
	}

	

	
	
	public HashMap getAllUser() {
		HashMap hm = new HashMap();
		int i = 0;
		try {
			String Q = "select  USERID from REGULAR_USER_MATRIX INTERSECT select  USERID from REGULAR_USER_MATRIX";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i=i+1;
				hm.put(i, rs.getString(1));
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}
	
	
	
	public HashMap getAllProductId() {
		HashMap hm = new HashMap();
		int i = 0;
		try {
			String Q = "select  PRODUCTID from REGULAR_USER_MATRIX INTERSECT select  PRODUCTID from REGULAR_USER_MATRIX";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i=i+1;
				hm.put(i, rs.getString(1));
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}
	
	
	public HashMap getAllUserPurchedStatus() {
		HashMap hm = new HashMap();
		try {
			String Q = "select  * from REGULAR_USER_MATRIX";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				hm.put(rs.getString(2)+rs.getString(3).trim(),"Y");
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}
	
	
	public HashMap getAllUserPurchedProductInfo() {
		HashMap hm = new HashMap();
		int i=0;
		try {
			String Q = "select  * from REGULAR_USER_MATRIX";
			//System.out.println(Q);
			con = new MyConnection().getDBConnection();
			PreparedStatement ps = con.prepareStatement(Q);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				InsertProductDTO dto=new InsertProductDTO();
				
				dto.setRecordID(rs.getInt(1));
				dto.setUserID(rs.getString(2));				
				dto.setPurchedProductID(rs.getString(3));
				dto.setProductName(rs.getString(4));
				dto.setOrderDate(rs.getString(5));
				i=i+1;
				hm.put(i,dto);
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return hm;
	}

	
//==============================
	
	
	
	public int getProductSim(int pid1,int pid2,Connection con) {
		int sim=0;
		int i=0;
		CallableStatement cstmt = null;
		System.out.println("Hi "+(i++));
		try {
			System.out.println("Hi "+(i++));
			String SQL = "{call my_pro_sim(?,?,?)}";	
			System.out.println("Hi "+(i++));
			
			System.err.println(con);
			System.out.println("Hi "+(i++));

			cstmt = con.prepareCall (SQL);
			System.out.println("Hi "+(i++));
			cstmt.setInt(1, pid1);
			System.out.println("Hi "+(i++));
			cstmt.setInt(2, pid2);
			System.out.println("Hi "+(i++));
			cstmt.registerOutParameter(3,Types.INTEGER);
			System.out.println("Hi "+(i++));

			cstmt.execute();
			System.out.println("Hi "+(i++));
			
			 sim = cstmt.getInt(3);
		
				System.out.println(sim);
				
			
			cstmt.close();
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return sim;
	}
	



	
}
