/**
 * Created by miro on 07.03.2018.
 */

$( document ).ready(function() {

    $("#form").validate({

        rules: {
            brand: {
                required: true,
                rangelength: [2, 30]
            },
            color: {
                required: true,
                rangelength: [7, 7]
            }
        }
    });
});
