package com.src.FlightBookingSystemWebService;

import java.util.HashSet;
import java.util.Set;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.core.Application;



@ApplicationPath("/webresources/")
public class AppConfig extends Application{

	@Override
	public Set<Class<?>> getClasses() {
		final Set<Class<?>> classes = new HashSet<>();
		classes.add(MyResource.class);
		return classes;
	}
}
