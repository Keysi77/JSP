<%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 16. 5. 2018
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="parts/head.jsp"%>
</head>
<body>

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


<div class="container">
    <h1>Zoznam produktov: </h1>


        <%
            String sql ="SELECT * FROM product";
            resultSet = st.executeQuery(sql);
            while(resultSet.next()){
        %>
    <div class="container group">
        <div class="row">
            <div class="col-num-2">

                <%
                    Object src = "obrazky/produkty/"+resultSet.getString("name")+".jpg";
                    out.println("<img src=" +src+'>') ;
                %>
                <div class="produkty-2-cols group">
                <h1> <%=resultSet.getString("name") %> </h1>
                <p><strong>Cena:</strong> <%=resultSet.getInt("price") %> €</p>
                    <p><strong>Skladom:</strong> <%=resultSet.getInt("amount") %> kusov</p>

                </div>
            </div>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>
        </div>
    </div>
</div>
</body>
</html>
