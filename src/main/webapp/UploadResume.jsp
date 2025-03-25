<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       
        <%
    String name = (String) session.getAttribute("name");
    if(name==null){
    	session.setAttribute("msg", "Please Login First !!");
    	response.sendRedirect("index.jsp");
    }
    else{
    
    %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java Developer Quiz</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #1d2536;
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 650px;
            background: rgba(44, 50, 62, 0.866);
            color:  #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.15);
            animation: fadeIn 0.5s ease-in-out;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        h2, h3 {
            text-align: center;
            color: #0056b3;
        }
        .btn-primary {
            width: 100%;
            font-size: 18px;
            border-radius: 8px;
            background: #0056b3;
            border: none;
            transition: background 0.3s;
        }
        .btn-primary:hover {
            background: #9e9e9e;
        }
        .form-control {
            border-radius: 8px;
            background-color: #555 !important; 
            color: rgba(255, 255, 255, 0.891) !important; 
            border: 1px solid #9b9b9b; 
        }
        .feedback {
            font-size: 14px;
            font-weight: bold;
        }
        .correct {
            color: green;
        }
        .incorrect {
            color: red;
        }
        .resume-upload {
           
            max-width: 300px;
            margin: 0 auto;
        }
        .res{
            color: yellow !important;
        }
    </style>
</head>
<body class="d-flex justify-content-center align-items-center vh-100">
    <div class="container">
        <form action="AddPdf" method="post" id="quizForm" enctype="multipart/form-data">
            <div class="mb-3">
                <label class="form-label">1. Which keyword is used to define a constant in Java?</label>
                <input type="text" class="form-control" id="q1">
                <small id="q1-feedback" class="feedback"></small>
            </div>
            <div class="mb-3">
                <label class="form-label">2. Which collection class allows null keys?</label>
                <input type="text" class="form-control" id="q2">
                <small id="q2-feedback" class="feedback"></small>
            </div>
            <div class="mb-3">
                <label class="form-label">3. What is the default value of a local variable in Java?</label>
                <input type="text" class="form-control" id="q3">
                <small id="q3-feedback" class="feedback"></small>
            </div>
            <div class="mb-3">
                <label class="form-label">4. Which of the following is not a Java feature?</label>
                <input type="text" class="form-control" id="q4">
                <small id="q4-feedback" class="feedback"></small>
            </div>
            <div class="mb-3">
                <label class="form-label">5. What does JVM stand for?</label>
                <input type="text" class="form-control" id="q5">
                <small id="q5-feedback" class="feedback"></small>
            </div>
            
            <h3 class="mt-4 fs-6 res">Upload Your Resume</h3>
            <div class="mb-3 resume-upload">
                <input type="file" name="resume" id="resume" class="form-control" accept=".pdf,.doc,.docx">
            </div>
            
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
    
    <script>
        const answers = {
            q1: "final",
            q2: "HashMap",
            q3: "No default value",
            q4: "Platform Dependent",
            q5: "Java Virtual Machine"
        };

        function submitForm() {
            let allCorrect = true;
            for (let key in answers) {
                let inputField = document.getElementById(key);
                let userInput = inputField.value.trim();
                let feedback = document.getElementById(key + "-feedback");

                if (userInput.toLowerCase() === answers[key].toLowerCase()) {
                    feedback.textContent = "Correct!";
                    feedback.className = "feedback correct";
                } else {
                    feedback.textContent = "Incorrect! The correct answer is: " + answers[key];
                    feedback.className = "feedback incorrect";
                    allCorrect = false;
                }
                
                // Ensure input field remains dark gray after submitting
                inputField.style.backgroundColor = "#555";
                inputField.style.color = "white";
            }
            
            let resume = document.getElementById('resume').files[0];
            if (!resume) {
                alert("Please upload your resume.");
                return;
            }
            
            if (allCorrect) {
                alert("Form submitted successfully!");
            }
        }
    </script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<%} %>
