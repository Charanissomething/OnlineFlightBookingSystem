package com.src.dao;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Random;

import com.src.model.Tickets;

public class TicketDaoImpl implements TicketDao {
    DaoService ds = new DaoService();

    public static String generateTicketID(int length) {
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        StringBuilder ticketID = new StringBuilder();

        Random random = new Random();
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            char randomChar = characters.charAt(index);
            ticketID.append(randomChar);
        }

        return ticketID.toString();
    }

    @Override
    public int addTicket(Tickets t) {
        java.time.format.DateTimeFormatter formatter = java.time.format.DateTimeFormatter.ofPattern("yyyy-MM-dd");
        java.time.LocalDate ddate = java.time.LocalDate.parse(t.getDeparturedate(), formatter);
        java.time.LocalDate rdate = java.time.LocalDate.parse(t.getReturndate(), formatter);
        DaoService ds = new DaoService();
        Statement st = ds.getMyStatement();
        String ticketid = generateTicketID(5);
        t.setTicketid(ticketid);
        String query = "insert into Tickets values (" + t.getUserid() + ",'" + t.getUsername() + "','" + t.getEmailid() + "','" + t.getFromadd() + "','" + t.getToadd() + "','" + ddate + "','" + rdate + "'," + t.getSeatnumber() + ",'" + t.getTriptype() + "','" + t.getTicketid() + "','" + t.getTravelclass() + "','" + t.getAirline() + "')";
        int i = 0;
        try {
            i = st.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ds.closeMyStatement();
        return i;
    }

    @Override
    public int deleteTicket(Tickets t) {
        Statement st = ds.getMyStatement();
        String query = "delete from Tickets where Tid='" + t.getTicketid() + "'";
        int x = 0;
        try {
            x = st.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        ds.closeMyStatement();
        return x;
    }

    @Override
    public ArrayList<Tickets> displayTickets(int userid) {
        ArrayList<Tickets> tal = new ArrayList<Tickets>();
        Statement st = ds.getMyStatement();
        String query = "select * from Tickets where userid = " + userid + "";
        try {
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                Date departuredate = rs.getDate(6);
                Date returndate = rs.getDate(7);
                String pattern = "yyyy-MM-dd";
                SimpleDateFormat dateFormat = new SimpleDateFormat(pattern);
                String ddate = dateFormat.format(departuredate);
                String rdate = dateFormat.format(returndate);
                Tickets t = new Tickets(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), ddate, rdate, rs.getInt(8), rs.getString(9), rs.getString(10), rs.getString(11));
                t.setTicketid(rs.getString(10));
                tal.add(t);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ds.closeMyStatement();
        return tal;
    }
}
