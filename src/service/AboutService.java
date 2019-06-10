package service;

import dao.AboutDao;
import domain.About;
import domain.Aboutzs;

import java.util.List;

/**
 * @author shkstart
 * @create 2019-05-18 17:24
 */
public class AboutService {

    public List<About> about() throws Exception {
        AboutDao aboutDao = new AboutDao();
        List<About> abouts=aboutDao.findAll();
        return abouts;
    }

    public List<Aboutzs> aboutzs() throws Exception {
        AboutDao aboutDao = new AboutDao();
        List<Aboutzs> abouts=aboutDao.findzsAll();
        return abouts;
    }

}
