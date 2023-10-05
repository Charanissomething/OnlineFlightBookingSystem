package com.src.service;

import java.util.ArrayList;
import com.src.dao.PaymentDao;
import com.src.dao.PaymentDaoImpl;
import com.src.model.Payment;
import com.src.model.Tickets;

public class PaymentServiceImpl implements PaymentService {
    private PaymentDao pDao = new PaymentDaoImpl();

    @Override
    public int doPayment(Payment payment) {
        return pDao.doPayment(payment);
    }

    @Override
    public ArrayList<Payment> displayPayments(int userId) {
        return pDao.displayPayments(userId);
    }

	@Override
	public int cancelPayment(Tickets t) {
		// TODO Auto-generated method stub
		return 0;
	}
}
