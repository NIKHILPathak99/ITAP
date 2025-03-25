<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Itap</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 400px;
            padding: 20px;
            background-color: #0d5b3ece;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            
        }
        h2 {
            text-align: center;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        button {
            width: 100%;
            padding: 10px;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
        .link {
            display: block;
            margin: 8px 0;
            color: #feee15;
            text-align: center;
            text-decoration: none;
            font-size: 20px !important;
        }
        .link:hover {
            text-decoration: underline;
        }
        .form-toggle {
            text-align: center;
            margin-top: 10px;
        }
        .form-toggle a {
            color: #4CAF50;
            cursor: pointer;
        }
        .google-btn {
            width: 100%;
            padding: 10px;
            background-color: #db4437;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 8px;
        }
        .google-btn:hover {
            background-color: #c53727;
        }
        .otp-btn {
            width: 100%;
            padding: 10px;
            background-color: #4285F4;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-top: 8px;
        }
        .otp-btn:hover {
            background-color: #357ae8;
        }
        .password-container {
            position: relative;
        }
        .show-password {
            position: absolute;
            right: 10px;
            top: 20px;
            cursor: pointer;
            color: #666;
        }
        input::placeholder{
            font-size: 15px;
        }
        .containers{
            position: fixed;
            top:0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
        }
        #bg-vd{
            width: 100%;
            height: 100%;
            object-fit: cover;
        }
    </style>
</head>
<body>


    <div class="containers">
        <video autoplay loop muted id="bg-vd">
            <source src="imgs/202587-918431513_small.mp4">
        </video>
    </div>

<div class="container">
    <h2 class="text-light">Login</h2>
    <form style="" action="login" method="post">
        <label for="emailUsername" class="text-light">Email ID / Username</label>
        <input type="text" id="emailUsername" name="userid" placeholder="Enter your active Email ID / Username" required>
        
        <div class="password-container">
            <label for="password" class="text-light">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>
            <span class="show-password mt-4" onclick="togglePassword()">Show</span>
        </div>
        
        <a href="#" class="link">Forgot Password?</a>
        <button class="bg-info mt-3">Login</button>


    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>
