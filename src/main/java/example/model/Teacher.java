package example.model;

import org.springframework.stereotype.Component;

@Component
public class Teacher {
    private String tname;
    private String tusername;
    private String tpassword;

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTusername() {
        return tusername;
    }

    public void setTusername(String tusername) {
        this.tusername = tusername;
    }

    public String getTpassword() {
        return tpassword;
    }

    public void setTpassword(String tpassword) {
        this.tpassword = tpassword;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "tname='" + tname + '\'' +
                ", tusername='" + tusername + '\'' +
                ", tpassword='" + tpassword + '\'' +
                '}';
    }
}
