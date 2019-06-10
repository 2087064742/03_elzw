package servlet.json;

import domain.About;
import domain.Aboutzs;
import net.sf.json.JSONArray;
import service.AboutService;

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
 * @create 2019-05-20 13:21
 * @WebServlet(name = "json", urlPatterns = "/getIndex")
**/
@WebServlet(name = "json1", urlPatterns = "/getAbout")
public class jsonAboutServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setHeader("Content-type", "application/json;charset=utf-8");
        AboutService aboutService = new AboutService();
        HashMap<String, Object> map = new HashMap<>();
        List<About> abouts = null;
        List<Aboutzs> aboutzs = null;

        JSONArray jsonArray=new JSONArray();
        try {
            abouts = aboutService.about();
            aboutzs = aboutService.aboutzs();
        } catch (Exception e) {
            e.printStackTrace();
        }

        map.put("abouts",abouts);
        map.put("aboutzs",aboutzs);

        jsonArray.add(map);
        resp.getWriter().write(String.valueOf(jsonArray));
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
