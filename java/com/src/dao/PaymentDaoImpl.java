package com.src.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.src.model.Payment;
import com.src.model.Tickets;

public class PaymentDaoImpl implements PaymentDao {
    private DaoService ds = new DaoService();

    @Override
    public int doPayment(Payment payment) {
        Statement st = ds.getMyStatement();
        String query = "INSERT INTO Payment VALUES (" + payment.getUserid() + ", '" + payment.getCardnumber() + "', '" +
                payment.getExpiry() + "', " + payment.getCvv() + ", '" + payment.getAmount() + "', '" + payment.getTicketid() + "')";
        int rowsAffected = 0;
        try {
            rowsAffected = st.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ds.closeMyStatement();
        }
        return rowsAffected;
    }

    @Override
    public ArrayList<Payment> displayPayments(int userid) {
        Statement st = ds.getMyStatement();
        ArrayList<Payment> paymentList = new ArrayList<>();
        String query = "SELECT * FROM Payment WHERE userid = " + userid;
        try {
            ResultSet rs = st.executeQuery(query);
            while (rs.next()) {
                Payment payment = new Payment(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(6));
                payment.setAmount(rs.getFloat(5));
                paymentList.add(payment);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            ds.closeMyStatement();
        }
        return paymentList;
    }

	@Override
	public int cancelPayment(Tickets t) {
		Statement st = ds.getMyStatement();
		String q = "delete from Payment where Tid = " + t.getTicketid();
		int x = 0;
		try {
			x = st.executeUpdate(q);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		ds.closeMyStatement();
		return x;
	}
}
