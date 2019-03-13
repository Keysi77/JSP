<%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 16. 5. 2018
  Time: 15:55
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
    <%
        try{
            assert connection != null;
            statement = connection.createStatement();
            String id = request.getParameter("id");
            // typ, vaha, narodenie, farba, popis
            int no = Integer.parseInt(id);
            String sql ="SELECT * FROM zvierata WHERE id='"+no+"'";
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

    <div class="imgAdopcia">
        <%
            Object src = "obrazky/dogs/"+resultSet.getString("typ")+".jpg";
            out.println("<img src=" +src+'>') ;
        %>
    </div>


    <div class="formAdopcia">

    <form method="post" id="adopcia">



        <h1>Informácie o zvierati</h1>
        <div class="form-group primary">
            <label for="typ">Typ</label>
            <input type="text" class="form-control" disabled="disabled" id="typ" name="typ" value="<%=resultSet.getString("typ")%>" >
        </div>
        <div class="form-group">
            <label for="vaha">Váha</label>
            <input type="text" class="form-control" disabled="disabled" id="vaha" name="vaha" value="<%=resultSet.getInt("vaha") %>" >
        </div>
        <div class="form-group">
            <label for="narodenie">Narodenie</label>
            <input type="text" class="form-control" disabled="disabled" id="narodenie" name="narodenie" value="<%=resultSet.getString("narodenie")%>" >
        </div>
        <div class="form-group">
            <label for="farba">Narodenie</label>
            <input type="text" class="form-control" disabled="disabled" id="farba" name="farba" value="<%=resultSet.getString("farba")%>" >
        </div>
        <div class="form-group">
            <label for="popis">Popis</label>
            <input type="text" class="form-control" disabled="disabled" id="popis" name="popis" value="<%=resultSet.getString("popis")%>" >
        </div>
    </div>
        <h1>Kontaktné informácie o Vás</h1>
        <div class="form-group col">
            <label for="menoAdopcia">Vaše meno</label>
            <input type="text" class="form-control" id="menoAdopcia" name="menoAdopcia" placeholder="Vložte Váše celé meno" >
        </div>
        <div class="form-group">
            <label for="emailAdopcia">Email address</label>
            <input type="email" class="form-control" id="emailAdopcia" name="emailAdopcia" aria-describedby="emailHelp" placeholder="Vložte Váš email">
        </div>
        <div class="form-group">
            <label for="textAdopcia">Vložte Vašu poznámku</label>
            <textarea class="form-control" id="textAdopcia" name="textAdopcia" rows="3" placeholder="Vložte poznámku a dôvod, prečo si chcete adoptovať zvieratko"></textarea>
        </div>
        <%
            }
        %>
        <button type="submit" class="btn btn-primary">Záväzne odoslať</button>

    </form>

</div>
<%
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>
