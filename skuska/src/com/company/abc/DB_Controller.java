package com.company.abc;
import java.sql.*;

/**
 * Created by StanislavaTomagova on 5/30/2017.
 */

public class DB_Controller {
    Connection con = null;

    public Connection GetConnection()
    {
        System.out.println("GetConnection Called");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");

            try {
                this.con = DriverManager.getConnection("jdbc:mysql://localhost:3306/statnice","root","");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        System.out.println("Pripojeny do DB");
        return con;
    }

    public void Close_Connection(Connection con)
    {
        if (con!=null)
        {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void Close_ResultSet(ResultSet rs)
    {
        if (rs!=null)
        {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void Close_PreparedStatement (PreparedStatement ps)
    {
        if(ps!=null)
        {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    public void Close_Statement (Statement s)
    {
        if(s!=null)
        {
            try {
                s.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

}
