package com.src.dao;

import com.src.model.Admin;
import com.src.model.UsersFlight;

public interface AdminDao {
    int addUser(UsersFlight user);
    int deleteUser(UsersFlight user);
    int addCity(String city);
    int addAdmin(Admin admin);
    int getAdmin(Admin admin);
    int adminCheck(Admin admin);
}
