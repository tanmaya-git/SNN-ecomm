package com.anand.dao;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.anand.dto.InsertProductDTO;
import com.anand.util.MyConnection;

public class InsertProductDAO {
	static Connection con;
	private boolean flag;

	public InsertProductDAO() {
		super();
	}

	// ============================================================
	public boolean insertElectronicsProduct(InsertProductDTO dto) {
		flag = false;
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("insert into PRODUCT_TABLE values((select nvl(max(PID),500)+1 from PRODUCT_TABLE),?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, dto.getProductName());
			// pst.setString(2,dto.getPicture());
			// pst.setString(3, "png");
			pst.setString(4, dto.getCategory());
			pst.setString(5, dto.getSubCategory());
			pst.setString(6, "");
			pst.setString(7, "");
			pst.setString(8, dto.getCompanyName());
			pst.setString(9, dto.getColor());
			pst.setString(10, dto.getModelNumber());
			pst.setString(11, "");
			pst.setString(12, dto.getProductDescription());
			pst.setString(13, dto.getPrice());

			String photo = dto.getPicture();
			System.out.println("uploaded photo is=" + photo);
			File f = new File(photo);
			FileInputStream fis = new FileInputStream(f);
			System.out.println("lenth of image file is===" + f.length());
			pst.setBinaryStream(2, fis, (int) f.length());
			pst.setString(3, photo.substring(photo.lastIndexOf('.'), photo
					.length()));
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

	// ============================================================
	public boolean insertMenProduct(InsertProductDTO dto) {
		flag = false;
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;

			
			System.out.println(dto.getCategory()+"====="+dto.getCompanyName()+"====="+dto.getColor());
			
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
			pst.setString(9, dto.getColor());
			pst.setString(10, "");
			pst.setString(11, dto.getSize());
			pst.setString(12, dto.getProductDescription());
			pst.setString(13, dto.getPrice());

			String photo = dto.getPicture();
			System.out.println("uploaded photo is=" + photo);
			File f = new File(photo);
			FileInputStream fis = new FileInputStream(f);
			System.out.println("lenth of image file is===" + f.length());
			pst.setBinaryStream(2, fis, (int) f.length());
			pst.setString(3, photo.substring(photo.lastIndexOf('.'), photo
					.length()));
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

	// ============================================================
	public boolean insertWomenProduct(InsertProductDTO dto) {
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
			pst.setString(9, dto.getColor());
			pst.setString(10, "");
			pst.setString(11, dto.getSize());
			pst.setString(12, dto.getProductDescription());
			pst.setString(13, dto.getPrice());

			String photo = dto.getPicture();
			System.out.println("uploaded photo is=" + photo);
			File f = new File(photo);
			FileInputStream fis = new FileInputStream(f);
			System.out.println("lenth of image file is===" + f.length());
			pst.setBinaryStream(2, fis, (int) f.length());
			pst.setString(3, photo.substring(photo.lastIndexOf('.'), photo
					.length()));
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

	// ============================================================
	public boolean insertKidProduct(InsertProductDTO dto) {
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
			pst.setString(9, dto.getColor());
			pst.setString(10, "");
			pst.setString(11, dto.getSize());
			pst.setString(12, dto.getProductDescription());
			pst.setString(13, dto.getPrice());

			String photo = dto.getPicture();
			System.out.println("uploaded photo is=" + photo);
			File f = new File(photo);
			FileInputStream fis = new FileInputStream(f);
			System.out.println("lenth of image file is===" + f.length());
			pst.setBinaryStream(2, fis, (int) f.length());
			pst.setString(3, photo.substring(photo.lastIndexOf('.'), photo
					.length()));
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

	// ============================================================
	public boolean insertHomeFurnituresProduct(InsertProductDTO dto) {
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
			pst.setString(9, dto.getColor());
			pst.setString(10, "");
			pst.setString(11, "");
			pst.setString(12, dto.getProductDescription());
			pst.setString(13, dto.getPrice());

			String photo = dto.getPicture();
			System.out.println("uploaded photo is=" + photo);
			File f = new File(photo);
			FileInputStream fis = new FileInputStream(f);
			System.out.println("lenth of image file is===" + f.length());
			pst.setBinaryStream(2, fis, (int) f.length());
			pst.setString(3, photo.substring(photo.lastIndexOf('.'), photo
					.length()));
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

	// ============================================================
	public boolean insertBookProduct(InsertProductDTO dto) {
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
			pst.setString(6, dto.getPublication());
			pst.setString(7, dto.getAuthor());
			pst.setString(8, dto.getCompanyName());
			pst.setString(9, "");
			pst.setString(10, "");
			pst.setString(11, "");
			pst.setString(12, dto.getProductDescription());
			pst.setString(13, dto.getPrice());

			String photo = dto.getPicture();
			System.out.println("uploaded photo is=" + photo);
			File f = new File(photo);
			FileInputStream fis = new FileInputStream(f);
			System.out.println("lenth of image file is===" + f.length());
			pst.setBinaryStream(2, fis, (int) f.length());
			pst.setString(3, photo.substring(photo.lastIndexOf('.'), photo
					.length()));
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

	// ============================================================

}
