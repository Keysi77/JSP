<%@ page import="com.carservice.controller.dao.EmployeeImplement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.carservice.model.Employee" %>


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
        Employee e = new Employee();
        EmployeeImplement emplDao = new EmployeeImplement();

        int id_empl = Integer.parseInt(request.getParameter("id_empl"));
        e = emplDao.getEmployeeWhereId(id_empl);
    %>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-6">

            <h1>Update Employee - <i><%=e.getEmpl_nic_name()%> </i></h1>
            <form action='/editEmpl' method='post'>
                <div class="form-group">
                    <input type='hidden' name='id_empl' value='<%=e.getId_empl() %>' />
                </div>
                Name:
                <div class="form-group">
                    <input type='text' class="form-control" name='empl_nic_name' value='<%= e.getEmpl_nic_name()  %> ' />
                </div>
                Position:
                <div class="form-group">
                    <input type='text' class="form-control" name='empl_position' value='<%=e.getEmpl_position() %>' />
                </div>
                Password:
                <div class="form-group">
                    <input type='password' class="form-control" name='empl_pass' value='<%=e.getEmpl_pass() %>' />
                </div>
                Email:
                <div class="form-group">
                    <input type='text' class="form-control" name='empl_email' value='<%=e.getEmpl_email() %>' />
                </div>
                Tel. Num:
                <div class="form-group">
                    <input type='text' class="form-control" name='empl_tel_mun' value='<%=e.getEmpl_tel_mun() %>' />
                </div>
                Personal id:
                <div class="form-group">
                    <input type='text' class="form-control" name='empl_personal_id' value='<%=e.getEmpl_personal_id() %>' />
                </div>
                <%--<input type='submit' value='Edit & Save ' />--%>
                <button type="submit" class="btn btn-primary">Save and Edit</button>
            </form>



        </div>
    </div>
</div>

</body>
</html>
