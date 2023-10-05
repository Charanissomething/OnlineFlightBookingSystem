package com.src.model;

import com.src.annotate.Constraint;
import com.src.annotate.TableAnnotation;
import com.src.annotate.TableClass;

@TableAnnotation
public class UsersFlight {
    @Constraint(constraint = "primary key")
    private int userid;
    private String username;
    private String emailid;
    private String password;

    /**
     * Constructor with parameters for User Flight details.
     *
     * @param userid   The user ID.
     * @param username The username.
     * @param emailid  The email ID.
     * @param password The password.
     */
    public UsersFlight(int userid, String username, String emailid, String password) {
        this.userid = userid;
        this.username = username;
        this.emailid = emailid;
        this.password = password;
    }

    /**
     * Default constructor to create a table if the class is annotated.
     */
    public UsersFlight() {
        if (this.getClass().isAnnotationPresent(TableAnnotation.class)) {
            TableClass.createTable(this.getClass().getCanonicalName());
        }
    }

    /**
     * Constructor with parameters for User Flight with ID and Password.
     *
     * @param userid   The user ID.
     * @param password The password.
     */
    public UsersFlight(int userid, String password) {
        this.userid = userid;
        this.password = password;
    }
    
    

    public UsersFlight(int userid) {
		super();
		this.userid = userid;
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
     * Get the password.
     *
     * @return The password.
     */
    public String getPassword() {
        return password;
    }

    /**
     * Set the password.
     *
     * @param password The password to set.
     */
    public void setPassword(String password) {
        this.password = password;
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
}
