package com.src.model;

import com.src.annotate.TableAnnotation;
import com.src.annotate.TableClass;

@TableAnnotation
public class Charges {
    // Static fields to store charges
    public static float bct;
    public static float ect;
    public static float fct;

    /**
     * Default constructor to create a table if the class is annotated.
     */
    public Charges() {
        if (this.getClass().isAnnotationPresent(TableAnnotation.class)) {
            TableClass.createTable(this.getClass().getCanonicalName());
        }
    }

    /**
     * Set charges for Air India flights.
     */
    public static void airindia() {
        bct = 1250;
        ect = 1000;
        fct = 2000;
    }

    /**
     * Set charges for Emirates flights.
     */
    public static void emirates() {
        bct = 1300;
        ect = 1100;
        fct = 2250;
    }
}
