<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title>Itap</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.form-container {
    background-color:#2B3856;
    padding: 50px;
    margin: 50px auto;
    width: 400px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    color: #333;
}

label {
    font-size: 14px;
    color: #555;
    margin-top: 10px;
    display: block;
}

input[type="text"], input[type="email"], input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: transparent;
}

input::placeholder {
    font-size: 14px;
    color: #999;
}

.mobile-input {
    display: flex;
    align-items: center;
}

.mobile-input span {
    margin-right: 10px;
}

.radio-group {
    margin: 10px 0;
}

.checkbox-group {
    margin: 20px 0;
}

button {
    width: 100%;
    padding: 10px;
    background-color: #2196F3;
    border: none;
    color: white;
    font-size: 16px;
    border-radius: 5px;
    cursor: pointer;
    margin-top:10px;
    margin-bottom: 10px;
}

button:hover {
    background-color: #1E88E5;
}

.continue-with {
    text-align: center;
    margin-top: 20px;
}

.google-btn {
    background-color: #DB4437;
    color: white;
    padding: 10px;
    width: 100%;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.google-btn:hover {
    background-color: #C33D2E;
}

a {
    color: #2196F3;
    text-decoration: none;
}
.text-light{
    color: white;
}
a{
    color:green;
    font-size:20px;
    margin-top:10px;
    display:flex;
    justify-content:center;

}
a:hover{
     color: yellow;
}

    </style>
</head>
<body style="background-color: rgb(15 23 42);">
    <div class="form-container">
        <h2 class="text-light">Create your Profile</h2>
        <form id="naukri-form" action="Register" method = "post">
            <label for="fullname" class="text-light">Full Name</label>
            <input type="text" id="fullname" name="username" placeholder="What is your name?" required>

            <label for="email" class="text-light">Email ID</label>
            <input type="email" id="email" name="userid" placeholder="Tell us your Email ID" required>
            <small class="text-light">We'll send relevant jobs and updates to this email</small>

            <label for="password" class="text-light">Password</label>
            <input type="password" id="password" name="password" placeholder="Minimum 8 characters" required>
            <small class="text-light">This helps your account stay protected</small>

            <label for="mobile" class="text-light">Mobile Number</label>
            <div class="mobile-input">
                <span class="text-light">+91</span>
                <input type="text" id="mobile" name="contact" placeholder="Enter your mobile number" required>
            </div>
            

            <button type="submit" id="register-btn" class="text-light ">Register Now</button> 
            
        </form>
         <a href="index.jsp" >Back to Website <i class="fa-solid fa-arrow-right " style="margin-left:5px; font-size:20px; margin-top:2px;"></i> </a>

    </div>

  
</body>
</html>
    