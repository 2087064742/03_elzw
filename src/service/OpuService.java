package service;

import dao.OpuDao;
import domain.Opu;

import java.io.File;
import java.sql.SQLException;

public class OpuService {


    public boolean releasewh(Opu myopu) {
        OpuDao dao=new OpuDao();
        int row= 0;
        try {
            row = dao.send(myopu);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return row>0?true:false ;
    }
}
