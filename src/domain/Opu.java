package domain;


public class Opu{


    public String maintitle;
    public String vicetitle;
    public String mytext;
    public String userid;
    public String file;
    public String cityname;

    public Opu() {
    }

    public Opu(String maintitle, String vicetitle, String mytext, String userid, String file, String cityname) {
        this.maintitle = maintitle;
        this.vicetitle = vicetitle;
        this.mytext = mytext;
        this.userid = userid;
        this.file = file;
        this.cityname = cityname;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname;
    }

    public String getMaintitle() {
        return maintitle;
    }

    public void setMaintitle(String maintitle) {
        this.maintitle = maintitle;
    }

    public String getVicetitle() {
        return vicetitle;
    }

    public void setVicetitle(String vicetitle) {
        this.vicetitle = vicetitle;
    }

    public String getMytext() {
        return mytext;
    }

    public void setMytext(String mytext) {
        this.mytext = mytext;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getFile() {
        return file;
    }

    public void setFile(String file) {
        this.file = file;
    }

    @Override
    public String toString() {
        return "Opu{" +
                "maintitle='" + maintitle + '\'' +
                ", vicetitle='" + vicetitle + '\'' +
                ", mytext='" + mytext + '\'' +
                ", userid='" + userid + '\'' +
                ", file='" + file + '\'' +
                '}';
    }
}