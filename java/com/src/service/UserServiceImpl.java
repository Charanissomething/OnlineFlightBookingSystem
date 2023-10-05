package com.src.service;

import java.util.ArrayList;
import com.src.dao.UserDao;
import com.src.dao.UserDaoImpl;
import com.src.model.UsersFlight;

public class UserServiceImpl implements UserService {
    private UserDao userDao = new UserDaoImpl();

    @Override
    public boolean userCheck(UsersFlight user) {
        return userDao.userCheck(user);
    }

    @Override
    public UsersFlight getUser(UsersFlight user) {
        return userDao.getUser(user);
    }

    @Override
    public int userCheckValidation(UsersFlight user) {
        return userDao.userCheckValidation(user);
    }

    @Override
    public ArrayList<UsersFlight> getUsers() {
        return userDao.getUsers();
    }

    @Override
    public int addUser(UsersFlight user) {
        return userDao.addUser(user);
    }

    @Override
    public int deleteUser(int userId) {
        return userDao.deleteUser(userId);
    }
}
