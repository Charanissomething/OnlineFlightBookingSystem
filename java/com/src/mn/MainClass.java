package com.src.mn;

import java.util.ArrayList;

import com.src.dao.UserDao;
import com.src.dao.UserDaoImpl;
import com.src.model.UsersFlight;

public class MainClass {
	public static void main(String[] args) {
//		SeatCheck sc = new SeatCheck();
//		boolean  x = sc.business_AirIndia(9);
//		System.out.println(x);
//		AdminService as = new AdminServiceImpl();
//		System.out.println(as.adminCheck(new Admin("Cherry","chars45","pwd")));
//		Charges c = new Charges();
//		c.print();
		UserDao udao = new UserDaoImpl();
		ArrayList<UsersFlight> al = udao.getUsers();
		System.out.println(al);
	}
}
