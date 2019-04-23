package servlet;

import domain.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/RegisterRepetitionServlet")
public class RegisterRepetitionServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取参数
        String username=request.getParameter("username");
        username=new String(username.getBytes("iso-8859-1"),"utf-8");
        System.out.println(username);

        //调用service
        User user=null;
        try {
            user = new UserService().RegisterRepetition(username);

        } catch (Exception e) {
            e.printStackTrace();
        }

        //判断user 写回信息
        if(user==null || username.equals(user)) {
            //用户名为空或者用户名已存在
            response.getWriter().print("1");
        }else {
            //用户名可以使用
            response.getWriter().print("0");
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
