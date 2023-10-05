package com.src.dao;

import java.util.ArrayList;
import com.src.model.Tickets;

public interface TicketDao {
    public int addTicket(Tickets t);
    public int deleteTicket(Tickets t);
    public ArrayList<Tickets> displayTickets(int userid);
}
