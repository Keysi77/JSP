/**
 * Created by Kanderka on 02.05.2017.
 */
$(document).ready(function () {
    $("#addNewRepair").validate({
        rules: {
            // client_email : {
            //     required: true,
            //     email : true
            // },
            // status_repair :  {
            //     required: true,
            //     minlength : 5
            // },
            car_brand :  {
                required: true
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
            // client_email: "Please insert your client_email",
            // status_repair:"Please insert your status_repair",
            car_brand:"Please insert car_brand",
            car_model:"Please insert your car_model",
            motor_vehicle_licence_plate:"Please insert motor_vehicle_licence_plate",
            vin_number:"Please insert your vin_number",
            what_repair:"Please insert what_repairs"

        },
        submitHandler: function (form) {
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
        }
    });
});




/*$(document).ready(function () {
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
});*/



/**
 * Created by Kanderka on 02.05.2017.
 */
/*
$(document).ready(function () {
    $("#addNewRepair").validate({
        rules: {
            // client_email : {
            //     required: true,
            //     email : true
            // },
            // status_repair :  {
            //     required: true,
            //     minlength : 5
            // },
            car_brand :  {
                required: true
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
            // client_email: "Please insert your client_email",
            // status_repair:"Please insert your status_repair",
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
*/
