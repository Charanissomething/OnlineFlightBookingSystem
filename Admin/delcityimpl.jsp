<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.src.dao.DaoService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	    DaoService ds = new DaoService();
		String city = request.getParameter("selectedCity");
		String x = "delete from Cities where city='"+city+"'";
		int i = 0, fl = 0;
		try (Statement st = ds.getMyStatement();
	             ResultSet rs = st.executeQuery("select * from Tickets")) {
	            while (rs.next()) {
			String c = rs.getString(4);
			String d = rs.getString(5);
			int seatnum = rs.getInt(8);
			String tid = rs.getString(10);
			String travelclass = rs.getString(11);
			String airline = rs.getString(12);
			if(c.equals(city) || d.equals(city)){
				String sql = "delete from Payment where Tid='"+tid+"'";
				String al = Character.toUpperCase(airline.charAt(0))+airline.substring(1,airline.length());
				String str = travelclass+"_"+al;
				st.addBatch(sql);
				String sq = "update " + str + " set isfree = 0 where seatnumber = " + seatnum;
				st.addBatch(sq);
				int[] arr = new int[2];
				arr = st.executeBatch();
				if(arr[0] > 0 && arr[1] > 0) {
					fl++; break;
				}
				if(fl > 0) break;
			}
	      }
		}
	    catch(Exception e){
	    	e.printStackTrace();
	    }
	    finally{
	    	Statement st1 = ds.getMyStatement();
			String y = "delete from Tickets where toadd ='"+city+"' or fromadd = '"+city+"'";
			st1.addBatch(x);
			st1.addBatch(y);
			int a[] = new int[2];
			a = st1.executeBatch();
			if(a[0]>0 && a[1]>0 || fl>0) response.sendRedirect("adminhome.jsp");
			else response.sendRedirect("delcity.jsp");
			ds.closeMyStatement();
	    }
	%>
</body>
</html>