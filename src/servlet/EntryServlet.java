package servlet;

import domain.User;
import service.UserService;
import utils.MD5Utils;

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
        String password = MD5Utils.md5(request.getParameter("password"));


        //判断username或者userpassword是否为空
        if("".equals(username) || "".equals(password) ){
            request.setAttribute("msg","用户名或者密码不能为空");
            request.getRequestDispatcher("/jsp/entry.jsp").forward(request,response);
        }else{
            //调用service
            try {
                String id = request.getParameter("id");
                User user = new UserService().entryService(username,password);
                if(user != null){
                    HttpSession session = request.getSession();
                    session.setAttribute("user", user);
                    if ("1".equals(id)){
                        response.sendRedirect(request.getContextPath()+"/index");
                    }
                    if ("2".equals(id)){
                        response.sendRedirect(request.getContextPath()+"/jsp/about.jsp");
                    }

                    if ("3".equals(id)){
                        response.sendRedirect(request.getContextPath()+"/jsp/services.jsp");
                    }

                    if ("4".equals(id)){
                        response.sendRedirect(request.getContextPath()+"/jsp/release.jsp");
                    }

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
    }
}
