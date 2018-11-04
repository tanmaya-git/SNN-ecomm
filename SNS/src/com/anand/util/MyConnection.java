package com.anand.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
	private Connection con;

	public MyConnection() {
		super();
	}
	public Connection getDBConnection() {
		try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
           // System.out.println("Driver loaded");
              con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sns","sns");
          //  System.out.println("Connection established: "+con);
			
		}catch (Exception e) {
		System.out.println(e);
		}
		return con;
	}
	public static void main(String[] args) {
		new MyConnection().getDBConnection();
	}
}
