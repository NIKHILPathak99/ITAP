<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String name = (String) session.getAttribute("name");
    if(name==null){
    	session.setAttribute("msg", "Please Login First !!");
    	response.sendRedirect("index.jsp");
    }
    else{
    
    %>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"
        integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .heading {
            width: 400px !important;
            padding: 10px;
        }

        .cont {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        span {
            border-bottom: 1px solid rgba(255, 255, 255, 0.536);
            padding-bottom: 5px;
        }

        .btn {
            margin-top: 10px !important;
            width: 120px !important;
            height: 50px !important;
            border: 1px solid #0ef;
            transition: all 0.5s;
            border-radius: 10px !important;
        }

        .btn>a {
            text-decoration: none;
            color: rgb(108, 117, 124) !important;
        }

        .btn:hover {
            background: #0ef;
            color: #1f242d;
            box-shadow: 0 0 20px #0ef;
        }

        .para {
            opacity: 0.7;
        }
    </style>
    <title>Itap</title>
</head>

<body style="background-color:  rgb(15 23 42);">
    <section class="container-fluid">
        <div class="container cont">
            <div class="heading">
                <h3 class="text-center text-warning mb-5 fs-1"><span>itap</span></h3>
                <h1 class="text-center text-success mb-5">Careers At Itap</h1>
                <p class="text-center text-light">Become part of India's largest platform dedicated to connecting and
                    uplifting the nation's working class. Our mission is to provide meaningful career opportunities and
                    reshape the employment landscape for blue and grey collar professionals across the country.</p>

                <div class="d-flex justify-content-center">
                    <button class="btn "><a href="">View Jobs</a></button>
                </div>
            </div>
        </div>
    </section>

    <section class="container-fluid py-5 " style="background-color:  rgba(20, 31, 54, 0.833);">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div>
                        <h1 class="text-center text-light mb-3 ">1 Crore+</h1>
                        <p class="text-center text-light ">Job Seekers</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div>
                        <h1 class="text-center text-light mb-3">2.5 Crore+</h1>
                        <p class="text-center text-light">Interviews & Professional Conversations.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div>
                        <h1 class="text-center text-light mb-3">50 Laks+</h1>
                        <p class="text-center text-light">jobs</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container-fluid mt-5 py-5">
        <div class="container">
            <h1 class="text-center mb-5 text-warning">Benefits</h1>
            <p class="text-center text-light fs-3 mb-5">When we say employee first, this is what we mean</p>
            <div class="row g-4 mb-5">
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div>
                        <p class="mb-3 text-center text-light"><i
                                class="fa-solid fa-money-bill-trend-up fs-1 mb-3 mt-4"></i></p>
                        <h4 class="mb-3 text-center  text-danger">Stock Plan</h4>
                        <p class="text-center text-light fs-4 fst-italic para">Generous Stock options! <br> We want you
                            to grow along with <br> the company.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div>
                        <p class="mb-3 text-center text-light"><i class="fa-solid fa-gift fs-1 mb-3 mt-4"></i></p>
                        <h4 class="mb-3 text-center  text-danger">Wellness Program</h4>
                        <p class="text-center text-light fs-4 fst-italic para">Your well being is of utmost <br>
                            important for us. <br>
                            Unlimited Therapy sessions <br> with our partner.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div>
                        <p class="mb-3 text-center text-light"><i class="fa-solid fa-house fs-1 mb-3 mt-4"></i></p>
                        <h4 class="mb-3 text-center text-danger">Work Remotely</h4>
                        <p class="text-center
                        text-light fs-4 fst-italic para">If you want to work from the <br> Himalayas, feel free as long
                            as <br> you have good connectivity.</p>
                    </div>
                </div>
            </div>

            <div class="row g-4 mt-5">
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div>
                        <p class="mb-3 text-center text-light"><i class="fa-solid fa-money-bill fs-1 mb-3 mt-4"></i></i>
                        </p>
                        <h4 class="mb-3 text-center  text-danger">Rewards & Recognition</h4>
                        <p class="text-center text-light fs-4 fst-italic para">Fast track your career! <br>
                            We give extra brownies for the <br> best performers.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div>
                        <p class="mb-3 text-center text-light"><i class="fa-solid fa-notes-medical fs-1 mb-3 mt-4"></i>
                        </p>
                        <h4 class="mb-3 text-center  text-danger">Health Insurance</h4>
                        <p class="text-center text-light fs-4 fst-italic para">We not only take care of you <br> but
                            also your family too. <br>
                            We have taken Mediclaim for <br> your Parents + Spouse + Kids.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-12">
                    <div>
                        <p class="mb-3 text-center text-light"><i class="fa-solid fa-award fs-1 mb-3 mt-4"></i></p>
                        <h4 class="mb-3 text-center text-danger">Performance Bonus</h4>
                        <p class="text-center
                        text-light fs-4 fst-italic para">You ace your targets and we <br> will grace you with a big
                            <br> bonus, as our way of saying <br>Well Done!</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container-fluid">
        <div class="container">
            <h1 class="text-center text-light mt-3 mb-5">Follow us on Social Media</h1>
            <div  class="d-flex justify-content-center">
                <p class="text-info fs-1 me-5"><i class="fa-brands fa-facebook-f"></i></p>
                <p class="text-info fs-1 me-5"><i class="fa-brands fa-square-x-twitter"></i></p>
                <p class="text-info fs-1 me-5"><i class="fa-brands fa-linkedin"></i></p>
                <p class="text-info fs-1 me-5"><i class="fa-brands fa-instagram"></i></p>
            </div>
        </div>
    </section>

    <hr class="text-light mb-2 mt-5">
      <p class="text-center fs-4 cursor pointer"><a href="index.jsp" class="text-decoration-none text-success ">View website</a></p>
    <hr class="text-light mb-5">





    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>


</body>

</html>
<%}%>