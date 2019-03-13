
<%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 12. 4. 2018
  Time: 19:38
  To change this template use File | Settings | File Templates.
--%>
<%@include file="parts/head.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Produkty</title>
</head>
<body>
<br>

<%
    String totalPrice = null;
    Connect connect = new Connect();

    try {
        // JDBC connector
        Class.forName(connect.getJdbc());
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    // SUMA stlpca suma pompocou SUM()
    String strQuery = "SELECT SUM(suma) FROM product";

    try
        (
                // napojenie na databazu skuskadb
                Connection con = DriverManager.getConnection(connect.getDbURL()+connect.getDbname(), connect.getUser(), connect.getPassword());
                Statement st = con.createStatement();
        ){
        ResultSet resultSet= st.executeQuery(strQuery);
        while (resultSet.next()) {
            totalPrice = resultSet.getString(1);
        }
%>
<%
    /*
        String Indexrun = null;
        String strQuery2 = "SELECT COUNT(*) FROM product";
        ResultSet rs = st.executeQuery(strQuery);
       // Countrun = "";
        while (rs.next()) {
            Indexrun = rs.getString(1);
        }
 */
%>
<div class="container">
    <h1>Zoznam produktov: </h1>

    <table class="table table-striped main">
        <thead>
        <th> Produkt </th>
        <th> Množstvo </th>
        <th> Cena </th>
        <th> Suma </th>
        <th> Upraviť </th>
        <th> Vymazať </th>
        </thead>
        <%
                String sql ="SELECT * FROM product";
                resultSet = st.executeQuery(sql);
                 while(resultSet.next()){
        %>
        <tr>
            <td class="upper"><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getInt("amount")%> [pcs]</td>
            <td><%=resultSet.getInt("price")%> €</td>
            <td><%=resultSet.getInt("suma")%> €</td>
            <td><a href="edit.jsp?id=<%=resultSet.getInt("id")%>" class="btn btn-primary">Upraviť</a></td>
            <td><a href="/delete?id=<%=resultSet.getInt("id")%>" class="btn btn-danger">Vymazať</a></td>
        </tr>
        <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <tfoot>
        <tr>
        <td colspan="6"> <p class="float-right">Celková cena: <strong class="total-value"><%=totalPrice%></strong> €</p>
        </td>
        </tfoot>
        </tr>
    </table>


    <%


        try {
            // JDBC connector
            Class.forName(connect.getJdbc());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }



        try
                (
                        // napojenie na databazu skuskadb
                        Connection con = DriverManager.getConnection(connect.getDbURL()+connect.getDbname(), connect.getUser(), connect.getPassword());
                        Statement st = con.createStatement();
                ){
            ResultSet resultSet= st.executeQuery(strQuery);
            while (resultSet.next()) {
                totalPrice = resultSet.getString(1);
            }
            // typ, vaha, narodenie, farba, popis
    %>

  <div class="container">
    <h1>Zoznam zvierat: </h1>

    <table class="table table-striped main">
        <thead>
        <th> Typ </th>
        <th> Váha </th>
        <th> Narodenie </th>
        <th> Farba </th>
        <th> Popis </th>
        <th> Upraviť </th>
        <th> Vymazať </th>
        </thead>
        <%
            String sql2 ="SELECT * FROM zvierata";
            resultSet = st.executeQuery(sql2);
            while(resultSet.next()){
        %>
        <tr>
            <td class="upper"><%=resultSet.getString("typ") %></td>
            <td><%=resultSet.getInt("vaha")%> kg </td>
            <td><%=resultSet.getString("narodenie")%> </td>
            <td><%=resultSet.getString("farba")%> </td>
            <td><%=resultSet.getString("popis")%> </td>
            <td><a href="edit.jsp?id=<%=resultSet.getInt("id")%>" class="btn btn-primary">Upraviť</a></td>
            <td><a href="/deleteZviera?id=<%=resultSet.getInt("id")%>" class="btn btn-danger">Vymazať</a></td>
        </tr>
        <%
            }

            } catch (Exception e) {
            e.printStackTrace();
            }
        %>

    </table>
      <a class="btn btn-success float-right" href="admin.jsp">Pridať nový produkt</a>
  </div>






</div>

</body>
</html>
