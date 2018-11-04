package com.anand.dao;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.anand.dto.RegistrationDTO;
import com.anand.util.MyConnection;

public class RegistrationDAO {

	static Connection con;
	private boolean flag;

	public RegistrationDAO() {
		super();
	}

	// ============================================================
	public boolean registerUser(RegistrationDTO dto) {
		flag = false;
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("insert into USER_IFO values((select nvl(max(USERID),500)+1 from USER_IFO),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");


			pst.setString(1,dto.getLoginID());
			pst.setString(2,dto.getUserName());
			pst.setString(3,dto.getEmail());
			pst.setString(4,dto.getMobileNo());
			pst.setString(5,dto.getColor());
			pst.setString(6,dto.getHighestQualification());
			pst.setString(7,dto.getOccupation());
			pst.setString(8,dto.getDob());
			pst.setString(9,dto.getGender());
			pst.setString(10,dto.getAddres());
			pst.setString(11,dto.getFashion());
			pst.setString(12,dto.getFilm());
			pst.setString(13,dto.getFood());
			pst.setString(14,dto.getGardens());
			pst.setString(15,dto.getMedicine());
			pst.setString(16,dto.getMuseums());
			pst.setString(17,dto.getPublicArt());
			pst.setString(18,dto.getShopping());
			pst.setString(19,dto.getSports());
			pst.setString(20,dto.getZoo());
			pst.setString(21,dto.getPassword());
			pst.setString(22,dto.getMaritalStatus());
			
			
			
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
