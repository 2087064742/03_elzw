package servlet;

import domain.User;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/EntryServlet")
public class EntryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置编码
        request.setCharacterEncoding("utf-8");

        //获取参数
        String username = request.getParameter("username");
        String password = request.getParameter("password");


        //判断username或者userpassword是否为空
        if("".equals(username) || "".equals(password) ){
            request.setAttribute("msg","用户名或者密码不能为空");
            request.getRequestDispatcher("/jsp/entry.jsp").forward(request,response);
        }else{
            //调用service
            try {
                User user = new UserService().entryService(username,password);
                if(user != null){
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    response.sendRedirect("/jsp/index.jsp");
                }else{
                    request.setAttribute("msg","用户名或者密码错误");
                    request.getRequestDispatcher("/jsp/entry.jsp").forward(request,response);
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("123");
    }
}
