package com.kmikt;


import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import java.sql.*;

/**
 * Created by miro on 25.04.2018.
 */
public class DatabaseConnectionManager {

    public static Connection getConnection(){
        DataSource ds;
        Context initContext;
        Connection con = null;
        try {
            initContext = new InitialContext();
            Context envContext  = (Context)initContext.lookup("java:/comp/env");
            ds = (DataSource)envContext.lookup("jdbc/database");
            con = ds.getConnection();
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return con;
    }
}
