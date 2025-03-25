<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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
<html lang="en">
 <head>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>
   Job Listing
  </title>
  <script src="https://cdn.tailwindcss.com">
  </script>
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&amp;display=swap" rel="stylesheet"/>
  <style>
   body {
            font-family: 'Roboto', sans-serif;
        }
  </style>
 </head>
 <body class="bg-gray-100" style="background-color:rgb(15 23 42);">
  <header class="bg-gra shadow-sm">
   <div class="container mx-auto px-4 py-4 flex justify-between items-center">
    <div class="flex items-center space-x-4">
     <img src="imgs/Itap-logo.png" alt="" class="h-8" height="100" width="50px" style="border-radius: 10px;" >
     <nav class="hidden md:flex space-x-4">
      <a class="text-gray-200 hover:text-blue-600" href="#">
       Prepare
      </a>
      <a class="text-gray-200 hover:text-blue-600" href="#">
       Participate
      </a>
      <a class="text-gray-200 hover:text-blue-600" href="#">
       Opportunities
      </a>
     </nav>
    </div>
    <div class="flex items-center space-x-4">
     <input class="border rounded-full px-4 py-2 w-64" placeholder="Search jobs here" type="text"/>
     <button class="text-gray-200 hover:text-blue-600">
      <i class="fas fa-bell">
      </i>
     </button>
     <button class="text-gray-200 hover:text-blue-600">
      <i class="fas fa-user-circle">
      </i>
     </button>
    </div>
   </div>
  </header>
  <%HashMap<String, Object> job = (HashMap<String, Object>) session.getAttribute("getjob"); %>
  <main class="container mx-auto px-4 py-8">
   <div class="grid grid-cols-1 lg:grid-cols-3 gap-8">
    <div class="lg:col-span-2">
     <div class="bg-gray-600 p-6 rounded-lg shadow-sm">
      <div class="flex justify-between items-center">
       <div>
        <h1 class="text-2xl text-green-600 font-bold">
         <%= job.get("post") %>
        </h1>
        <p class="text-gray-200">
         <%= job.get("cname") %>
        </p>
        <div class="flex items-center space-x-2 text-yellow-500">
         <i class="fas fa-star">
         </i>
         <span>
          5.0
         </span>
         <span class="text-gray-200">
          (2 reviews)
         </span>
        </div>
        <div class="flex items-center space-x-4 text-gray-200 mt-2">
         <span>
          <i class="fas fa-briefcase">
          </i>
          <%= job.get("experience") %>
         </span>
         <span>
          <i class="fas fa-money-bill-wave">
          </i>
          Not Disclosed
         </span>
         <span>
          <i class="fas fa-map-marker-alt">
          </i>
          <%= job.get("location") %>
         </span>
        </div>
       </div>
       <div class="text-right">
        <button class="text-blue-200 hover:underline">
         Send me jobs like this
        </button>
       </div>
      </div>
      <div class="flex justify-between items-center mt-4">
       <div class="text-gray-200">
        <p>
         Posted: 2 days ago
        </p>
        <p>
         Opening: 1
        </p>
        <p>
         Applicant: 949
        </p>
       </div>
       <div class="flex space-x-4">
        <button class="bg-blue-600 text-white px-4 py-2 rounded-full">
         Save
        </button>
        <a href="UploadResume.jsp">
                <button class="bg-blue-600 text-white px-4 py-2 rounded-full">
         Apply on company site
        </button>
        </a>
       </div>
      </div>
     </div>
     <div class="bg-gray-600 p-6 rounded-lg shadow-sm mt-6">
      <h2 class="text-xl text-gray-200 font-bold">
       Job match score
      </h2>
      <div class="flex space-x-4 mt-2">
       <span class="bg-green-100 text-green-600 px-4 py-2 rounded-full">
        Early Applicant
       </span>
       <span class="bg-green-100 text-green-600 px-4 py-2 rounded-full">
        Keyskills
       </span>
       <span class="bg-green-100 text-green-600 px-4 py-2 rounded-full">
        Work Experience
       </span>
      </div>
     </div>
     <div class="bg-gray-600 p-6 rounded-lg shadow-sm mt-6">
      <h2 class="text-xl text-yellow-200 font-bold">
       Job description
      </h2>
      <p class="mt-4 text-gray-200">
       Sanak Software Solutions is looking for Web Developer to join our dynamic team and embark on a rewarding career journey.
      </p>
      <ul class="list-disc list-inside mt-4 space-y-2 text-gray-200">
       <li>
        <%= job.get("desc") %>
       </li>
      </ul>
      <div class="mt-6 ">
       <p class="text-gray-200">
        <strong class="text-gray-100">
         Role:
        </strong>
        Software Development - Other
       </p>
       <p class="text-gray-200">
        <strong class="text-gray-100">
         Industry Type:
        </strong>
        IT Services &amp; Consulting
       </p>
       <p class="text-gray-200">
        <strong class="text-gray-100">
         Department:
        </strong>
        Engineering - Software &amp; QA
       </p>
       <p class="text-gray-200">
        <strong class="text-gray-100">
         Employment Type:
        </strong>
        Full Time, Permanent
       </p>
       <p class="text-gray-200">
        <strong class="text-gray-100">
         Role Category:
        </strong>
        Software Development
       </p>
       <p class="text-gray-200">
        <strong class="text-gray-100">
         Education:
        </strong>
        UG: Any Graduate, PG: Any Postgraduate
       </p>
       <p class="text-gray-200">
        <strong class="text-gray-100">
         Key Skills:
        </strong>
        Web technologies, XML, Javascript, HTML, Troubleshooting
       </p>
      </div>
      <div class="flex space-x-4 mt-4">
       <a class="text-blue-300" href="#">
        <i class="fab fa-facebook">
        </i>
       </a>
       <a class="text-blue-300" href="#">
        <i class="fab fa-twitter">
        </i>
       </a>
       <a class="text-blue-300" href="#">
        <i class="fab fa-linkedin">
        </i>
       </a>
      </div>
      <div class="mt-4">
       <!-- <button class="text-blue-600 hover:underline">
        Report this job
       </button> -->
      </div>
     </div>
     <div class="bg-gray-600 p-6 rounded-lg shadow-sm mt-6">
      <h2 class="text-xl text-yellow-200 font-bold">
       About company
      </h2>
      <p class="mt-4 text-gray-200">
       Specialising in software development and IT consulting, Sanak Software Solutions offers customized technological solutions to help businesses optimize operations.
      </p>
     </div>
     <div class="bg-gray-600 p-6 rounded-lg shadow-sm mt-6">
      <h2 class="text-xl text-yellow-200 font-bold">
       Beware of impostors!
      </h2>
      <p class="mt-4 text-gray-200">
       Itap does not promise a job or an interview in exchange of money. Fraudsters may ask you to pay in the pretext of registration fee, Refundable Fee...
       <a class="text-blue-200 hover:underline" href="#">
        Read more
       </a>
      </p>
     </div>
     
    </div>
    <!-- <aside>
     <div class="bg-white p-6 rounded-lg shadow-sm">
      <h2 class="text-xl font-bold">
       Jobs you might be interested in
      </h2>
      <div class="mt-4 space-y-4">
       <div class="flex justify-between items-center">
        <div>
         <h3 class="text-lg font-bold">
          Front-end Developer- Trainee | On Contract
         </h3>
         <p class="text-gray-600">
          Rama Sagar
         </p>
         <div class="flex items-center space-x-2 text-yellow-500">
          <i class="fas fa-star">
          </i>
          <span>
           3.8
          </span>
          <span class="text-gray-600">
           (136 reviews)
          </span>
         </div>
         <p class="text-gray-600 mt-2">
          New Delhi, Delhi / NCR
         </p>
        </div>
        <div class="text-right">
         <p class="text-gray-600 mt-2">
          Posted 2 days ago
         </p>
        </div>
       </div>
       <div class="flex justify-between items-center">
        <div>
         <h3 class="text-lg font-bold">
          JavaScript Developer
         </h3>
         <p class="text-gray-600">
          CodeBlock Technologies
         </p>
         <div class="flex items-center space-x-2 text-yellow-500">
          <i class="fas fa-star">
          </i>
          <span>
           3.5
          </span>
          <span class="text-gray-600">
           (2 reviews)
          </span>
         </div>
         <p class="text-gray-600 mt-2">
          Noida
         </p>
        </div>
        <div class="text-right">
         <p class="text-gray-600 mt-2">
          Posted 2 days ago
         </p>
        </div>
       </div>
       <div class="flex justify-between items-center">
        <div>
         <h3 class="text-lg font-bold">
          Node Js Backend Developer
         </h3>
         <p class="text-gray-600">
          X-strategy Services LLP
         </p>
         <p class="text-gray-600 mt-2">
          Hybrid - Noida
         </p>
        </div>
        <div class="text-right">
         <p class="text-gray-600 mt-2">
          Posted 1 day ago
         </p>
        </div>
       </div>
       <div class="flex justify-between items-center">
        <div>
         <h3 class="text-lg font-bold">
          Odoo Developer
         </h3>
         <p class="text-gray-600">
          Dpdn Consultants
         </p>
         <p class="text-gray-600 mt-2">
          Noida
         </p>
        </div>
        <div class="text-right">
         <p class="text-gray-600 mt-2">
          Posted 1 day ago
         </p>
        </div>
       </div>
       <div class="flex justify-between items-center">
        <div>
         <h3 class="text-lg font-bold">
          Junior Web Developer
         </h3>
         <p class="text-gray-600">
          Innovative Technology Solutions
         </p>
         <div class="flex items-center space-x-2 text-yellow-500">
          <i class="fas fa-star">
          </i>
          <span>
           5.0
          </span>
          <span class="text-gray-600">
           (2 reviews)
          </span>
         </div>
         <p class="text-gray-600 mt-2">
          Noida(Sector-10 Noida), Delhi / NCR
         </p>
        </div>
        <div class="text-right">
         <p class="text-gray-600 mt-2">
          Posted 2 days ago
         </p>
        </div>
       </div>
      </div>
     </div>
     <div class="bg-white p-6 rounded-lg shadow-sm mt-6">
      <h2 class="text-xl font-bold">
       Reviews
      </h2>
      <div class="mt-4">
       <h3 class="text-lg font-bold">
        Test Engineer for 2 years in Theni
       </h3>
       <p class="text-gray-600">
        Anonymous
       </p>
       <p class="text-gray-600 mt-2">
        01 Sep 2022
       </p>
       <div class="flex items-center space-x-2 text-yellow-500">
        <i class="fas fa-star">
        </i>
        <i class="fas fa-star">
        </i>
        <i class="fas fa-star">
        </i>
        <i class="fas fa-star">
        </i>
        <i class="fas fa-star">
        </i>
       </div>
       <p class="text-gray-600 mt-2">
        Carrier Growth was Excellent for new Joiners...
       </p>
      </div>
      <div class="mt-4">
       <a class="text-blue-600 hover:underline" href="#">
        Read all 2 reviews
       </a>
      </div>
     </div>
    </aside> -->
   </div>
  </main>
 </body>
</html>

<%} %>
