<%@page import="com.src.check.SeatCheck"%>
<%@page import="com.src.model.Tickets"%>
<%@page import="com.src.service.TicketServiceImpl"%>
<%@page import="com.src.model.UsersFlight"%>
<%@page import="com.src.dao.DaoService"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");
HttpSession session1 = request.getSession();
if (session1.getAttribute("u") == null)
	response.sendRedirect("index.jsp");
%>


<html>
<head>
<title>Travel Information Form</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	text-align: center;
}

h2 {
	color: #333;
}

form {
	max-width: 400px;
	margin: 0 auto;
	padding: 50px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
	color: #555;
}

input[type="text"], input[type="email"], select {
	width: 120%;
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

select {
	height: 40px;
}

input[type="submit"] {
	background-color: #007BFF;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<%
	UsersFlight u = (UsersFlight) session1.getAttribute("u");
	int userid = u.getUserid();
	String username = u.getUsername();
	String emailid = u.getEmailid();
	String fromadd = request.getParameter("from");
	String toadd = request.getParameter("to");
	String departuredate = request.getParameter("departure");
	String returndate = request.getParameter("return");
	String triptype = request.getParameter("selectTrip");
	String travelclass = request.getParameter("travelClass");
	int seatnumber = Integer.parseInt(request.getParameter("seat"));
	String Airline = request.getParameter("airline");
	Tickets t = new Tickets(userid, username, emailid, fromadd, toadd, departuredate, returndate, seatnumber, triptype,
			travelclass, Airline);
	session1 = request.getSession(true);
	session1.setAttribute("ticket", t);
	TicketServiceImpl tsimpl = new TicketServiceImpl();
	int fl = 0;
	if (Airline.equals("airindia")) {
		if (travelclass.equals("business")) {
			SeatCheck sc = new SeatCheck();
			if (sc.business_AirIndia(seatnumber)) {
		fl = 0;
			} else {
		out.write("seat already booked.. please enter the valid seat number");
		fl++;
			}
		} else if (travelclass.equals("economy")) {
			SeatCheck sc = new SeatCheck();
			if (sc.economy_AirIndia(seatnumber)) {
		fl = 0;
			} else {
		out.write("seat already booked.. please enter the valid seat number");
		fl++;
			}
		} else {
			SeatCheck sc = new SeatCheck();
			if (sc.firstclass_AirIndia(seatnumber)) {
		fl = 0;
			} else {
		out.write("seat already booked.. please enter the valid seat number");
		fl++;
			}
		}
	} else if (Airline.equals("emirates")) {
		if (travelclass.equals("economy")) {
			SeatCheck sc = new SeatCheck();
			if (sc.economy_Emirates(seatnumber)) {
		fl = 0;
			} else {
		out.write("seat already booked.. please enter the valid seat number");
		fl++;
			}
		} else if (travelclass.equals("business")) {
			SeatCheck sc = new SeatCheck();
			if (sc.business_Emirates(seatnumber)) {
		fl = 0;
			} else {
		out.write("seat already booked.. please enter the valid seat number");
		fl++;
			}
			//amt+= (triptype.equals("Round")) ? 2*c.bct : c.bct;
		} else {
			SeatCheck sc = new SeatCheck();
			if (sc.firstclass_Emirates(seatnumber)) {
		fl = 0;
			} else {
		out.write("seat already booked.. please enter the valid seat number");
		fl++;
			}
		}
	}
	if (fl == 0) {
		int i = tsimpl.addTicket(t);
		if (i > 0) {
			session1.setAttribute("sucesst", "seats are available time for payment..");
			RequestDispatcher rd = request.getRequestDispatcher("User/payment.jsp");
			rd.forward(request, response);
		} else {
			session1.setAttribute("errormsgt", "seats not available....");
			response.sendRedirect("User/UserHome.jsp");
		}
	} else {
		session1.setAttribute("errormsgt", "seats not available....");
		response.sendRedirect("User/UserHome.jsp?fl=" + fl);
	}
	%>
</body>
</html>

