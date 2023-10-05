package com.src.model;

import java.util.Objects;
import com.src.annotate.Constraint;
import com.src.annotate.TableAnnotation;
import com.src.annotate.TableClass;

@TableAnnotation
public class Tickets {
    private int userid;
    private String username;
    private String emailid;
    private String fromadd;
    private String toadd;
    private String departuredate;
    private String returndate;
    private int seatnumber;
    private String triptype;
    @Constraint(constraint = "primary key")
    private String Ticketid;
    private String travelclass;
    private String airline;

    /**
     * Default constructor to create a table if the class is annotated.
     */
    public Tickets() {
        if (this.getClass().isAnnotationPresent(TableAnnotation.class)) {
            TableClass.createTable(this.getClass().getCanonicalName());
        }
    }

    /**
     * Constructor with parameters for Ticket details.
     *
     * @param userid        The user ID.
     * @param username      The username.
     * @param emailid       The email ID.
     * @param fromadd       The 'from' address.
     * @param toadd         The 'to' address.
     * @param departuredate The departure date.
     * @param returndate    The return date.
     * @param seatnumber    The seat number.
     * @param triptype      The trip type.
     * @param travelclass   The travel class.
     * @param airline       The airline.
     */
    public Tickets(int userid, String username, String emailid, String fromadd, String toadd, String departuredate,
                   String returndate, int seatnumber, String triptype, String travelclass, String airline) {
        this.userid = userid;
        this.username = username;
        this.emailid = emailid;
        this.fromadd = fromadd;
        this.toadd = toadd;
        this.departuredate = departuredate;
        this.returndate = returndate;
        this.seatnumber = seatnumber;
        this.triptype = triptype;
        this.airline = airline;
        this.travelclass = travelclass;
    }
    
    

    public Tickets(String ticketid) {
		super();
		Ticketid = ticketid;
	}

	/**
     * Get the user ID.
     *
     * @return The user ID.
     */
    public int getUserid() {
        return userid;
    }

    /**
     * Set the user ID.
     *
     * @param userid The user ID to set.
     */
    public void setUserid(int userid) {
        this.userid = userid;
    }

    /**
     * Get the username.
     *
     * @return The username.
     */
    public String getUsername() {
        return username;
    }

    /**
     * Set the username.
     *
     * @param username The username to set.
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * Get the email ID.
     *
     * @return The email ID.
     */
    public String getEmailid() {
        return emailid;
    }

    /**
     * Set the email ID.
     *
     * @param emailid The email ID to set.
     */
    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    /**
     * Get the 'from' address.
     *
     * @return The 'from' address.
     */
    public String getFromadd() {
        return fromadd;
    }

    /**
     * Set the 'from' address.
     *
     * @param fromadd The 'from' address to set.
     */
    public void setFromadd(String fromadd) {
        this.fromadd = fromadd;
    }

    /**
     * Get the 'to' address.
     *
     * @return The 'to' address.
     */
    public String getToadd() {
        return toadd;
    }

    /**
     * Set the 'to' address.
     *
     * @param toadd The 'to' address to set.
     */
    public void setToadd(String toadd) {
        this.toadd = toadd;
    }

    /**
     * Get the departure date.
     *
     * @return The departure date.
     */
    public String getDeparturedate() {
        return departuredate;
    }

    /**
     * Set the departure date.
     *
     * @param departuredate The departure date to set.
     */
    public void setDeparturedate(String departuredate) {
        this.departuredate = departuredate;
    }

    /**
     * Get the return date.
     *
     * @return The return date.
     */
    public String getReturndate() {
        return returndate;
    }

    /**
     * Set the return date.
     *
     * @param returndate The return date to set.
     */
    public void setReturndate(String returndate) {
        this.returndate = returndate;
    }

    /**
     * Get the seat number.
     *
     * @return The seat number.
     */
    public int getSeatnumber() {
        return seatnumber;
    }

    /**
     * Set the seat number.
     *
     * @param seatnumber The seat number to set.
     */
    public void setSeatnumber(int seatnumber) {
        this.seatnumber = seatnumber;
    }

    /**
     * Get the trip type.
     *
     * @return The trip type.
     */
    public String getTriptype() {
        return triptype;
    }

    /**
     * Set the trip type.
     *
     * @param triptype The trip type to set.
     */
    public void setTriptype(String triptype) {
        this.triptype = triptype;
    }

    /**
     * Get the ticket ID.
     *
     * @return The ticket ID.
     */
    public String getTicketid() {
        return Ticketid;
    }

    /**
     * Set the ticket ID.
     *
     * @param ticketid The ticket ID to set.
     */
    public void setTicketid(String ticketid) {
        Ticketid = ticketid;
    }

    /**
     * Get the airline.
     *
     * @return The airline.
     */
    public String getAirline() {
        return airline;
    }

    /**
     * Set the airline.
     *
     * @param airline The airline to set.
     */
    public void setAirline(String airline) {
        this.airline = airline;
    }

    /**
     * Get the travel class.
     *
     * @return The travel class.
     */
    public String getTravelclass() {
        return travelclass;
    }

    /**
     * Set the travel class.
     *
     * @param travelclass The travel class to set.
     */
    public void setTravelclass(String travelclass) {
        this.travelclass = travelclass;
    }

    @Override
    public int hashCode() {
        return Objects.hash(Ticketid, departuredate, emailid, fromadd, returndate, seatnumber, toadd, triptype, userid,
                username);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Tickets other = (Tickets) obj;
        return Objects.equals(Ticketid, other.Ticketid) && Objects.equals(departuredate, other.departuredate)
                && Objects.equals(emailid, other.emailid) && Objects.equals(fromadd, other.fromadd)
                && Objects.equals(returndate, other.returndate) && seatnumber == other.seatnumber
                && Objects.equals(toadd, other.toadd) && Objects.equals(triptype, other.triptype)
                && userid == other.userid && Objects.equals(username, other.username);
    }

    @Override
    public String toString() {
        return "Tickets [userid=" + userid + ", username=" + username + ", emailid=" + emailid + ", fromadd=" + fromadd
                + ", toadd=" + toadd + ", departuredate=" + departuredate + ", returndate=" + returndate
                + ", seatnumber=" + seatnumber + ", triptype=" + triptype + ", Ticketid=" + Ticketid + "]";
    }
}
