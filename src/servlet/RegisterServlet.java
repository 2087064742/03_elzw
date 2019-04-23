package servlet;

import domain.User;
import org.apache.commons.beanutils.BeanUtils;
import service.UserService;
import utils.UUIDUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.sound.midi.Soundbank;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

/**
 * 注册
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //获取注册页面中的参数
        // 用户名
        String username = request.getParameter("username");
        // 邮箱
        String useremail = request.getParameter("useremail");
        // 密码
        String userpassword = request.getParameter("userpassword");

        if(username == null || useremail == null || userpassword == null){
            request.setAttribute("msg","有必须填的数据为空");
            request.getRequestDispatcher("/jsp/index.jsp").forward(request,response);
        }

        username = new String(username.getBytes("iso-8859-1"), "utf-8");
        System.out.println("用户名："+username);
        System.out.println("邮箱："+useremail);
        System.out.println("密码："+userpassword);


        //调用service
        User u = new User();
        try {

            BeanUtils.populate(u, request.getParameterMap());

            //给用户创建一个id
            u.setId(UUIDUtils.getId());

            // 查询数据库中是否有重复的用户名
//            User user = new UserService().RegisterRepetition(username);

            //调用user service
            try {
                new UserService().rigisterService(u);
                //页面跳转
                request.getRequestDispatcher("/jsp/entry.jsp").forward(request,response);
            } catch (SQLException e) {
                e.printStackTrace();
                request.setAttribute("msg","添加商品失败");
                request.getRequestDispatcher("/jsp/register.jsp").forward(request,response);
            }



        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("123");

    }
}
