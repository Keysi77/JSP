$("#formular").validate({
    rules: {

        nazov:{
            required: true,
            minlength: 5
        },

        popis:{
            required: true,
            minlength: 5
        }

    }
});