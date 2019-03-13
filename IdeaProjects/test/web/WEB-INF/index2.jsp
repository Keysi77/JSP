<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 24.04.2017
  Time: 9:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="javax.jws.soap.SOAPBinding" %>
<%@ page import="abc.user" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<%!
    ArrayList<user> (){
        ArrayList<User> pom = new ArrayList<>();

        Connection con = null;
        Statement s = null;
        ResultSet rs = null;
        //PreparedStatement ps = null;

        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("test:mysql://http://localhost:8080/test,"test","test");
            //out.print("pripojeny k DB");
            String sql = "SELECT * FROM User";
            sql = "SELECT * FROM User";
            s = con.createStatement();
            rs = s.executeQuery(sql);

        }
        catch (ClassNotFoundException e1){
            e1.printStackTrace();
        }
        catch (SQLException e2){
            e2.printStackTrace();
        }
        finally {
            try{
                if (con != null){
                    con.close();
                }
                if (s != null){
                    s.close();
                }
                if (rs != null){
                    rs.close();
                }
            }
            catch (SQLException e){
                e.printStackTrace();
            }
        }




    }
%>

</body>
</html>
