$(document).ready(function () {
    $("#regFormClient").validate({
        rules: {
            client_first_name: {
                required: true,
                minlength: 5
            },
            client_second_name: {
                required: true,
                minlength: 5
            },
            client_pass: {
                required: true,
                minlength: 5
            },
            client_pass_confirm: {
                required: true,
                equalTo: "#client_pass"
            },
            client_email: {
                required: true,
                email: true
            }
        },
        messages: {
            client_first_name: "Please insert your First Name",
            client_second_name: "Please insert your Second Name",
            client_pass: "Please insert your password",
            client_pass_confirm: "Please insert your correct password",
            client_email: "Please insert your email andress"

        },
        submitHandler: function (form) {
            $.post(
                "/registrationClient",
                {
                    client_first_name: $('#client_first_name').val(),
                    client_second_name: $('#client_second_name').val(),
                    client_pass: $('#client_pass').val(),
                    client_email: $('#client_email').val()
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
    $('#btnInsertClient').click(function () {
        $.post(
            "/registrationClient",
            {
                client_first_name: $('#client_first_name').val(),
                client_second_name: $('#client_second_name').val(),
                client_pass: $('#client_pass').val(),
                client_email: $('#client_email').val()
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

/*$(document).ready(function () {
    $('#btnInsertClient').click(function () {
        $.post(
            "/registrationClient",
            {
                client_first_name: $('#client_first_name').val(),
                client_second_name: $('#client_second_name').val(),
                client_pass: $('#client_pass').val(),
                client_email: $('#client_email').val()
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
 * Created by Kanderka on 30.04.2017.
 */
