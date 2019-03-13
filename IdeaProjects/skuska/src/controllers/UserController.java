package controllers;

import models.User;

import java.sql.*;
import java.util.ArrayList;


/**
 * Created by student on 16.05.2017.
 */
public class UserController {

    public void pridaj(String email, String password, String celeMeno, String krajinaPovodu, int zamestnany){
        Connection con = null;      //java.sql
        PreparedStatement ps = null;
        //ResultSet rs = null;
        //ArrayList<Student> studenti = new ArrayList<>();
        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skuska","root","root");
            System.out.print("Som pripojeny");

            String sql = "INSERT INTO user (email, password, celeMeno, krajinaPovodu, zamestnany) VALUES (?,AES_ENCRYPT(?,?),?,?,?)";
            ps = con.prepareStatement(sql);
            ps.setString(1,email);
            ps.setString(2,password);
            ps.setString(3,"tajneheslo");
            ps.setString(4,celeMeno);
            ps.setString(5,krajinaPovodu);
            ps.setInt(6,zamestnany);
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

    public ArrayList<User> selectVsetkych(){
        Connection con = null;      //java.sql
        PreparedStatement ps = null;
        ResultSet rs = null;
        ArrayList<User> u = new ArrayList<>();
        //int p = 0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/skuska","root","root");
            System.out.print("Som pripojeny");

            String sql = "SELECT * FROM user";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()){

                    u.add(new User(rs.getInt("id"),rs.getString("email"),rs.getString("celeMeno"),rs.getString("krajinaPovodu"),rs.getInt("zamestnany")));
            }
            //System.out.println(p);

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
            return u;
        }

    }
}
