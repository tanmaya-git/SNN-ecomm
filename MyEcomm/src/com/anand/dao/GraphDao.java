package com.anand.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.anand.util.MyConnection;

public class GraphDao {
	
	Connection con;
	PreparedStatement pst;

	private boolean flag;


	
	
	
	public double[] getSatisfaction() {
	
		con = new MyConnection().getDBConnection();
		double []satisfaction=new double[3];
		try {
			con.setAutoCommit(true);
			pst = con.prepareStatement("select * from USER_SATISFACTION");

			ResultSet rs = pst.executeQuery();
			if (rs.next()) {

				int g=rs.getInt(1);
				int a=rs.getInt(2);
				int b=rs.getInt(3);

				satisfaction[0]=((1.0f*g)/(g+a+b));
				satisfaction[1]=((1.0f*a)/(g+a+b));
				satisfaction[2]=((1.0f*b)/(g+a+b));
				
			} else {
			}
		} catch (SQLException ex) {
		
			
		}
		return satisfaction;
	}
	
	
	
	public boolean recommendationSetisfaction(String condation) {
		flag = false;
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			
			if(condation.equalsIgnoreCase("good")){
				pst = con
						.prepareStatement("update USER_SATISFACTION set GOOD= (select sum(GOOD)+1 from USER_SATISFACTION )");	
			}
			if(condation.equalsIgnoreCase("avg")){
				pst = con
						.prepareStatement("update USER_SATISFACTION set AVG= (select sum(AVG)+1 from USER_SATISFACTION )");	
			}

			if(condation.equalsIgnoreCase("bad")){
				pst = con
						.prepareStatement("update USER_SATISFACTION set BAD= (select sum(BAD)+1 from USER_SATISFACTION )");	
			}
		
			
			
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
