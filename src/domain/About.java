package domain;

import java.io.Serializable;

/**
 * @author shkstart
 * @create 2019-05-18 17:20
 */
public class About implements Serializable {
    private Integer id;
    private String introduce;
    private String situation;
    private String propose1;
    private String propose2;
    private String propose3;

    @Override
    public String toString() {
        return "About{" +
                "id=" + id +
                ", introduce='" + introduce + '\'' +
                ", situation='" + situation + '\'' +
                ", propose1='" + propose1 + '\'' +
                ", propose2='" + propose2 + '\'' +
                ", propose3='" + propose3 + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public String getSituation() {
        return situation;
    }

    public void setSituation(String situation) {
        this.situation = situation;
    }

    public String getPropose1() {
        return propose1;
    }

    public void setPropose1(String propose1) {
        this.propose1 = propose1;
    }

    public String getPropose2() {
        return propose2;
    }

    public void setPropose2(String propose2) {
        this.propose2 = propose2;
    }

    public String getPropose3() {
        return propose3;
    }

    public void setPropose3(String propose3) {
        this.propose3 = propose3;
    }
}
