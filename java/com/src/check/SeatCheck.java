package com.src.check;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.src.dao.DaoService;

public class SeatCheck {
	public boolean business_AirIndia(int snum) {
		if(snum > 20 || snum < 1) {
			return false;
		}
		DaoService ds = new DaoService();
		Statement st = ds.getMyStatement();
		String q = "select * from business_Airindia";
		try {
			ResultSet rs = st.executeQuery(q);
			while(rs.next()) {
				if(rs.getInt(2) == snum) {
					System.out.println(rs.getInt(2));
					System.out.println(rs.getInt(1));
					if(rs.getInt(1) == 0) {
						String qry = "update business_Airindia set isfree = 1 where seatnumber ="+snum;
						int x = st.executeUpdate(qry);	
						
						//System.out.println("hi..");
						if(x < 0) return false;
						break;
					}
					else { return false;}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ds.closeMyStatement();
		return true;

	}
	public boolean economy_AirIndia(int snum) {
		if(snum > 25 || snum < 1) {
			return false;
		}
		DaoService ds = new DaoService();
		Statement st = ds.getMyStatement();
		String q = "select * from economy_Airindia";
		try {
			ResultSet rs = st.executeQuery(q);
			while(rs.next()) {
				if(rs.getInt(2) == snum) {
					if(rs.getInt(1) == 0) {
						String qry = "update economy_Airindia set isfree = 1 where seatnumber ="+snum;
						int x = st.executeUpdate(qry);	
						if(x < 0) return false;
						break;
					}
					else { return false;}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ds.closeMyStatement();
		return true;
	}
	
	public boolean firstclass_AirIndia(int snum) {
		if(snum > 8 || snum < 1) {
			return false;
		}
		DaoService ds = new DaoService();
		Statement st = ds.getMyStatement();
		String q = "select * from firstclass_Airindia";
		try {
			ResultSet rs = st.executeQuery(q);
			while(rs.next()) {
				if(rs.getInt(2) == snum) {
					if(rs.getInt(1) == 0) {
						String qry = "update firstclass_Airindia set isfree = 1 where seatnumber ="+snum;
						int x = st.executeUpdate(qry);	
						if(x < 0) return false;
						break;
					}
					else { return false;}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ds.closeMyStatement();
		return true;
	}
	
	public boolean business_Emirates(int snum) {
		if(snum > 20 || snum < 1) {
			return false;
		}
		DaoService ds = new DaoService();
		Statement st = ds.getMyStatement();
		String q = "select * from business_Emirates";
		try {
			ResultSet rs = st.executeQuery(q);
			while(rs.next()) {
				if(rs.getInt(2) == snum) {
					if(rs.getInt(1) == 0) {
						String qry = "update business_Emirates set isfree = 1 where seatnumber ="+snum+"";
						int x = st.executeUpdate(qry);	
						if(x < 0) return false;
						break;
					}
					else { return false;}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ds.closeMyStatement();
		return true;
	}
	
	public boolean firstclass_Emirates(int snum) {
		if(snum > 8 || snum < 1) {
			return false;
		}
		DaoService ds = new DaoService();
		Statement st = ds.getMyStatement();
		String q = "select * from firstclass_Emirates";
		try {
			ResultSet rs = st.executeQuery(q);
			while(rs.next()) {
				if(rs.getInt(2) == snum) {
					if(rs.getInt(1) == 0) {
						String qry = "update firstclass_Emirates set isfree = 1 where seatnumber ="+snum+"";
						int x = st.executeUpdate(qry);	
						
						if(x < 0) return false;
						break;
					}
					else { return false;}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ds.closeMyStatement();
		return true;
	}
	public boolean economy_Emirates(int snum) {
		if(snum > 25 || snum < 1) {
			return false;
		}
		DaoService ds = new DaoService();
		Statement st = ds.getMyStatement();
		String q = "select * from economy_Emirates";
		try {
			ResultSet rs = st.executeQuery(q);
			while(rs.next()) {
				if(rs.getInt(2) == snum) {
					if(rs.getInt(1) == 0) {
						String qry = "update economy_Emirates set isfree = 1 where seatnumber ="+snum+"";
						int x = st.executeUpdate(qry);	
						
						if(x < 0) return false;
						break;
					}
					else {return false;}
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ds.closeMyStatement();
		return true;
	}
}
