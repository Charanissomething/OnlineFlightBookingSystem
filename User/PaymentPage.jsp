<%@page import="com.src.check.SeatCheck"%>
<%@page import="com.src.model.Tickets"%>
<%@page import="com.src.dao.TicketDaoImpl"%>
<%@page import="com.src.model.UsersFlight"%>
<%@page import="com.src.service.PaymentServiceImpl"%>
<%@page import="com.src.service.PaymentService"%>
<%@page import="com.src.dao.PaymentDao"%>
<%@page import="com.src.dao.PaymentDaoImpl"%>
<%@page import="com.src.model.Payment"%>
<%@page import="com.src.model.Charges"%>
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
		HttpSession session2 = request.getSession(false);
		HttpSession session1 = request.getSession(false);
		UsersFlight u =(UsersFlight)session1.getAttribute("u");
		int userid = u.getUserid();
		String pwd = u.getPassword();
		String cardno = request.getParameter("cardno");
		String expiry = request.getParameter("expiry");
		int cvv = Integer.parseInt(request.getParameter("cvv"));
		String triptype = (String)session2.getAttribute("triptype");
		String travelclass = (String)session2.getAttribute("travelclass");
		String airline = (String)session2.getAttribute("flight_name");
		Charges c = new Charges();
		float amt = 0;
		Tickets t = (Tickets)session1.getAttribute("ticket");
		String Ticketid = t.getTicketid();
		Payment p = new Payment(userid,cardno,expiry,cvv,t.getTicketid());
		PaymentService ps = new PaymentServiceImpl();
		if(airline.equals("airindia")){
			c.airindia();
			if(travelclass.equals("business")){
			amt+= (triptype.equals("round")) ? 2*c.bct : c.bct;	
			}
			else if(travelclass.equals("economy")){
			amt+= (triptype.equals("round")) ? 2*c.ect : c.ect;	
			}
			else{
			amt+= (triptype.equals("round")) ? 2*c.fct : c.fct;	
			}
		}
		else if(airline.equals("emirates")){
			c.emirates();
			if(travelclass.equals("economy")) {
			amt+= (triptype.equals("round")) ? 2*c.ect : c.ect;	
			}
			else if(travelclass.equals("business")) {
			amt+= (triptype.equals("round")) ? 2*c.bct : c.bct;	
			}
			else{
			amt+= (triptype.equals("round")) ? 2*c.fct : c.fct;	
			}
		}
		p.setAmount(amt);
		int x = ps.doPayment(p);
		session1.setAttribute("amt", amt);
		if(x>0){
			out.write("Redirecting to the home page...");
			response.sendRedirect("User/dummy.jsp?userid="+userid+"&pwd="+pwd);
			
		}
		else{
			response.sendRedirect("User/UserHome.jsp?userid="+userid+"&pwd="+pwd);
		}
	%>
</body>
</html>