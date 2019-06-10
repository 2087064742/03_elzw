package servlet.json;

import domain.Index;
import domain.User;
import net.sf.json.JSONArray;
import service.IndexService;
import service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

/**
 * @author shkstart
 * @create 2019-05-29 15:32
 */
@WebServlet(name = "json123", urlPatterns = "/postUser")
public class jsonUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Content-type", "application/json;charset=utf-8");
        boolean result = false;
        String username = request.getParameter("username");
        System.out.println(username);
        String password = request.getParameter("password");
        System.out.println(password);
        UserService userService=new UserService();
        HashMap<String, Object> map = new HashMap<>();
        JSONArray jsonArray=new JSONArray();
        try {
           result = userService.user(username, password);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(result){
            map.put("result",0);
        } else {
            map.put("result", 1);
        }
        jsonArray.add(map);
        response.getWriter().write(String.valueOf(jsonArray));
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
