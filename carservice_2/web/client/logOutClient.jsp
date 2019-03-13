<%
    if (session.getAttribute("client_email") == null){
        response.sendRedirect("index.jsp");
        return;
    }else{
        session.invalidate();
        response.sendRedirect("index.jsp");
    }
%>