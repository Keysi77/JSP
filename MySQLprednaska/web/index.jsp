<%@ page import="java.sql.*" %>
<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 28.03.2018
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Mysql</title>
  </head>
  <body>
    <%
      Connection con = null;
      Statement s = null;
      PreparedStatement ps = null;
      ResultSet rs = null;


      try {
          Class.forName("com.mysql.jdbc.Driver");

          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ukazkaPrednaska1", "ukazkaPrednaska1", "hesloheslo");
            // ukazkaPrednaska1 je nazov databazy v MySQL
          // uzivatelske meno ukazkaPrednaska1
          // heslo: hesloheslo
          out.print("Pripojeny k DB :)");

          con.close();      // nezabudnut !!!!
      }
      catch (SQLException e1) {
          e1.printStackTrace();     // vypis do console chyba
      }
      finally {
          try {
              if (con != null) {
                  con.close();
              }
              if (s != null) {
                  s.close();
              }
              if (ps != null) {
                  ps.close();
              }
              if (rs != null) {
                  rs.close();
              }
          }
          catch (SQLException e2) {
              e2.printStackTrace();
          }
      }
    %>
  </body>
</html>
