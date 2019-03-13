/**
 * Created by miro on 07.03.2018.
 */

$( document ).ready(function() {

    $("#formLogin").validate({

        rules: {
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                minlength: 8
            }
        }
    });

    $("#formReg").validate({

        rules: {
            name: {
                required: true,
                minlength: 5
            },
            email: {
                required: true,
                email: true
            },
            password: {
                required: true,
                minlength: 8
            },
            password2: {
                equalTo: "#password"
            }

        }
    });
});
