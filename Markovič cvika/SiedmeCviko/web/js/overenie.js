/**
 * Created by miro on 07.03.2018.
 */

$( document ).ready(function() {

    $("#form").validate({

        rules: {
            name: {
                required: true,
                rangelength: [5, 50]
            },
            rc: {
                required: true,
                rangelength: [11, 11]
            },
            age: {
                range: [1, 125]
            },
            sex: {
                required: true
            }
        }
    });
});
