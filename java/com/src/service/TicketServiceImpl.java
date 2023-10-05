package com.src.service;

import java.util.ArrayList;
import com.src.dao.TicketDao;
import com.src.dao.TicketDaoImpl;
import com.src.model.Tickets;

public class TicketServiceImpl implements TicketService {
    private TicketDao tdao = new TicketDaoImpl();

    @Override
    public int addTicket(Tickets ticket) {
        return tdao.addTicket(ticket);
    }

    @Override
    public int deleteTicket(Tickets ticket) {
        return tdao.deleteTicket(ticket);
    }

    @Override
    public ArrayList<Tickets> displayTickets(int userId) {
        return tdao.displayTickets(userId);
    }
}
