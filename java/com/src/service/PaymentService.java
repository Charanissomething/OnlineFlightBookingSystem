package com.src.service;

import java.util.ArrayList;

import com.src.model.Payment;
import com.src.model.Tickets;

public interface PaymentService {
    public int doPayment(Payment payment);
    public ArrayList<Payment> displayPayments(int userId);
    public int cancelPayment(Tickets t);
}
