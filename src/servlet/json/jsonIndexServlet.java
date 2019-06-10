package servlet.json;

import domain.Index;
import net.sf.json.JSONArray;
import service.IndexService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @author shkstart
 * @create 2019-05-19 19:29
 */
@WebServlet(name = "json", urlPatterns = "/getIndex")
public class jsonIndexServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setHeader("Content-type", "application/json;charset=utf-8");

        IndexService indexService=new IndexService();

        List<Index> index=null;

        JSONArray jsonArray = new JSONArray();

        try {
            index=indexService.index();
        } catch (Exception e) {
            e.printStackTrace();
        }

        jsonArray.add(index);

        PrintWriter writer = response.getWriter();
        writer.print(jsonArray);
        response.getWriter().print(jsonArray);
    }

}
