package domain;

import java.io.Serializable;

/**
 * @author shkstart
 * @create 2019-04-26 14:29
 */
public class Index implements Serializable{
    private Integer id;
    private String title;
    private String subhead;
    private String btn_txt;
    private String index_bj;

    @Override
    public String toString() {
        return "Index{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", subhead='" + subhead + '\'' +
                ", btn_txt='" + btn_txt + '\'' +
                ", index_bj='" + index_bj + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubhead() {
        return subhead;
    }

    public void setSubhead(String subhead) {
        this.subhead = subhead;
    }

    public String getBtn_txt() {
        return btn_txt;
    }

    public void setBtn_txt(String btn_txt) {
        this.btn_txt = btn_txt;
    }

    public String getIndex_bj() {
        return index_bj;
    }

    public void setIndex_bj(String index_bj) {
        this.index_bj = index_bj;
    }
}
