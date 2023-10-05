package com.src.service;

import java.util.ArrayList;
import com.src.model.UsersFlight;

public interface UserService {
    public boolean userCheck(UsersFlight user);
    public int userCheckValidation(UsersFlight user);
    public UsersFlight getUser(UsersFlight user);
    public ArrayList<UsersFlight> getUsers();
    public int addUser(UsersFlight user);
    public int deleteUser(int userId);
}