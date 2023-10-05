package com.src.model;

import com.src.annotate.Constraint;
import com.src.annotate.TableAnnotation;
import com.src.annotate.TableClass;

@TableAnnotation
public class Payment {
    private int userid;
    private String cardnumber;
    private String expiry;
    private int cvv;
    private float amount;
    
    @Constraint(constraint = "primary key")
    private String ticketid;

    /**
     * Default constructor to create a table if the class is annotated.
     */
    public Payment() {
        if (this.getClass().isAnnotationPresent(TableAnnotation.class)) {
            TableClass.createTable(this.getClass().getCanonicalName());
        }
    }

    /**
     * Constructor with parameters for Payment details.
     *
     * @param userid     The user ID.
     * @param cardnumber The card number.
     * @param expiry     The card expiry date.
     * @param cvv        The card CVV.
     * @param ticketid   The ticket ID.
     */
    public Payment(int userid, String cardnumber, String expiry, int cvv, String ticketid) {
        this.userid = userid;
        this.cardnumber = cardnumber;
        this.expiry = expiry;
        this.cvv = cvv;
        this.ticketid = ticketid;
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
     * Get the card number.
     *
     * @return The card number.
     */
    public String getCardnumber() {
        return cardnumber;
    }

    /**
     * Set the card number.
     *
     * @param cardnumber The card number to set.
     */
    public void setCardnumber(String cardnumber) {
        this.cardnumber = cardnumber;
    }

    /**
     * Get the card expiry date.
     *
     * @return The card expiry date.
     */
    public String getExpiry() {
        return expiry;
    }

    /**
     * Set the card expiry date.
     *
     * @param expiry The card expiry date to set.
     */
    public void setExpiry(String expiry) {
        this.expiry = expiry;
    }

    /**
     * Get the card CVV.
     *
     * @return The card CVV.
     */
    public int getCvv() {
        return cvv;
    }

    /**
     * Set the card CVV.
     *
     * @param cvv The card CVV to set.
     */
    public void setCvv(int cvv) {
        this.cvv = cvv;
    }

    /**
     * Get the payment amount.
     *
     * @return The payment amount.
     */
    public float getAmount() {
        return amount;
    }

    /**
     * Set the payment amount.
     *
     * @param amount The payment amount to set.
     */
    public void setAmount(float amount) {
        this.amount = amount;
    }

    /**
     * Get the ticket ID.
     *
     * @return The ticket ID.
     */
    public String getTicketid() {
        return ticketid;
    }

    /**
     * Set the ticket ID.
     *
     * @param ticketid The ticket ID to set.
     */
    public void setTicketid(String ticketid) {
        this.ticketid = ticketid;
    }
}
