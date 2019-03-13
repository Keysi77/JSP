package com.company.abc;
import java.sql.*;
import java.util.ArrayList;

/**
 * Created by StanislavaTomagova on 5/30/2017.
 */
public class Statnice_Controller {

    public void insertStatnice (Statnice statnice) {
        Connection con = null;
        DB_Controller db = new DB_Controller();
        PreparedStatement ps = null;
        con = db.GetConnection();
        String sql = "INSERT INTO statnice (meno, kruzok, vek, hodnotenie1, hodnotenie2) VALUES  (?,?,?,?,?)";
        System.out.println("Statnice Controller Called");
        try{
            ps = con.prepareStatement(sql);
            ps.setString(1, statnice.getMeno());
            ps.setString(2, statnice.getKruzok());
            ps.setInt(3, statnice.getVek());
            ps.setString(4, statnice.getHodnotenie1());
            ps.setString(5, statnice.getHodnotenie2());
            System.out.println("voslo do TRY");
            ps.executeUpdate();
        }
        catch (SQLException e){
            e.printStackTrace();
        }
        finally {
            db.Close_Connection(con);
            db.Close_PreparedStatement(ps);
        }
    }


    public ArrayList<Statnice> selectStatnice ()
    {
        ArrayList<Statnice> pomAL = new ArrayList();

        Connection con = null;
        DB_Controller db = new DB_Controller();
        con = db.GetConnection();
        ResultSet rs = null;
        PreparedStatement ps = null;
        String sql = "SELECT * from statnice";



        try {
            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();


            while (rs.next()){
                Statnice statnice = new Statnice();
                statnice.setMeno(rs.getString("meno"));
                statnice.setKruzok(rs.getString("kruzok"));
                statnice.setVek(rs.getInt("vek"));
                statnice.setHodnotenie1(rs.getString("hodnotenie1"));
                statnice.setHodnotenie2(rs.getString("hodnotenie2"));

                pomAL.add(statnice);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try
        {
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }

        return pomAL;

    }
}
