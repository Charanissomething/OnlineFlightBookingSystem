package com.src.FlightBookingSystemWebService;

import java.util.ArrayList;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.src.dao.PaymentDaoImpl;
import com.src.model.Admin;
import com.src.model.Tickets;
import com.src.model.UsersFlight;
import com.src.service.AdminServiceImpl;
import com.src.service.PaymentServiceImpl;
import com.src.service.TicketServiceImpl;
import com.src.service.UserServiceImpl;

/** Example resource class hosted at the URI path "/myresource"
 */
@Path("/myresource")
public class MyResource {
	
	UserServiceImpl usimpl = new UserServiceImpl();
	AdminServiceImpl asimpl = new AdminServiceImpl();
    
    /** Method processing HTTP GET requests, producing "text/plain" MIME media
     * type.
     * @return String that will be send back as a response of type "text/plain".
     */
    @GET 
    @Produces("text/plain")
    public String getIt() {
        return "Hi there!";
    }
    
    
    @GET 
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/getuser")
    public UsersFlight getuser(){
    	UsersFlight u = new UsersFlight(1234,"charan");
    	return usimpl.getUser(u);
    }
    
    @GET 
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/getusers")
    public ArrayList<UsersFlight> getusers(){
    	return usimpl.getUsers();
    }
    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("/adduser")
    public String adduser(UsersFlight u) {
    	int x = usimpl.addUser(u);
    	if(x > 0) return "user added sucessfully...";
    	else return "user not added..";
    }
    
    @DELETE
	@Produces(MediaType.APPLICATION_JSON)
	@Path("/deluser/{id}")
	public String deleteUser(@PathParam("id") int id) {
    	int x = usimpl.deleteUser(id);
    	if(x > 0) {
    		return "user deleted succesfully";
    	}
    	else {
    		return "user not deleted successfully";
    	}
	}
    
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    @Path("/addadmin")
    public String addAdmin(Admin a) {
    	int x = asimpl.addAdmin(a);
    	if(x > 0) return "admin added sucessfully...";
    	else return "admin not added..";
    }
    
    @GET 
    @Produces(MediaType.APPLICATION_JSON)
    @Path("/getadmin")
    public int getAdmin(){
    	Admin a = new Admin("shiva123","shiva");
    	return asimpl.addAdmin(a);
    } 
    
}