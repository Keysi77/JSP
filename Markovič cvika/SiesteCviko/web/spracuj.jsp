<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 28.03.2018
  Time: 8:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ulozenie</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <div class="container">
    <%
        request.setCharacterEncoding("UTF-8"); // formula bol odoslany v UTF8
        String deWord = request.getParameter("deWord");     // hodnota z formulara
        String skWord = request.getParameter("skWord");

        System.out.println(deWord);  // vypis do konzoly

        if (skWord == null || deWord == null && !skWord.isEmpty() && !deWord.isEmpty()) {
            response.sendRedirect("index.jsp");
        }

        HashMap<String, String> dict = (HashMap<String, String>) session.getAttribute("dict");

        if (dict != null) {
            dict.put(deWord, skWord);
        }
        else {
            dict = new HashMap<>();
            dict.put(deWord, skWord);
            session.setAttribute("dict", dict);
        }
    %>

        <table class="table table-striped">
            <tr>
                <th>
                    DE
                </th>
                <th>
                    SK
                </th>
            </tr>
            <%
                for (String key : dict.keySet()) {
            %>
                <tr>
                    <td><%=key%></td>
                    <td><%=dict.get(key)%></td>
                </tr>
            <%
                }
            %>
        </table>

        <a href="slovnik.jsp">Prechod na slovník</a>
    </div>
</body>
</html>
