package com.src.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.src.model.UsersFlight;

public class UserDaoImpl implements UserDao {

    @Override
    public boolean userCheck(UsersFlight u) {
        DaoService ds = new DaoService();
        Statement st = ds.getMyStatement();
        String query = "select * from UsersFlight where userid = " + u.getUserid();
        ResultSet rs = null;
        try {
            rs = st.executeQuery(query);
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ds.closeMyStatement();
        return false;
    }

    @Override
    public UsersFlight getUser(UsersFlight u) {
        DaoService ds = new DaoService();
        Statement st = ds.getMyStatement();
        String query = "select * from UsersFlight where userid = " + u.getUserid() + "";
        ResultSet rs = null;
        UsersFlight us = null;
        try {
            rs = st.executeQuery(query);
            if (rs.next()) {
                us = new UsersFlight(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ds.closeMyStatement();
        return us;
    }

    @Override
    public int userCheckValidation(UsersFlight u) {
        String uname = u.getUsername();
        int c = 0;
        for (int j = 0; j < uname.length(); j++) {
            if (Character.isUpperCase(uname.charAt(j))) {
                c++;
            }
        }
        return (c > 0) ? 1 : 0;
    }

    @Override
    public ArrayList<UsersFlight> getUsers() {
        DaoService ds = new DaoService();
        Statement st = ds.getMyStatement();
        String query = "select * from UsersFlight";
        ResultSet rs = null;
        ArrayList<UsersFlight> ual = new ArrayList<UsersFlight>();
        try {
            rs = st.executeQuery(query);
            while (rs.next()) {
                UsersFlight us = new UsersFlight(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
                ual.add(us);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ds.closeMyStatement();
        return ual;
    }

    @Override
    public int addUser(UsersFlight u) {
        DaoService ds = new DaoService();
        Statement st = ds.getMyStatement();
        int x = 0;
        String q = "insert into UsersFlight values(" + u.getUserid() + ",'" + u.getUsername() + "','" + u.getEmailid() + "','" + u.getPassword() + "')";
        try {
            x = st.executeUpdate(q);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ds.closeMyStatement();
        return x;
    }

    @Override
    public int deleteUser(int userid) {
        DaoService ds = new DaoService();
        Statement st = ds.getMyStatement();
        String q = "delete from UsersFlight where userid=" + userid;
        int x = 0;
        try {
            x = st.executeUpdate(q);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        ds.closeMyStatement();
        return x;
    }
}
