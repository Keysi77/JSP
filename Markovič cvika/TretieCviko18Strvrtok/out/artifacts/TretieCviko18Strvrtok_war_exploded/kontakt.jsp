<%@ page import="com.kmikt.User" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 08.03.2018
  Time: 8:09
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<p>
    <%
        User user = new User();
        user.setEmail("miro@miro.sk");

        out.print(user.getEmail());
    %>
</p>
