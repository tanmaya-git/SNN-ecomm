package com.anand.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.anand.util.MyConnection;

public class LoginDAO {
	Connection con;
	PreparedStatement pst;

	private boolean flag;
	public String login(String uid, String pass) {
		boolean f = false;
		con = new MyConnection().getDBConnection();
		String type="";
		try {
			con.setAutoCommit(true);
			pst = con.prepareStatement("select * from LOGIN where LOGINID=? and PASSWORD=?");
			pst.setString(1, uid.trim());
			pst.setString(2, pass.trim());

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				f = true;
				type=rs.getString(4);
			} else {
				f = false;
			}
		} catch (SQLException ex) {
			f = false;
			
		}
		return type;
	}
	
	
	
	public boolean checkUser(String uid) {
		boolean f = true;
		con = new MyConnection().getDBConnection();
		String type="";
		try {
			con.setAutoCommit(true);
			pst = con.prepareStatement("select * from LOGIN where LOGINID=?");
			pst.setString(1, uid.trim());

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				f = true;
				type=rs.getString(4);
			} else {
				f = false;
			}
		} catch (SQLException ex) {
		
			
		}
		return f;
	}
	
	
	
	// ============================================================
	public boolean registerUser(String usrid,String pass,String userName) {
		flag = false;
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("insert into LOGIN values(?,?,?,?)");


			pst.setString(1,usrid);
			pst.setString(2,pass);
			pst.setString(3,userName);
			pst.setString(4,"USER");			
			
			
			i = pst.executeUpdate();
			if (i == 1) {
				flag = true;
				con.commit();
			} else {
				flag = false;
				con.rollback();
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException sex) {
				sex.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
			flag = false;
			try {
				con.rollback();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
		return flag;
	}
	
}
