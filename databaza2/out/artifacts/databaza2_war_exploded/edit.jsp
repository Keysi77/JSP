<%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 14. 4. 2018
  Time: 15:25
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>Edit</title>
    <%@include file="parts/head.jsp"%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>

</head>
<body>
<%

    Connect connect = new Connect();
    try {
        Class.forName(connect.getJdbc());
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    try {
        connection = DriverManager.getConnection(connect.getDbURL()+connect.getDbname(), connect.getUser(), connect.getPassword());
    } catch (SQLException e) {
        e.printStackTrace();
    }

%>

    <div class="container">
        <form method="post" id="produkt">
            <%
                try{
                statement = connection.createStatement();
                String id = request.getParameter("id");
                int no = Integer.parseInt(id);
                String sql ="SELECT * FROM product WHERE id='"+no+"'";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
            %>
            <div class="form-group primary">
                <label for="nameEdit">Name</label>
                <input type="text" class="form-control" id="nameEdit" name="nameEdit" value="<%=resultSet.getString("name")%>" >
            </div>
            <div class="form-group">
                <label for="amountEdit">Amount</label>
                <input type="text" class="form-control" id="amountEdit" name="amountEdit" value="<%=resultSet.getInt("amount")%>" >
            </div>
            <div class="form-group">
                <label for="priceEdit">Price</label>
                <input type="text" class="form-control" id="priceEdit" name="priceEdit" value="<%=resultSet.getInt("price")%>" >
            </div>
<%
    }
%>
            <button type="submit" class="btn btn-primary">Uložiť</button>
        </form>
    </div>
<%

// nove premenne z formularu, ktory bol editovany
    String nameEdit = request.getParameter("nameEdit");
    Integer amountEdit = Integer.valueOf(request.getParameter("amountEdit")) ;
    Integer priceEdit = Integer.valueOf(request.getParameter("priceEdit"));
    Integer sumaEdit = priceEdit*amountEdit;

        String query = "UPDATE product SET name=?, amount=?, price=?, suma=? WHERE id='"+no+"'";
        PreparedStatement stmp = connection.prepareStatement(query);
        stmp.setString(1,nameEdit);
        stmp.setInt(2,amountEdit);
        stmp.setInt(3,priceEdit);
        stmp.setInt(4,sumaEdit);
        stmp.executeUpdate();
        response.sendRedirect("sent.jsp");

    } catch (Exception e) {
        e.printStackTrace();
    }

%>
    <div class="container">
            <form method="post" id="zvierata">
                <%
                    try{
                        statement = connection.createStatement();
                        String id = request.getParameter("id");
                        int no = Integer.parseInt(id);
                        String sql ="SELECT * FROM zvierata WHERE id='"+no+"'";
                        resultSet = statement.executeQuery(sql);
                        while(resultSet.next()){
                %>
                <div class="form-group primary">
                    <label for="typ">Name</label>
                    <input type="text" class="form-control" id="typ" name="typ" value="<%=resultSet.getString("typ")%>" >
                </div>
                <div class="form-group">
                    <label for="vaha">Amount</label>
                    <input type="text" class="form-control" id="vaha" name="vaha" value="<%=resultSet.getInt("vaha")%>" >
                </div>
                <div class="form-group">
                    <label for="narodenie">Price</label>
                    <input type="text" class="form-control" id="narodenie" name="narodenie" value="<%=resultSet.getString("narodenie")%>" >
                </div>
                <div class="form-group">
                    <label for="farba">Price</label>
                    <input type="text" class="form-control" id="farba" name="farba" value="<%=resultSet.getString("farba")%>" >
                </div>
                <div class="form-group">
                    <label for="popis">Price</label>
                    <input type="text" class="form-control" id="popis" name="popis" value="<%=resultSet.getString("popis")%>" >
                </div>
                <%
                    }
                %>
                <button type="submit" class="btn btn-primary">Uložiť</button>
            </form>
    </div>
<%

        // nove premenne z formularu, ktory bol editovany
        String nameEditZviera = request.getParameter("typ");
        Integer vahatEditZviera = Integer.valueOf(request.getParameter("vaha")) ;
        String narodenieEditZviera = request.getParameter("narodenie");
        String farbaEditZviera = request.getParameter("farba");
        String popisEditZviera = request.getParameter("popis");


        String query = "UPDATE zvierata SET typ=?, vaha=?, narodenie=?, farba=?, popis=? WHERE id='"+no+"'";
        PreparedStatement stmp = connection.prepareStatement(query);
        stmp.setString(1,nameEditZviera);
        stmp.setInt(2,vahatEditZviera);
        stmp.setString(3,narodenieEditZviera);
        stmp.setString(4,farbaEditZviera);
        stmp.setString(5,popisEditZviera);
        stmp.executeUpdate();
        response.sendRedirect("sent.jsp");

    } catch (Exception e) {
        e.printStackTrace();
    }

%>

</body>
</html>
