package com.src.model;

import com.src.annotate.TableAnnotation;
import com.src.annotate.TableClass;

@TableAnnotation
public class Cities {
    private String city;

    /**
     * Default constructor to create a table if the class is annotated.
     */
    public Cities() {
        if (this.getClass().isAnnotationPresent(TableAnnotation.class)) {
            TableClass.createTable(this.getClass().getCanonicalName());
        }
    }

    /**
     * Constructor with a city parameter.
     *
     * @param city The name of the city.
     */
    public Cities(String city) {
        this.city = city;
    }

    /**
     * Get the name of the city.
     *
     * @return The name of the city.
     */
    public String getCity() {
        return city;
    }

    /**
     * Set the name of the city.
     *
     * @param city The name of the city to set.
     */
    public void setCity(String city) {
        this.city = city;
    }
}
