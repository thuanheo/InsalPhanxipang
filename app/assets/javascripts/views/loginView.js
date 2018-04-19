$.validator.addMethod("mail", function(value, element) {
  var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;      
  return this.optional(element) || re.test(value);
}, "Please enter a valid email address.");
$(".form-login").validate({
  rules: {
    "email": {
      required: true,
      mail: true
    },
    "password": {
      required: true,
    }
  },
  messages: {
    email: {
      required: "Username is required.",
    },
    password: {
      required: "Password is required."
    }
  }
});
