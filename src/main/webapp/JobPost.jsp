<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Itap</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }
        .post-job-card {
            background: #fff;
            border-radius: 8px;
            padding: 30px;
            width: 100%;
            max-width: 600px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        }
        .post-job-card h3 {
            font-weight: 600;
            margin-bottom: 20px;
            text-align: center;
        }
        .form-group label {
            font-weight: 500;
        }
        .btn-primary {
            width: 100%;
            font-weight: 600;
        }
    </style>
</head>
<body>

<div class="post-job-card">
    <h3>Post a Job</h3>
    <%String msg = (String) session.getAttribute("msg"); 
if(msg!=null){
%>
<p class="text-center"> <%=msg %>  </p>
<%
}
else{%>
	<p class="text-center"></p>
	<%}
session.setAttribute("msg", null);%>
    <form method="post" action="addjob">
        <div class="form-group">
            <label for="jobTitle">Job Title</label>
            <input type="text" class="form-control" name="post" id="jobTitle" placeholder="Enter job title" required>
        </div>
        <div class="form-group">
            <label for="companyName">Company Name</label>
            <input type="text" class="form-control" name="cname" id="companyName" placeholder="Enter company name" required>
        </div>
        <div class="form-group">
            <label for="jobLocation">Location</label>
            <input type="text" class="form-control" name="location" id="jobLocation" placeholder="Enter job location" required>
        </div>
        <div class="form-group">
            <label for="jobLocation">Salary</label>
            <input type="text" name="minsal"  id="jobLocation" placeholder="Min-salary" required>
            <input type="text" name="maxsal"  id="jobLocation" placeholder="Max-salary" required>
        </div>
        <div class="form-group">
            <label for="jobType">Exprience</label>
            <select class="form-control" name="exp" id="jobType" required>
                <option value="Fresher">Freshers</option>
                <option value="Experience">Exprience</option>
            </select>
        </div>
        <div class="form-group">
            <label for="jobType">Job Type</label>
            <select class="form-control" name="type" id="jobType" required>
                <option value="">Select job type</option>
                <option value="Full Time">Full Time</option>
                <option value="Part Time">Part Time</option>
                <option value="Internship">Internship</option>
                <option value="Work from home">Work from home</option>
                <option value="For women">For women</option>
            </select>
        </div>
        <div class="form-group">
            <label for="jobDescription">Job Description</label>
            <textarea class="form-control" name="desc" id="jobDescription" rows="4" placeholder="Enter job description" required></textarea>
        </div>
        <button  class="btn btn-primary">Post Job</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
