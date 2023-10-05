package com.src.dao;

import java.util.ArrayList;
import com.src.model.Payment;
import com.src.model.Tickets;

public interface PaymentDao {
    int doPayment(Payment payment);
    ArrayList<Payment> displayPayments(int userId);
    public int cancelPayment(Tickets t);
}
