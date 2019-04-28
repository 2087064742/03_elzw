package service;

import dao.IndexDao;
import domain.Index;

import java.util.List;

/**
 * @author shkstart
 * @create 2019-04-26 14:57
 */
public class IndexService {

    public List<Index> index() throws Exception {
        IndexDao idao=new IndexDao();
        return idao.findAll();
    }
}
