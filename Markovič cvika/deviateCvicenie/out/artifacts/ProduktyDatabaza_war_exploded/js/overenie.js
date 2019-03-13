/**
 * Created by miro on 07.03.2018.
 */

$( document ).ready(function() {

    $("#form").validate({

        rules: {
            name: {
                required: true,
                rangelength: [3, 80]
            },
            price: {
                required: true,
                rangelength: [1, 10]
            },
            amount: {
                required: true,
                min: 0,
                max: 100
            }
        }
    });
});
