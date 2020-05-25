package example.model;

public class Student {
    private String sname;
    private String susername;
    private String spassword;


    public String getSname() {
        return sname;
    }

    public String getSpassword() {
        return spassword;
    }

    public String getSusername() {
        return susername;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public void setSpassword(String spassword) {
        this.spassword = spassword;
    }

    public void setSusername(String susername) {
        this.susername = susername;
    }

    @Override
    public String toString() {
        return "Student{" +
                "sname='" + sname + '\'' +
                ", susername='" + susername + '\'' +
                ", spassword='" + spassword + '\'' +
                '}';
    }
}
