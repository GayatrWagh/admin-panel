function validateForm() {
    var name = document.getElementsByName('name')[0].value;
    var phone = document.getElementsByName('phone')[0].value;
    var email = document.getElementsByName('email')[0].value;
    var password = document.getElementsByName('password')[0].value;
    var confirmPassword = document.getElementsByName('confirmpassword')[0].value;

    // Check if all fields are filled
    if (name === '' || phone === '' || email === '' || password === '' || confirmPassword === '') {
        alert('Please fill in all fields.');
        return false;
    }

    // Validate Name (only alphabets)
    var nameRegex = /^[a-zA-Z\s]+$/;
    if (!nameRegex.test(name)) {
        alert('Name should contain only alphabets.');
        return false;
    }

    // Validate Phone Number (only 10 numerics)
    var phoneRegex = /^\d{10}$/;
    if (!phoneRegex.test(phone)) {
        alert('Phone Number should contain only 10 numeric characters.');
        return false;
    }
     // Validate Email
     var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
     if (!emailRegex.test(email)) {
         alert('Please enter a valid email address.');
         return false;
     }

    // Validate Password (at least 8 characters and special characters required)
    if (password.length < 8 || !/[!@#$%^&*(),.?":{}|<>]/.test(password)) {
        alert('Password should be at least 8 characters long and contain special characters.');
        return false;
    }

    // Check if password and confirm password match
    if (password !== confirmPassword) {
        alert('Password and Confirm Password do not match.');
        return false;
    }
    alert('Registration successful!');

    // You can add more specific validations for other fields if needed

    return true; // Form will submit if all validations pass
}