function validateForm() {
    var userid = document.getElementById("userid").value; 
    var username = document.getElementById("username").value;
    var emailid = document.getElementById("emailid").value;
    var password = document.getElementById("password").value;
    if (userid.length < 4 || userid.length > 20) {
        alert("User ID must be between 6 and 20 characters.");
        return false;
    }
    if (password.length < 8 || !/[A-Z]/.test(password)) {
        alert("Password must be at least 8 characters and contain at least one uppercase letter.");
        return false;
    }
    var emailRegex = /^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$/;
    if (!emailRegex.test(emailid)) {
        alert("Please enter a valid email address.");
        return false;
    }
    return true;
}