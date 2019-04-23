package dao;

import domain.User;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import utils.DataSourceUtils;

import java.sql.SQLException;

public class UserDao {
    public void rigisterDao(User u) throws SQLException {

        QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());

        String sql="insert into user(userid,username,userpassword,useremail) value(?,?,?,?)";

        qr.update(sql,u.getId(),u.getUsername(),u.getUserpassword(),u.getUseremail());
    }

    public User RegisterRepetition(String username) throws SQLException {
        QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());

        String sql="select username from user where username = ?";

        return (User)qr.query(sql, new BeanHandler(User.class), username);
    }


    public User entryUser(String username, String password) throws SQLException {

        QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());

        String sql="select username,userpassword from user where username = ? and userpassword = ?";

        return (User)qr.query(sql, new BeanHandler(User.class), username, password);
    }
}
