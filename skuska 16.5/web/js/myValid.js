/**
 * Created by Kanderka on 16.05.2017.
 */


$(document).ready(function () {
    $("#myValid").validate({
        rules: {
            meno : {
                required: true,
                minlength : 5
            },
            km :  {
                required: true,
                minlength : 5
            },
            email :  {
                required: true,
                email : true
            }
        },
        messages: {
            meno: "Napis svoje meno",
            km:"Napis KM",
            email:"napis email",

        }

    });
});



