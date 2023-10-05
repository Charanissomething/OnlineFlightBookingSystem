package com.src.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.src.model.Admin;
import com.src.model.UsersFlight;

public class AdminDaoImpl implements AdminDao {
    DaoService ds = new DaoService();

    @Override
    public int addUser(UsersFlight user) {
        // TODO: Implement addUser method
        return 0;
    }

    @Override
    public int deleteUser(UsersFlight user) {
        // TODO: Implement deleteUser method
        return 0;
    }

    @Override
    public int addCity(String city) {
        // TODO: Implement addCity method
        return 0;
    }

    @Override
    public int addAdmin(Admin admin) {
        Statement st = ds.getMyStatement();
        String sql = "INSERT INTO Admin VALUES ('" + admin.getAdminId() + "', '"
                + admin.getAdminName() + "', '" + admin.getAdminPassword() + "')";
        int x = 0;
        try {
            x = st.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ds.closeMyStatement();
        return x;
    }

    @Override
    public int getAdmin(Admin admin) {
        Statement st = ds.getMyStatement();
        String query = "SELECT * FROM Admin WHERE adminid='" + admin.getAdminId() + "'";
        int i = 0;
        try {
            ResultSet rs = st.executeQuery(query);
            if (rs.next()) i++;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ds.closeMyStatement();
        return i;
    }

    @Override
    public int adminCheck(Admin admin) {
        String adminName = admin.getAdminName();
        int c = 0;
        for (int j = 0; j < adminName.length(); j++) {
            if (Character.isUpperCase(adminName.charAt(j))) c++;
        }
        return (c > 0) ? 1 : 0;
    }
}
