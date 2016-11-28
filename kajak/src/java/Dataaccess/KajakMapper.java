/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dataaccess;


import Domain.kajak;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author sbh
 */

public class KajakMapper {
//    public void createUser(){}
//    public User getUser (int id){}
    public ArrayList<kajak> getAllKajak(){
    ////////// STINES FORSØG
        ArrayList<kajak> listOfKajak = new ArrayList<kajak>();
        
        try{
            String sql = "select id,kayakname,description,year,length from kayak";
            Connection con = DB.getConnection();
            PreparedStatement pstmt = con.prepareStatement(sql);
        
            ResultSet rs = pstmt.executeQuery();
            
            while (rs.next()) {
            
                kajak selectedKajak = new kajak(); //Thomas: her har jeg lavet et objekt (efter at have tilføjet en default konstruktør til User klassen
                                
                selectedKajak.setId(rs.getInt("id"));
                selectedKajak.setKayakname(rs.getString("kayakname"));
                selectedKajak.setDescription(rs.getString("description"));
                selectedKajak.setYear(rs.getString("year"));
                selectedKajak.setLength(rs.getString("length"));
                
                listOfKajak.add(selectedKajak);
            }
            
        }catch (SQLException ex) {
                ex.printStackTrace();
            }
        return listOfKajak;
    
    }

    

    
    
//////  TEST af outputtet fra de forskellige kajakmappers funktioner
    
//    public static void main(String[] args) {
//        KajakMapper km = new KajakMapper();
//        
//        ArrayList<kajak> kajaker = km.getAllKajak();
//        for (kajak kajaks : kajaker) {
//            System.out.println(kajaks.getKayakname());
//        }
//        
//        
//    }
    
    
}
