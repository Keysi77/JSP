<%@include file="../includes/header.jsp" %>
<title>Add new repair</title>
<%@include file="includes/navbar.jsp" %>
<%
    if (session.getAttribute("client_email") == null) {
        response.sendRedirect("myRepairs.jsp");
        return;
    }
%>
</head>
<body>
<a href="/client/logOutClient.jsp">Odhlas sa:</a> <%out.println(" " + (String) session.getAttribute("client_email"));%>

<div class="container">
    <div class="row">
        <div class="col-lg-7">
            <h1>Add new Repair</h1>
            <%--<form action="/addNewRepair" method="post">--%>
            <form id="addNewRepair" method="post">
                <%--<div class="form-group">
                    <label for="id_repair">id_repair</label>
                    <input type="text" class="form-control" id="id_repair" name="id_repair">
                </div>--%>
                <%--<div class="form-group">
                    <label>id_client</label>
                    <input type="text" class="form-control" id="id_client" name="id_client">
                </div>--%>
            <%
                String emailOfClient = String.valueOf(session.getAttribute("client_email"));
            %>
                <div class="form-group">
                    <input type="hidden" class="form-control" id="client_email" name="client_email" value="<%=emailOfClient%>">
                </div>
                <div class="form-group">
                    <input type="hidden" class="form-control" id="status_repair" name="status_repair" value="0">
                </div>
                <div class="form-group">
                    <label>car_brand</label>
                    <input type="text" class="form-control" id="car_brand" name="car_brand">
                </div>
                <div class="form-group">
                    <label>car_model</label>
                    <input type="text" class="form-control" id="car_model" name="car_model">
                </div>
                <div class="form-group">
                    <label>motor_vehicle_licence_plate</label>
                    <input type="text" class="form-control" id="motor_vehicle_licence_plate" name="motor_vehicle_licence_plate">
                </div>
                <div class="form-group">
                    <label>vin_number</label>
                    <input type="text" class="form-control" id="vin_number" name="vin_number">
                </div>
                <div class="form-group">
                    <label>what_repair</label>
                    <input type="text" class="form-control" id="what_repair" name="what_repair">
                </div>
                <button id="btnAddNewRepair" class="btn btn-success" type="submit">Pridaj opravu</button>
                </form>
            <%--</form>--%>
            <%--</form>--%>
        </div>
        <div class="col-lg-5">
            <div class="result"></div>
        </div>
    </div>
</div>
<%--<script>
    $(document).ready(function () {
        $('#btnAddNewRepair').click(function () {
            $.post(
                "/addNewRepair",
                {
                    client_email: $('#client_email').val(),
                    car_brand: $('#car_brand').val(),
                    car_model: $('#car_model').val(),
                    motor_vehicle_licence_plate: $('#motor_vehicle_licence_plate').val(),
                    vin_number: $('#vin_number').val(),
                    what_repair: $('#what_repair').val(),
                    status_repair: $('#status_repair').val()
                },
                function (result) {
                    $('.result').html(result);
                    setTimeout(function () {
                        location.reload();
                    }, 3000);
                }
            );

        });
    });
</script>--%>
<%--<script>
    $(document).ready(function () {
        $("#addNewRepair").validate({
            rules: {
                 /*client_email : {
                     required: true,
                     email : true
                 },
                 status_repair :  {
                     required: true,
                     minlength : 5
                 },*/
                car_brand :  {
                    required: true,
                    maxlength : 5
                },
                car_model: {
                    required:true
                },
                motor_vehicle_licence_plate :  {
                    required: true,
                    maxlength: 5
                },
                vin_number :  {
                    required: true
                },
                what_repair :  {
                    required: true
                }
            },
            messages: {
                /* client_email: "Please insert your client_email",*/
                /* status_repair:"Please insert your status_repair",*/
                car_brand:"Please insert car_brand",
                car_model:"Please insert your car_model",
                motor_vehicle_licence_plate:"Please insert motor_vehicle_licence_plate",
                vin_number:"Please insert your vin_number",
                what_repair:"Please insert what_repairs"

            }
        });
    });




    $(document).ready(function () {
        $('#btnAddNewRepair').click(function () {
            $.post(
                "/addNewRepair",
                {
                    client_email: $('#client_email').val(),
                    car_brand: $('#car_brand').val(),
                    car_model: $('#car_model').val(),
                    motor_vehicle_licence_plate: $('#motor_vehicle_licence_plate').val(),
                    vin_number: $('#vin_number').val(),
                    what_repair: $('#what_repair').val(),
                    status_repair: $('#status_repair').val()
                },
                function (result) {
                    $('.result').html(result);
                    setTimeout(function () {
                        location.reload();
                    }, 3000);
                }
            );

        });
    });

</script>--%>
<script src="/sources/js/jquery.validate.min.js"></script>
<script src="../sources/js/insertNewRepairValidAjax.js"></script>
</body>
</html>