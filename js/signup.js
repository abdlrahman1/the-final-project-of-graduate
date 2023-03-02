var removeMark = document.querySelector(".remove_mark_signup");
removeMark.addEventListener("click", function () {
  document.getElementById("signup_con").style.display = "none";
  black.style.display='none';
});


function signup(){
    signup_con.style.display = "block";
    if(signup_con.style.display="block"){
        black.style.display = "block";
    } else {
        black.style.display="none";
    }  
};

function validateForm() {
    // Clear error messages
    clearErrors();
  
    // Get form inputs
    const username = document.getElementById("username").value.trim();
    const firstname = document.getElementById("firstname").value.trim();
    const lastname = document.getElementById("lastname").value.trim();
    const email = document.getElementById("email").value.trim();
    const password = document.getElementById("password").value.trim();
  
    // Validate username
    if (username === "") {
        document.querySelector(".username_div").style.display = "block";
        document.querySelector(".username_div .error").style.display = "block";
        document.querySelector(".username_div .error").innerHTML = "Please enter a valid username.";
    }
  
    // Validate first name
    if (firstname === "") {
        document.querySelector(".firstname_div").style.display = "block";
        document.querySelector(".firstname_div .error").style.display = "block";
        document.querySelector(".firstname_div .error").innerHTML = "Please enter a valid first name.";
    }
  
    // Validate last name
    if (lastname === "") {
        document.querySelector(".lastname_div").style.display = "block";
        document.querySelector(".lastname_div .error").style.display = "block";
        document.querySelector(".lastname_div .error").innerHTML = "Please enter a valid last name.";
    }
  
    // Validate email
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (email === "") {
        document.querySelector(".email_div").style.display = "block";
        document.querySelector(".email_div .error").style.display = "block";
        document.querySelector(".email_div .error").innerHTML = "Please enter your email address.";
    } else if (!emailRegex.test(email)) {
        document.querySelector(".email_div").style.display = "block";
        document.querySelector(".email_div .error").style.display = "block";
        document.querySelector(".email_div .error").innerHTML = "Please enter a valid email address.";
    }
  
    // Validate password
    if (password === "") {
        document.querySelector(".password_div").style.display = "block";
        document.querySelector(".password_div .error").style.display = "block";
        document.querySelector(".password_div .error").innerHTML = "Please enter a password.";
    } else if (password.length < 6) {
        document.querySelector(".password_div").style.display = "block";
        document.querySelector(".password_div .error").style.display = "block";
        document.querySelector(".password_div .error").innerHTML = "Password must be at least 6 characters long.";
    }
  
    // Check if there are any error messages displayed
    const errors = document.querySelectorAll(".error");
    for (let i = 0; i < errors.length; i++) {
        if (errors[i].style.display === "block") {
            // Form is not valid
            return false;
        }
    }
  
    // Form is valid
    return true;
}
  
function clearErrors() {
    // Clear error messages
    document.querySelector(".username_div .error").style.display = "none";
    document.querySelector(".firstname_div .error").style.display = "none";
    document.querySelector(".lastname_div .error").style.display = "none";
    document.querySelector(".email_div .error").style.display = "none";
    document.querySelector(".password_div .error").style.display = "none";
}
  
// Event listener for submit button
document.getElementById("submitBtn").addEventListener("click", function(event) {
    // Prevent the form from submitting if it's not valid
    if (!validateForm()) {
        event.preventDefault();
    }
});
