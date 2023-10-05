package com.src.dao;

import java.util.ArrayList;
import com.src.model.UsersFlight;

public interface UserDao {
    // Check if a user exists
    public boolean userCheck(UsersFlight u);

    // Retrieve a user by their information
    public UsersFlight getUser(UsersFlight u);

    // Validate a user's credentials
    public int userCheckValidation(UsersFlight u);

    // Get a list of all users
    public ArrayList<UsersFlight> getUsers();

    // Add a new user
    public int addUser(UsersFlight u);

    // Delete a user by their user ID
    public int deleteUser(int userId);
}
