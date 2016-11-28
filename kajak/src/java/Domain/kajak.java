/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Domain;

/**
 *
 * @author sbh
 */
public class kajak {
    private int id;
    private String kayakname;
    private String description;
    private String year;
    private String length;
    
    public kajak() {
    }

    public kajak(int id, String kayakname, String description, String year, String length) {
        this.id = id;
        this.kayakname = kayakname;
        this.description = description;
        this.year = year;
        this.length = length;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getKayakname() {
        return kayakname;
    }

    public void setKayakname(String kayakname) {
        this.kayakname = kayakname;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }
    
    
}


