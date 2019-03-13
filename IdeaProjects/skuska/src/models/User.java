package models;

/**
 * Created by student on 16.05.2017.
 */
public class User {

    private int id;
    private String email;
    private String celeMeno;
    private String krajinaPovodu;
    private int zamestnany;

    public User(int id, String email, String celeMeno, String krajinaPovodu, int zamestnany) {
        this.id = id;
        this.email = email;
        this.celeMeno = celeMeno;
        this.krajinaPovodu = krajinaPovodu;
        this.zamestnany = zamestnany;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCeleMeno() {
        return celeMeno;
    }

    public void setCeleMeno(String celeMeno) {
        this.celeMeno = celeMeno;
    }

    public String getKrajinaPovodu() {
        return krajinaPovodu;
    }

    public void setKrajinaPovodu(String krajinaPovodu) {
        this.krajinaPovodu = krajinaPovodu;
    }

    public int getZamestnany() {
        return zamestnany;
    }

    public void setZamestnany(int zamestnany) {
        this.zamestnany = zamestnany;
    }
}
