package com.src.model;

import com.src.annotate.Constraint;
import com.src.annotate.TableAnnotation;
import com.src.annotate.TableClass;

@TableAnnotation
public class Admin {
    @Constraint(constraint = "primary key")
    private String adminName;
    private String adminId;
    private String adminPassword;

    public Admin() {
        if (this.getClass().isAnnotationPresent(TableAnnotation.class)) {
            TableClass.createTable(this.getClass().getCanonicalName());
        }
    }

    public Admin(String adminName, String adminId, String adminPassword) {
        this.adminName = adminName;
        this.adminId = adminId;
        this.adminPassword = adminPassword;
    }

    public Admin(String adminId, String adminPassword) {
        this.adminId = adminId;
        this.adminPassword = adminPassword;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword;
    }
}
