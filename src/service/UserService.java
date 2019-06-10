package service;

import dao.UserDao;
import domain.User;

import java.sql.SQLException;
import java.sql.SQLOutput;

public class UserService {
    public void rigisterService(User u) throws SQLException {
        new UserDao().rigisterDao(u);
    }

    // 登录
    public User entryService(String username, String password) {
        User user = null;
        try {
            user= new UserDao().entryUser(username, password);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    // 判断用户名是否重复
    public User RegisterRepetition(String username) {
        User user = null;
        try {
            user = new UserDao().RegisterRepetition(username);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

    public boolean user(String username, String password) throws SQLException {
        User user = new UserDao().entryUser(username, password);

        return user != null;
    }
}
