package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Arrays;

/**
 * @author shkstart
 * @create 2019-04-23 18:24
 */

@WebServlet("/user")
public class UserServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        System.out.println("13213   "+id);
        //干掉session
        req.getSession().invalidate();
        //重定向
        if ("1".equals(id)){
            resp.sendRedirect(req.getContextPath()+"/index");
        }
        if ("2".equals(id)){
            resp.sendRedirect(req.getContextPath()+"/jsp/about.jsp");
        }

        if ("3".equals(id)){
            resp.sendRedirect(req.getContextPath()+"/jsp/services.jsp");
        }

        if ("4".equals(id)){
            resp.sendRedirect(req.getContextPath()+"/jsp/release.jsp");
        }

        //处理自动登录
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
