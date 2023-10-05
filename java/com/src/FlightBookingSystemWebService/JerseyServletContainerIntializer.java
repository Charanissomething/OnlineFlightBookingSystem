package com.src.FlightBookingSystemWebService;

import java.util.Set;
import javax.servlet.ServletContainerInitializer;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.HandlesTypes;
@HandlesTypes(AppConfig.class)
public class JerseyServletContainerIntializer implements ServletContainerInitializer{

	@Override
	public void onStartup(Set<Class<?>> arg0, ServletContext arg1) throws ServletException {
		// TODO Auto-generated method stub
	}
	
}
