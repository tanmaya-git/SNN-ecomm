package com.anand.dao;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.anand.dto.InsertProductDTO;
import com.anand.util.MyConnection;

public class RegistrationDAO {

	static Connection con;
	private boolean flag;

	public RegistrationDAO() {
		super();
	}

	public boolean insertMenProduct(InsertProductDTO dto) {
		flag = false;
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;


			pst = con
					.prepareStatement("insert into	PRODUCT_TABLE values((select nvl(max(PID),500)+1 from PRODUCT_TABLE),?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, dto.getProductName());
			// pst.setString(2,dto.getPicture());
			// pst.setString(3, "png");
			pst.setString(4, dto.getCategory());
			pst.setString(5, dto.getSubCategory());
			pst.setString(6, "");
			pst.setString(7, "");
			pst.setString(8, dto.getCompanyName());
		
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