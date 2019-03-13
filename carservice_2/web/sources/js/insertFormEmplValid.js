$(document).ready(function () {
    $("#insertFormEmplValid").validate({
        rules: {
            empl_nic_name : {
                required: true,
                minlength : 5
            },
            empl_position :  {
                required: true,
                minlength : 5
            },
            empl_pass :  {
                required: true,
                minlength : 5
            },
            empl_pass_confirm: {
                required:true,
                equalTo: "#empl_pass"
            },
            empl_email :  {
                required: true,
                email : true
            },
            empl_tel_mun :  {
                required: true,
                minlength : 5
            },
            empl_personal_id :  {
                required: true,
                minlength : 5
            }
        },
        messages: {
            empl_nic_name: "please specify empl_nic_name",
            empl_position:"Please enter your empl_position",
            empl_pass:"Please enter your empl_pass",
            empl_pass_confirm:"Please enter your empl_pass_confirm",
            empl_email:"Please enter your empl_email",
            empl_position:"Please enter your empl_position",
            empl_tel_mun:"Please enter your empl_tel_mun",
            empl_personal_id:"Please enter your empl_personal_id"
        },
        submitHandler: function (form) {
            $.post(
                "/ServletInsertEmpl",
                {
                    empl_nic_name: $('#empl_nic_name').val(),
                    empl_position: $('#empl_position').val(),
                    empl_pass: $('#empl_pass').val(),
                    empl_email: $('#empl_email').val(),
                    empl_tel_mun: $('#empl_tel_mun').val(),
                    empl_personal_id: $('#empl_personal_id').val(),
                    is_admin: $('.is_admin:checked').val()
                },
                function (result) {
                    $('.result').html(result);
                    setTimeout(function () {
                        location.reload();
                    }, 3000);
                }
            )
        }

    });
});


/*
$(document).ready(function () {
    $('#btnInsertEmpl').click(function () {
        $.post(
            "/ServletInsertEmpl",
            {
                empl_nic_name: $('#empl_nic_name').val(),
                empl_position: $('#empl_position').val(),
                empl_pass: $('#empl_pass').val(),
                empl_email: $('#empl_email').val(),
                empl_tel_mun: $('#empl_tel_mun').val(),
                empl_personal_id: $('#empl_personal_id').val(),
                is_admin: $('.is_admin:checked').val()
            },
            function (result) {
                $('.result').html(result);
                //location.reload();
            }
        );

    });
});*/
