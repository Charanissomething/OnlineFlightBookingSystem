<!DOCTYPE html>
<%@page import="com.src.model.Payment"%>
<%@page import="com.src.model.Tickets"%>
<%@page import="com.src.service.TicketServiceImpl"%>
<%@page import="com.src.service.TicketService"%>
<%@page import="com.src.service.PaymentServiceImpl"%>
<%@page import="com.src.service.PaymentService"%>
<%@page import="com.src.service.UserServiceImpl"%>
<%@page import="com.src.model.UsersFlight"%>
<%@page import="java.util.ArrayList"%>
<html>
<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.setHeader("Pragma","no-cache");
response.setHeader("Expires","0");
%>
<head>
    <meta charset="UTF-8">
    <title>User and Ticket Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
      	
        .container {
            display: flex;
            justify-content: space-between;
            /* Add animation styles here */
            animation: cardAnimation 1s ease-in-out infinite alternate;
        }

        .card {
            flex: 1;
            border: 1px solid #ccc;
            padding: 20px;
            margin: 10px;
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease-in-out, background-color 0.3s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
            background-color: #FFA500; /* Orange background color on hover */
        }

        h1 {
            color: #0073e6;
        }

        /* Keyframes for the container animation */
        @keyframes cardAnimation {
            0% {
                transform: translateX(-10px);
            }
            100% {
                transform: translateX(10px);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="card">
        	<%
        	UserServiceImpl usimp = new UserServiceImpl();
        	HttpSession session1 = request.getSession(false);      	        		
       		UsersFlight u = (UsersFlight)session1.getAttribute("u");
       		UsersFlight user = usimp.getUser(u);
        	%>
        	<h1>User Details</h1>
            <p>Userid:<%=user.getUserid()%></p>
           	<p>Username: <%=user.getUsername()%></p>
           	<p>UserEmail:<%=user.getEmailid()%></p>
        </div>

        <div class="card">
        	<h1>Ticket Details</h1>
        	<%
				TicketService ts = new TicketServiceImpl();
        		ArrayList <Tickets> al = ts.displayTickets(u.getUserid());
        		for(Tickets t:al){
        	%>
            <p>Ticketid:<%= t.getTicketid() %></p>
            <p>TripType: <%= t.getTriptype() %></p>
            <p>Fromadd:<%= t.getFromadd() %> </p>
            <p>Toadd:<%= t.getToadd() %> </p>
            <p>Departuredate:<%= t.getDeparturedate() %> </p>
            <p>Returndate:<%= t.getReturndate() %> </p>
            <p>SeatNumber:<%= t.getSeatnumber() %> </p>
            <hr>
            <%
        		}
            %>
        </div>

        <div class="card">
        	 <h1>Payment Details</h1>
        	<%
        		PaymentService ps = new PaymentServiceImpl();
        		ArrayList <Payment> pl = ps.displayPayments(u.getUserid());
        		for(Payment p:pl){
        	%>
            <p>cardnumber: <%= p.getCardnumber() %></p>
            <p>expiry: <%= p.getExpiry() %></p>
            <p>cvv: <%= p.getCvv() %></p>
            <p>Ticketid:<%= p.getTicketid() %></p>
            <p>Amount: <%= p.getAmount() %></p>
            <hr>
            <%
        		}
            %>
        </div>
    </div>
</body>
</html>
