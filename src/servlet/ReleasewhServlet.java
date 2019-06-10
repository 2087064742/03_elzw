package servlet;

import domain.Opu;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import service.OpuService;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

@WebServlet(name = "ReleasewhServlet", urlPatterns = "/releaseswh")
public class ReleasewhServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        //设置编码
        request.setCharacterEncoding("utf-8");

        DiskFileItemFactory factory = new DiskFileItemFactory();
        //创建解析器
        ServletFileUpload sfu=new ServletFileUpload(factory);
        //设置上传文件的大小
        sfu.setFileSizeMax(20*1024*100);
        //解析request
        try {
            List<FileItem> list=sfu.parseRequest(request);
            Opu opu = new Opu();
            opu.setUserid("1");
            opu.setMaintitle(list.get(0).getString("UTF-8"));
            opu.setVicetitle(list.get(1).getString("UTF-8"));
            opu.setCityname(list.get(2).getString("UTF-8"));
            opu.setMytext(list.get(3).getString("UTF-8"));
            System.out.println(opu.toString());

            String localPath = getServletContext().getRealPath("/opuImg/");
            String fileName = UUID.randomUUID().toString().replace("-", "")+"_"+list.get(4).getName();
            String filePath = localPath + fileName;


            //传递到service
            opu.setFile(filePath);
            OpuService service=new OpuService();

            boolean issend = service.releasewh(opu);
            //页面跳转
            if (issend) {
                File f = new File(localPath);
                // 如果文件夹不存在，创建一个文件夹
                if(!f.exists()){
                    f.mkdirs();
                }

                //使用目录和文件名称创建目标文件
                File fi=new File(localPath,fileName);
                //保存文件
                list.get(4).write(fi);
                System.out.println(filePath);
                response.sendRedirect(request.getContextPath() + "/jsp/releasewhSuccess.jsp");

            } else {
                response.sendRedirect(request.getContextPath() + "/jsp/releasewhFail.jsp");

            }


        } catch (FileUploadException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }






    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
