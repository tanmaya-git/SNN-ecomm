package com.anand.dao;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.anand.dto.InsertProductDTO;
import com.anand.util.MyConnection;

public class PurchedDAO {
	static Connection con;
	private boolean flag;

	public PurchedDAO() {
		super();
	}
	
	public boolean orderProduct(InsertProductDTO dto,String uid,String date) {
		flag = false;
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("insert into	REGULAR_USER_MATRIX values((select nvl(max(RUMID),500)+1 from REGULAR_USER_MATRIX),?,?,?,?)");
			pst.setString(1, uid.trim());
			 pst.setString(2,""+dto.getProductID());
			 pst.setString(3,dto.getProductName());
			 pst.setString(4,date);


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
