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
        .btn {
            width: 150px !important;
            height: 40px !important;
            background-color: rgb(0, 98, 0);
            font-size: 15px !important;
            display: flex;
            justify-content: center;
            align-items: center;

        }

        .btn>a {
            font-size: 15px !important;
        }

        .image {
            width: 100%;
            height: 350px;
            border-radius: 30px;
        }

        .card {
            height: 500px;
        }

        .card>img {
            height: 210px;
            border-radius: 30px;
        }

        .navbar-light .navbar-toggler-icon {
            background-image: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30'%3e%3cpath stroke='rgba%28255, 0, 0, 1%29' stroke-linecap='round' stroke-miterlimit='10' stroke-width='2' d='M4 7h22M4 15h22M4 23h22'/%3e%3c/svg%3e");
        }

        .navbar-toggler {
            padding: .25rem .75rem;
            font-size: 1.25rem;
            line-height: 1;
            background-color: rgba(30, 47, 61, 0.689);
            border: 1px solid transparent;
            border-radius: .25rem;
            transition: box-shadow .15s ease-in-out;
        }
    </style>
    <title>Hello, world!</title>
</head>

<body style="background-color: rgb(15 23 42);">

    <nav class="navbar navbar-expand-lg navbar-light mt-2 abc">
        <div class="container">
            <a class="navbar-brand text-light" href="index.jsp">logo</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active text-success me-5" href="#job-post">Want to hire?</a>
                    </li>
                    <li class="nav-item">
                        <button class="btn"><a class="nav-link text-light text-center" href="index.jsp">Find job</a></button>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <hr class="text-light mb-5">

    <section class="container-fluid">
        <div class="container">
            <div>
                <h1 class="text-light mt-5 mb-5">Hirirng Platform</h1>
            </div>
        </div>
    </section>

    <section class="container-fluid mb-5">
        <div class="container">
            <div class="row gap-5 g-0">
                <div class="col-md-6 col-sm-12 col-lg-6 ">
                    <img src="imgs/shutterstock_1431767984-4-696x474.jpg" class="image" alt="">
                </div>
                <div class="col-md-5 col-sm-12 col-lg-5 ">
                    <h3 class="mt-5 text-light">Key Trends in Early AI <br> Integration within the <br> Recruitment
                        Sector</h3>
                    <p class="text-light">From writing computer code to creating jokes, it <br> seems like each day
                        there is a new way to use <br> AI. While some apps are...</p>
                </div>
            </div>
        </div>
    </section>

    <section class="container-flid mt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/shutterstock_1431767984-4-696x474.jpg" alt="">
                        <h6 class="mt-5  text-warning">Hiring Platform</h6>
                        <h3 class="text-light mt-3">Trends From Early AI Adoption in Recruitment Industry</h3>
                        <p class="text-light">From writing computer code to creating jokes, it seems like each day
                            thereis a new way to use AI. While some apps.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/cities img.jpg" alt="">
                        <h6 class="mt-5  text-warning">ITAP India</h6>
                        <h3 class="text-light mt-3">India’s favorite Portal to find Genuine jobs – Itap App now in 64
                            cities</h3>
                        <p class="text-light">Apna app is the most reliable choice for over 2 crore Indians who are on
                            this platform looking for career development and better opportunities.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/images-1.jpeg" alt="">
                        <h6 class="mt-5  text-warning">ITAP India</h6>
                        <h3 class="text-light mt-3">Hiring Guide – How to hire a Candidate through the Itap App?</h3>
                        <p class="text-light">Got any vacancies to fill? Looking for the right platform which suits your
                            requirements and eligibility? Want to hire an employee without going through.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container-flid mt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/Itap-1.jpg" alt="">
                        <h6 class="mt-5  text-warning">Hiring Platform</h6>
                        <h3 class="text-light mt-3">Apna App’s Hiring Solution – Connecting Jobs, Employers, and Talent
                        </h3>
                        <p class="text-light">Apna is a social platform for skilled and semi-skilled job seekers that
                            provides real job opportunities and professional networking opportunities to job seekers.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/itap-2.png" alt="">
                        <h6 class="mt-5  text-warning">ITAP India</h6>
                        <h3 class="text-light mt-3">Revolutionize Your Hiring Process with apna: A Complete Tutorial
                        </h3>
                        <p class="text-light">Are you tired of sifting through stacks of resumes and spending countless
                            hours on the hiring process? In a world where every click matters.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/itap-3.jpeg" alt="">
                        <h6 class="mt-5  text-warning">ITAP India</h6>
                        <h3 class="text-light mt-3">apna’s Value Proposition for Employers: An Insider’s View for
                            Maximizing Opportunities</h3>
                        <p class="text-light">In a world where traditional recruitment methods often leave employers
                            navigating a maze of resumes and endless interviews, every recruiter dreams.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container-flid mt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/itap-10.jpeg" alt="">
                        <h6 class="mt-5 text-warning">Hiring Platform</h6>
                        <h3 class="text-light mt-3">Choosing a Hiring Partner? Top Considerations for a Made in Heaven
                            Collaboration</h3>
                        <p class="text-light">In the fast-paced world of HR recruitment, finding your perfect hiring
                            partner is like searching for that elusive ‘made in heaven’ connection.</p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/itap-9.jpg" alt="">
                        <h6 class="mt-5 text-warning">ITAP India</h6>
                        <h3 class="text-light mt-3">Choosing a Hiring Partner? Top Considerations for a Made in Heaven
                            Collaboration</h3>
                        <p class="text-light">In the intricate dance of recruitment, finding the perfect partner to
                            tango with your hiring needs is very crucial. It's akin to seeking. </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/Itap-5.png" alt="">
                        <h6 class="mt-5  text-warning">ITAP India</h6>
                        <h3 class="text-light mt-3">From Searching to Snaring: Converting Candidates on Job Portals</h3>
                        <p class="text-light">Recruiters would agree that navigating the virtual corridors of job
                            portals in search of the perfect candidate is akin to exploring a captivating labyrinth.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="container-flid mt-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/itap-6.jpg" alt="">
                        <h6 class="mt-5  text-warning">Hiring Platform</h6>
                        <h3 class="text-light mt-3">From Chaos to Control: Streamlining HR Recruitment with Employer
                            Portals</h3>
                        <p class="text-light">In the wild and unpredictable world of recruitment, navigating through the
                            chaos of countless resumes and time-consuming interview processes can leave even the mos.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/itap-8.jpg" alt="">
                        <h6 class="mt-5 text-warning">Hiring advice</h6>
                        <h3 class="text-light mt-3">Job Advertisements 101: Mastering the Essentials to Elevate The
                            Recruiting Strategy</h3>
                        <p class="text-light">In the realm of HR recruitment, job advertisements wield a magical power -
                            the power to attract the brightest talent and elevate the company's.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="card" style="background-color:rgb(15 23 42);">
                        <img src="imgs/itap-9.jpg" alt="">
                        <h6 class="mt-5 text-warning">Hiring advice</h6>
                        <h3 class="text-light mt-3">Job Portal Dos and Don’ts: A Recruiter’s Survival Guide</h3>
                        <p class="text-light">In today's digital age, job portals have rightly revolutionized the way
                            recruiters find and connect with potential candidates. These platforms offer a vast pool.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <hr class="text-light mt-5">

    <footer class="container-fluid  mb-5">
        <div class="container ">
            <div class="row mt-5">
                <div class="col-md-3 col-lg-3 col-xl-3 col-sm-12 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">INNOVATIVE TALENT ACQUISITION PLATFORM
                    </h5>
                    <p class="text-light">Your gateway to finding the perfect career opportunity. We connect job seekers
                        with top companies worldwide.</p>
                </div>


                <div class="col-md-2 col-lg-2 col-xl-2 col-sm-6  col mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Quick Links</h5>
                    <p><a href="#" class="text-light" style="text-decoration: none;">Home</a></p>
                    <p><a href="Carrer.jsp" class="text-light" style="text-decoration: none;">Careers</a></p>
                    <p><a href="About.jsp" class="text-light" style="text-decoration: none;">About Us</a></p>
                    <p><a href="#" class="text-light" style="text-decoration: none;">Contact</a></p>
                </div>

                <div class="col-md-3 col-lg-2 col-xl-2 col-sm-6 col mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning">Resources</h5>
                    <p><a href="#" class="text-light" style="text-decoration: none;">FAQs</a></p>
                    <p><a href="#" class="text-light" style="text-decoration: none;">Admins</a></p>
                    <p><a href="#" class="text-light" style="text-decoration: none;">Privacy Policy</a></p>
                    <p><a href="#" class="text-light" style="text-decoration: none;">Terms of Service</a></p>
                </div>

                <div class="col-md-4 col-lg-3 col-xl-3 col-sm-6 mx-auto mt-3">
                    <h5 class="text-uppercase mb-4 font-weight-bold text-warning"> Contact</h5>
                    <p class="text-light"><i class="fas fa-home mr-3 text-light"></i> Greater Noida ,Uttar Pradesh</p>
                    <p class="text-light"><i class="fas fa-phone mr-3 text-light"></i> 9651488774</p>
                    <p class="text-light"><i class="fas fa-envelope mr-3 text-light"></i> support@Itap.com</p>
                </div>
            </div>
            <div class="row mt-5">
                <div class="col-md-6 col-lg-6 col-xl-6 col-sm-6 mx-auto mt-3">
                    <a href="#" class="text-info  mx-3 fs-2 me-4 social-media"><i class="fa-brands fa-facebook"></i></a>
                    <a href="#" class="text-info  mx-3 fs-2 me-4 social-media"><i class="fab fa-twitter"></i></a>
                    <a href="#" class="text-info  mx-3 fs-2 me-4 social-media"><i class="fab fa-linkedin"></i></a>
                    <a href="#" class="text-info  mx-3 fs-2 me-4 social-media"><i class="fab fa-instagram"></i></a>
                </div>
                <div class="col-md-5 col-lg-5 col-xl-5 col-sm-5 mx-auto mt-3  text-end">

                    <p class=" fs-4 text-success text-center">&copy; 2024 Itap Portal. All Rights Reserved.</p>
                </div>
            </div>
        </div>
        </div>
    </footer>











































    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>


</body>

</html>
<%}%>