package com.src.service;

import com.src.dao.AdminDao;
import com.src.dao.AdminDaoImpl;
import com.src.model.Admin;
import com.src.model.UsersFlight;

public class AdminServiceImpl implements AdminService {
    private AdminDao adao = new AdminDaoImpl();

    @Override
    public int addUser(UsersFlight user) {
        return adao.addUser(user);
    }

    @Override
    public int deleteUser(UsersFlight user) {
        return adao.deleteUser(user);
    }

    @Override
    public int addCity(String city) {
        return adao.addCity(city);
    }

    @Override
    public int addAdmin(Admin admin) {
        return adao.addAdmin(admin);
    }

    @Override
    public int getAdmin(Admin admin) {
        return adao.getAdmin(admin);
    }

    @Override
    public int adminCheck(Admin admin) {
        return adao.adminCheck(admin);
    }
}
