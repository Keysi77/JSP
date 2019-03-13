package com.kmikt;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import java.sql.Connection;
/**
 * Created by miro on 02.05.2018.
 */

public class ConnectionManager {

    public static String AES_KEY = "FEIJ#9cv9x920939vxkxjkj";

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
