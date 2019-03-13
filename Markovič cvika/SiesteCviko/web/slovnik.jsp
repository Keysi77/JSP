<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 28.03.2018
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Vyhladavanie v slovniku DE/Sk</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <%
        HashMap<String, String> dict = (HashMap<String, String>) session.getAttribute("dict");
    %>
    <div class="container">
        <h2>Slovník obsahuje</h2>
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
    </div>

    <div class="container">
        <form action="slovnik.jsp" method="post">
            <div class="form-group">
                <label for="deWordFind">DE Wort</label>
                <input type="text" class="form-control" id="deWordFind" name="deWordFind" placeholder="Wort">

            </div>

            <button type="submit" class="btn btn-primary">Senden / odoslať</button>
        </form>
    </div>

    <%
        String deWord = request.getParameter("deWordFind");
        String foundWord = null;        // pomocna prem. aby som mohol vypisat text pomocou <p>
        if (deWord != null && dict != null) {
            for (String key : dict.keySet()) {
                if (key.equals(deWord)) {
                    foundWord = dict.get(key);
                }
            }
        }

        if (foundWord != null) {
        %>
            <p class="container">
                Pre hľadané slovo v DE = <%=deWord%> som našiel : <%=foundWord%>
            </p>
        <%
            }
            else {
        %>
            <p class="container">
                Slovíčko nie je v našej databáze
            </p>
        <%
            }
        %>

</body>
</html>
