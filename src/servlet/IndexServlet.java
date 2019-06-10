package servlet;

import domain.Index;
import service.IndexService;

import javax.naming.Context;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author shkstart
 * @create 2019-04-26 15:02
 */
@WebServlet("/index")
public class IndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        try {
            IndexService indexService = new IndexService();
            List<Index> index = null;
            String user = (String) request.getAttribute("user");
            System.out.println(user);

            index = indexService.index();
//            System.out.println("user:" + result);
            request.setAttribute("i", index);
            request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
