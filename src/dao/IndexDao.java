package dao;

import domain.Index;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.DataSourceUtils;

import java.util.List;

/**
 * @author shkstart
 * @create 2019-04-26 14:53
 */
public class IndexDao {
    public List<Index> findAll() throws Exception{
        QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
        String sql="select * from xtwh_index";
        return qr.query(sql,new BeanListHandler<>(Index.class));
    }
}
