package com.carservice.controller;

import java.sql.*;

/**
 * Created by Kanderka on 19.04.2017.
 */
public class DbConfing {
    Connection con = null;
    public Connection getConnection() {
        /*if (con != null) {
            return con;
        } else {*/
        try {
            String driver = "com.mysql.jdbc.Driver";
            String dbName = "testcarservice";
            String url = "jdbc:mysql://localhost:3306/" + dbName;
            String user = "root";
            String pass = "";
            Class.forName(driver);
            this.con = DriverManager.getConnection(url, user, pass);

        } catch (ClassNotFoundException e1) {
            e1.printStackTrace();
        } catch (SQLException sql) {
            sql.printStackTrace();
        }
        /*}*/
        return con;
    }//END Method getConnection()

    public void closeConnection(Connection con) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }//END Method closeConnection()

    public void closeResultSet(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }//END Method closeResultSet()

    public void closeStatement(Statement s) {
        if (s != null) {
            try {
                s.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }//END Method closeStatement()

    public void closePreparedStatement(PreparedStatement ps) {
        if (ps != null) {
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }//END Method closePrepareStatement()
}
