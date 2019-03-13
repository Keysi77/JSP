<%@include file="../includes/header.jsp"%>
<title>LOG OUT ADMIN</title>
</head>
<body>
<%@include file="../includes/navbar.jsp"%>

<%
    if (session.getAttribute("empl_admin") == null){
        response.sendRedirect("loginEmplAdmin.jsp");
        return;
    }else{
        session.invalidate();
        response.sendRedirect("loginEmplAdmin.jsp");
    }
%>
</body>
</html>
