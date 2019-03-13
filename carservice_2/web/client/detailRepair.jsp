<%@ page import="com.carservice.model.Repair" %>
<%@ page import="com.carservice.controller.dao.RepairImplement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../includes/header.jsp" %>
<title>Update my repair</title>
<%@include file="includes/navbar.jsp" %>
<%
    if (session.getAttribute("client_email") == null) {
        response.sendRedirect("myRepairs.jsp");
        return;
    }
%>
</head>
<body>
<%
    int id_repair = Integer.parseInt(request.getParameter("id_repair"));
    Repair repair = new Repair();
    RepairImplement repairDao = new RepairImplement();
    repair = repairDao.getRepairWhereId(id_repair);

    ArrayList<Repair> repairStatuss = new ArrayList<>();
    repairStatuss = repairDao.getAllStatusRepair();
%>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1>Edit my Car Repair</h1>

            <h2>My car: <%=repair.getMotor_vehicle_licence_plate()%>
            </h2>


            <table class="table table-hover text-center">
                <thead>
                <tr>
                    <td>id_repair</td>
                    <td>client_email</td>
                    <td>car_brand</td>
                    <td>car_model</td>
                    <td>motor_vehicle_licence_plate</td>
                    <td>vin_number</td>
                    <td>what_repair</td>
                    <td>status</td>


                </tr>
                </thead>

                <%
                    if (repair.getStatus_repair() == 1) {
                        out.println("<tr class=\"info\">");
                    } else if (repair.getStatus_repair() == 2) {
                        out.println("<tr class=\"warning\">");
                    } else if (repair.getStatus_repair() == 3) {
                        out.println("<tr class=\"success\">");
                    } else if (repair.getStatus_repair() == 4) {
                        out.println("<tr class=\"danger\">");
                    } else {
                        out.println("<tr>");
                    }
                %>
                <%--<tr>--%>
                    <td><%=repair.getId_repair()%>
                    </td>
                    <td><%=repair.getClient_email()%>
                    </td>
                    <td><%=repair.getCar_brand()%>
                    </td>
                    <td><%=repair.getCar_model()%>
                    </td>
                    <td><%=repair.getMotor_vehicle_licence_plate()%>
                    </td>
                    <td><%=repair.getVin_number()%>
                    </td>
                    <td><%=repair.getWhat_repair()%>
                    </td>
                <td><%=repair.getStatus_repair()%></td>

                </tr>

            </table>



        </div>

    </div>
    <div class="row">

        <div class="col-lg-6">
            <h2>Vasa oprava je momentalne v stave: <strong><%=repair.getStatus_repair()%></strong></h2>
            <table class="table table-bordered">
                <thead>
                <tr>

                    <td>Id</td>
                    <td>Vysvetlenie</td>
                </tr>
                </thead>
                <%
                    for (int i = 0; i < repairStatuss.size(); i++) {
                %>
                <%
                    if (repairStatuss.get(i).getId_status() == 1) {
                        out.println("<tr class=\"info\">");
                    } else if (repairStatuss.get(i).getId_status() == 2) {
                        out.println("<tr class=\"warning\">");
                    } else if (repairStatuss.get(i).getId_status() == 3) {
                        out.println("<tr class=\"success\">");
                    } else if (repairStatuss.get(i).getId_status() == 4) {
                        out.println("<tr class=\"danger\">");
                    } else {
                        out.println("<tr>");
                    }
                %>

                    <%--<%
                        if (repairStatuss.get(i).getStatus_repair() == 1) {%>

                    <td class="info"><%=repairStatuss.get(i).getId_status()%></td>
                    <td class="info"><%=repairStatuss.get(i).getStatus()%></td>

                        <%} else if (repairStatuss.get(i).getStatus_repair() == 2) {%>
                    <td class="warning"><%=repairStatuss.get(i).getId_status()%></td>
                    <td class="warning"><%=repairStatuss.get(i).getStatus()%></td>

                       <% } else if (repairStatuss.get(i).getStatus_repair() == 3) {%>
                    <td class="success"><%=repairStatuss.get(i).getId_status()%></td>
                    <td class="success"><%=repairStatuss.get(i).getStatus()%></td>
                    <% } else if (repairStatuss.get(i).getStatus_repair() == 4) {%>
                    <td class="danger"><%=repairStatuss.get(i).getId_status()%></td>
                    <td class="danger"><%=repairStatuss.get(i).getStatus()%></td>

                       <% } else {%>
                          <td><%=repairStatuss.get(i).getId_status()%></td>
                    <td><%=repairStatuss.get(i).getStatus()%></td>
                       <% }
                    %>--%>

                    <td><%=repairStatuss.get(i).getId_status()%></td>
                    <td><%=repairStatuss.get(i).getStatus()%></td>
                </tr>
                <% } %>
            </table>

        </div>
    </div>
    </div>
</div>
</body>
</html>
