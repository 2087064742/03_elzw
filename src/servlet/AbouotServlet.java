package servlet;

import domain.About;
import domain.Aboutzs;
import service.AboutService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @author shkstart
 * @create 2019-05-18 17:26
 */
@WebServlet("/about")
public class AbouotServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        AboutService aboutService=new AboutService();

        List<About> abouts=null;
        List<Aboutzs> aboutzs=null;
        try {
            String user = (String) req.getAttribute("user");
            abouts=aboutService.about();
            aboutzs=aboutService.aboutzs();
        } catch (Exception e) {
            e.printStackTrace();
        }
        req.setAttribute("a",abouts);
        req.setAttribute("b",aboutzs);
        req.getRequestDispatcher("/jsp/about.jsp").forward(req,resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
