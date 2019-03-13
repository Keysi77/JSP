$("#formular").validate({
    rules: {

        email: {
            required: true,
            email: true
        },
        celeMeno: {
            required: true,
            minlength: 3
        },
        heslo1: {
            required: true,
            minlength: 4
        },
        heslo2: {
            required: true,
            equalTo: "#heslo1"
        }
    }
});