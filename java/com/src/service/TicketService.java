package com.src.service;

import java.util.ArrayList;
import com.src.model.Tickets;

public interface TicketService {
    public int addTicket(Tickets ticket);
    public int deleteTicket(Tickets ticket);
    public ArrayList<Tickets> displayTickets(int userId);
}
