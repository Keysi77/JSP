package com.stranger.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by student on 25.04.2017.
 */
public class KnihaController {

     public void pridaj(String nazov, String popis, double cena, boolean pozicana){
         Connection con = null;      //java.sql
         PreparedStatement ps = null;
         //ResultSet rs = null;
         //ArrayList<Student> studenti = new ArrayList<>();
         try {

             Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stranger","stranger","123456");
             System.out.print("Som pripojeny");

             String sql = "INSERT INTO knizky (nazov, popis, cena, pozicana) VALUES (?,?,?,?)";
             ps = con.prepareStatement(sql);
             ps.setString(1,nazov);
             ps.setString(2,popis);
             ps.setDouble(3,cena);
             ps.setBoolean(4,pozicana);
             ps.executeUpdate();         //pri inserte, update a delete !!!!!!!!!!!!!!!!


         }catch (ClassNotFoundException | SQLException e){     //ak chcem vypisy, rozdelit do samostatnych blokov catch!!!
             e.printStackTrace();    //kde sa vyskytla vynimka - v konzole
             //System.out.println(e.getMessage());
         }finally {
             try {
                 if(con != null)
                     con.close();
             }catch (SQLException e2){
                 e2.printStackTrace();
             }
         }
    }

    public void udate(int idcko, String nazov, String popis, double cena, boolean pozicana){
        Connection con = null;      //java.sql
        PreparedStatement ps = null;
        //ResultSet rs = null;
        //ArrayList<Student> studenti = new ArrayList<>();
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stranger","stranger","123456");
            System.out.print("Som pripojeny");

            String sql = "UPDATE knizky SET nazov = ?, popis = ?, cena = ?, pozicana = ? WHERE knizky.id = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1,nazov);
            ps.setString(2,popis);
            ps.setDouble(3,cena);
            ps.setBoolean(4,pozicana);
            ps.setInt(5,idcko);
            ps.executeUpdate();         //pri inserte, update a delete !!!!!!!!!!!!!!!!


        }catch (ClassNotFoundException | SQLException e){     //ak chcem vypisy, rozdelit do samostatnych blokov catch!!!
            e.printStackTrace();    //kde sa vyskytla vynimka - v konzole
            //System.out.println(e.getMessage());
        }finally {
            try {
                if(con != null)
                    con.close();
            }catch (SQLException e2){
                e2.printStackTrace();
            }
        }
    }


}
