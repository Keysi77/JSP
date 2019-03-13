<%@ page import="com.carservice.model.Client" %>
<%@ page import="com.carservice.controller.dao.ClientImplement" %>
<%@include file="../includes/header.jsp"%>
<title>Update - emloyee</title>
</head>
<body>
<%@include file="../includes/navbarAdmin.jsp"%>
<%
    if (session.getAttribute("empl_admin") == null){
        response.sendRedirect("loginEmplAdmin.jsp");
        return;
    }

%>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <a href="/employee/admin/logOutAdmin.jsp">Odhlas
                sa:</a> <%out.println(" " + (String) session.getAttribute("empl_admin"));%>
        </div>
    </div>
<%
    Client c = new Client();
    ClientImplement clientDao = new ClientImplement();
    int id_client = Integer.parseInt(request.getParameter("id_client"));
    c = clientDao.getClientWhereId(id_client);
%>


<h1>Update client - <i><%= c.getClient_email()%></i></h1>
<div class="col-lg-6">
    <form action='/editClient' method='post'>
        <div class="form-group">
            <input type='hidden' name='id_client' value='<%=c.getId_client() %>'/>
        </div>

        First name:
        <div class="form-group">
            <input type='text' class="form-control" name='client_first_name' value='<%= c.getClient_first_name()%> '/>
        </div>


        Second name:
        <div class="form-group">
            <input type='text' class="form-control" name='client_second_name' value='<%=c.getClient_second_name()%>'/>
        </div>


        emaol:
        <div class="form-group">
            <input type='text' class="form-control" name='client_email' value='<%=c.getClient_email()%>'/>
        </div>


        Password:
        <div class="form-group">
            <input type='password' class="form-control" name='client_pass' value='<%=c.getClient_pass()%>'/>
        </div>

        <button type="submit" class="btn btn-success">Save and Edit</button>
        <%--<input type='submit' value='Edit & Save '/>--%>
    </form>

</div>

</body>
</html>
