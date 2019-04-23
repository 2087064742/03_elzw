package servlet;

import domain.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegisterNameServlet")
public class RegisterNameServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String username = request.getParameter("username");

        System.out.println("username:" + username);

        // 查询数据库
        User user = new UserService().RegisterRepetition(username);

        String msg = "";

        if(user !=null){ // 说明数据库中已经有了这个用户名
            msg = "{\"content\":\"用户已存在\",\"flag\":true}";
        } else {
            msg = "{\"content\":\"用户不存在\",\"flag\":false}";
        }


        response.getWriter().write(msg);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
