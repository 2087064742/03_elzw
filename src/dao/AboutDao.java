package dao;

import domain.About;
import domain.Aboutzs;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import utils.DataSourceUtils;

import java.util.List;

/**
 * @author shkstart
 * @create 2019-05-18 17:23
 */
public class AboutDao {
    public List<About> findAll() throws Exception{
        QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
        String sql="select * from about";
        return qr.query(sql,new BeanListHandler<>(About.class));
    }

    public List<Aboutzs> findzsAll() throws Exception{
        QueryRunner qr=new QueryRunner(DataSourceUtils.getDataSource());
        String sql="select * from aboutzs";
        return qr.query(sql,new BeanListHandler<>(Aboutzs.class));
    }
}
