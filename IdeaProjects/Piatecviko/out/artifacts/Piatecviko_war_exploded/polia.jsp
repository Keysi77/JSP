<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 21.03.2018
  Time: 9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Polia</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%
String[] pole_s= new String[20];

for(int i=0; i<pole_s.length; i++) {
    pole_s[i] = "pole" + (i+1);

}
%>

<table class="table table-striped">
    <tr>
        <%
            for(int i=0; i < pole_s.length; i++){

        %>
        <td>
            <%
                out.println(pole_s[i]);
            %>
        </td>
        <%
            }
        %>
    </tr>
</table>
<%
    String[][] dvojPole = new String[3][5]; //1 je riadok 2 je stlpec

    for(int i=0; i<dvojPole.length; i++) {
        for (int j = 0; j<dvojPole[i].length; j++) {
            dvojPole[i][j] = "pole" + (i+1) + (j+1);

        }
    }
    %>

<table class="table table-striped">
    <% for(int i=0; i<dvojPole.length; i++){
        %>
    <tr>
    <%
        for(int j=0; j<dvojPole[i].length; j++){
    %>
        <td>
            <%=dvojPole[i][j]%>
        </td>
        <%
            }
        %>
    </tr>
    <%
        }
    %>

</table>
</body>
</html>
