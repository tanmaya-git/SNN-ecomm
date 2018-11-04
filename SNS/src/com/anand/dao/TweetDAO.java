package com.anand.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;


import com.anand.dto.TweetDTO;
import com.anand.util.MyConnection;

public class TweetDAO {

	PreparedStatement pst;
	static Connection con;
	private boolean flag;

	public TweetDAO() {
		super();
	}
	public HashMap getTweetLikes(int tweetID) {
		HashMap hm = new HashMap();
		int i = 0;
		con = new MyConnection().getDBConnection();
		try {

			con.setAutoCommit(true);
			pst = con.prepareStatement("select * from LIKETABLE where TID=? order by LID desc");
			pst.setInt(1,tweetID);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				TweetDTO dto = new TweetDTO();
				dto.setLikeID(rs.getInt(1));
				dto.setTweetID(rs.getInt(2));
				dto.setLoginID(rs.getString(3));
				dto.setLikeName(rs.getString(4));
				dto.setLike(rs.getString(5));
				dto.setLikeDate(rs.getString(6));
				i = i + 1;
				hm.put(i, dto);
			}
		} catch (SQLException sqlException) {
			System.err.println(sqlException);
			flag = false;
		}
		return hm;
	}

	//======================================
	 public boolean updateLike(TweetDTO dto)
	    {
	        try 
	        {			con = new MyConnection().getDBConnection();
	           con.setAutoCommit(false);
	           int i;
	           String q="Update LIKETABLE set TLIKE='"+dto.getLike().trim()+"' where LOGINID='"+dto.getLoginID().trim()+"' and TID="+dto.getTweetID()+"";
	           System.out.println(q);
	           
	           i=con.createStatement().executeUpdate(q);
	        
	            if(i==1)
	            {
	                flag=true;
	                con.commit();
	            }
	            else
	            {
	                flag=false;
	                con.rollback();
	            }      
	        } 
	        catch (SQLException ex) 
	        {
	            ex.printStackTrace();
	            flag=false;
	            try 
	            {
	                con.rollback();
	            } 
	            catch (SQLException sex) 
	            {
	                sex.printStackTrace();
	            }
	        }
	        catch (Exception e) 
	        {
	            e.printStackTrace();
	            flag=false;
	            try 
	            {
	                con.rollback();
	            } 
	            catch (SQLException se) 
	            {
	                se.printStackTrace();
	            }
	        }
	        return flag;
	    }
	
//======================================
	 public boolean updateLikeCount(TweetDTO dto)
	    {
	        try 
	        {			con = new MyConnection().getDBConnection();
	           con.setAutoCommit(false);
	           int i;
	           String q="Update TWEETTABLE set TOTALLIKE=(select nvl(max(TOTALLIKE),0)+1 from TWEETTABLE where LOGINID='"+dto.getLoginID().trim()+"' and TID="+dto.getTweetID()+") where LOGINID='"+dto.getLoginID().trim()+"' and TID="+dto.getTweetID()+"";
	           System.out.println(q);
	           
	           i=con.createStatement().executeUpdate(q);
	        
	            if(i==1)
	            {
	                flag=true;
	                con.commit();
	            }
	            else
	            {
	                flag=false;
	                con.rollback();
	            }      
	        } 
	        catch (SQLException ex) 
	        {
	            ex.printStackTrace();
	            flag=false;
	            try 
	            {
	                con.rollback();
	            } 
	            catch (SQLException sex) 
	            {
	                sex.printStackTrace();
	            }
	        }
	        catch (Exception e) 
	        {
	            e.printStackTrace();
	            flag=false;
	            try 
	            {
	                con.rollback();
	            } 
	            catch (SQLException se) 
	            {
	                se.printStackTrace();
	            }
	        }
	        return flag;
	    }
	// ===================================
	public boolean checkTweetLike(TweetDTO dto) {
		flag = false;
		con = new MyConnection().getDBConnection();
		try {

			con.setAutoCommit(true);
			pst = con
					.prepareStatement("select * from LIKETABLE where TID=? and LOGINID=?");
			pst.setInt(1, dto.getTweetID());
			pst.setString(2, dto.getLoginID().trim());
			ResultSet rs = pst.executeQuery();
			if (rs.next()) {
				flag = true;
			}
		} catch (SQLException sqlException) {
			System.err.println(sqlException);
			flag = false;
		}
		return flag;
	}

	// ===================================
	public HashMap allTweet() {
		HashMap hm = new HashMap();
		int i = 0;
		con = new MyConnection().getDBConnection();
		try {

			con.setAutoCommit(true);
			pst = con.prepareStatement("select * from TWEETTABLE  order by TID desc");

			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
				TweetDTO dto = new TweetDTO();
				dto.setTweetID(rs.getInt(1));
				dto.setLoginID(rs.getString(2));
				dto.setTweeterName(rs.getString(3));
				dto.setTweet(rs.getString(4));
				dto.setTweetDate(rs.getString(5));
				dto.setTotalLike(rs.getInt(6));
				dto.setTweetCategory(rs.getString(7));

				i = i + 1;
				hm.put(i, dto);
			}
		} catch (SQLException sqlException) {
			System.err.println(sqlException);
			flag = false;
		}
		return hm;
	}

	// ============================================================
	public boolean tweet(TweetDTO dto) {
		flag = false;
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("insert into TWEETTABLE values((select nvl(max(TID),5000)+1 from TWEETTABLE),?,?,?,?,?,?)");

			pst.setString(1, dto.getLoginID());
			pst.setString(2, dto.getTweeterName());
			pst.setString(3, dto.getTweet());
			pst.setString(4, dto.getTweetDate());
			pst.setInt(5, 0);
			pst.setString(6, dto.getTweetCategory());
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

	// ========================
	public boolean like(TweetDTO dto) {
		flag = false;
		try {
			con = new MyConnection().getDBConnection();
			con.setAutoCommit(false);
			PreparedStatement pst = null;
			int i = 0;
			pst = con
					.prepareStatement("insert into LIKETABLE values((select nvl(max(LID),1000)+1 from LIKETABLE),?,?,?,?,?)");
			pst.setInt(1, dto.getTweetID());
			pst.setString(2, dto.getLoginID());
			pst.setString(3, dto.getLikeName());
			pst.setString(4, dto.getLike());
			pst.setString(5, dto.getLikeDate());

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
