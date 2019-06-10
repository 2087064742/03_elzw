package dao;

import domain.Opu;
import org.apache.commons.dbutils.QueryRunner;
import utils.DataSourceUtils;

import java.sql.SQLException;

public class OpuDao {


    public int send(Opu myopu) throws SQLException {

        QueryRunner qr = new QueryRunner(DataSourceUtils.getDataSource());

        String sql="insert into opus(imgfile,maintitle,vicetitle,mytext,cityname,userid) value(?,?,?,?,?,?)";

        int update =qr.update(sql,myopu.getFile(),myopu.getMaintitle(),myopu.getVicetitle(),myopu.getMytext(),myopu.getCityname(),myopu.getUserid());
        return update;
    }
}
