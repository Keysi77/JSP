<%@include file="includes/header.jsp"%>
<title>LOG OUT EMPLOYEE</title>
<%@include file="includes/navbar.jsp"%>

<%
    if (session.getAttribute("empl_email") == null){
        response.sendRedirect("loginEmpl.jsp");
        return;
    }else{
        session.invalidate();
        response.sendRedirect("loginEmpl.jsp");
    }
%>
</body>
</html>
