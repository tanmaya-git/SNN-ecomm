package com.anand.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;


import com.anand.util.MyConnection;

public class LoginDAO {

	PreparedStatement pst;
	static Connection con;
	private boolean flag;

	public LoginDAO() {
		super();
	}

	// ============================================================
	public HashMap<Integer,String> loginService(String uid, String pass) {
		con = new MyConnection().getDBConnection();
		HashMap<Integer,String> hm=new HashMap<Integer,String>();
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(true);
			pst = con
					.prepareStatement("select * from USER_IFO where LOGINID=? and PASSWORD=?");
			pst.setString(1, uid.trim());
			pst.setString(2, pass.trim());

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {	
				hm.put(1, rs.getString(1));
				hm.put(2, rs.getString(2));
				hm.put(3, rs.getString(3));
				hm.put(4, rs.getString(4));
				hm.put(5, rs.getString(5));
				hm.put(6, rs.getString(6));
				hm.put(7, rs.getString(7));
				hm.put(8, rs.getString(8));
				hm.put(9, rs.getString(9));
				hm.put(10, rs.getString(10));
				hm.put(11, rs.getString(11));
				hm.put(12, rs.getString(12));
				hm.put(13, rs.getString(13));
				hm.put(14, rs.getString(14));
				hm.put(15, rs.getString(15));
				hm.put(16, rs.getString(16));
				hm.put(17, rs.getString(17));
				hm.put(18, rs.getString(18));
				hm.put(19, rs.getString(19));
				hm.put(20, rs.getString(20));
				hm.put(21, rs.getString(21));
				hm.put(22, rs.getString(22));
				hm.put(23, rs.getString(23));				
				
			} else {
				hm.put(1,"");
			}
		} catch (SQLException ex) {
			flag = false;
		}
		return hm;
	}	
	// ============================================================
	public String login(String uid, String pass) {
		String uname= "";
		con = new MyConnection().getDBConnection();
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(true);
			pst = con
					.prepareStatement("select * from USER_IFO where LOGINID=? and PASSWORD=?");
			pst.setString(1, uid.trim());
			pst.setString(2, pass.trim());

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				uname=rs.getString(3);
			} else {
				uname="";
			}
		} catch (SQLException ex) {
			flag = false;
		}
		return uname;
	}

}
