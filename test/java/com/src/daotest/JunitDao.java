package com.src.daotest;

import static org.junit.jupiter.api.Assertions.assertEquals;

import java.util.Scanner;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestInstance;
import org.junit.jupiter.api.TestInstance.Lifecycle;

import com.src.model.Admin;
import com.src.model.UsersFlight;
import com.src.service.AdminService;
import com.src.service.AdminServiceImpl;
import com.src.service.UserServiceImpl;
import com.src.service.UserService;

@TestInstance(Lifecycle.PER_CLASS)
class JunitDao {
	Scanner sc = null;
	@BeforeAll
	void scan() {
		sc= new Scanner(System.in);
	}
	
	@Test
	@Disabled
	void test() {
		assertEquals("cherry", "cherry");
	}
	@Test
	@DisplayName("usercheck")
	void userCheck() {
		System.out.println("Enter the string to check....");
		String str = sc.next();
		UserService us = new UserServiceImpl();
		int act = us.userCheckValidation(new UsersFlight(1234,str,"charan@gmail.com","password"));
		int expec = 0;
		assertEquals(act, expec,"The result of the user validation ....");
	}
	@Test
	@DisplayName("admincheck")
	void adminCheck() {
		System.out.println("Enter the string for the Admin check..");
		String st = sc.next();
		AdminService as = new AdminServiceImpl();
		int act = as.adminCheck(new Admin(st,"cherry45","chars"));
		int exp = 0;
		assertEquals(act,exp,"The result of the admin validation....");
	}
}
