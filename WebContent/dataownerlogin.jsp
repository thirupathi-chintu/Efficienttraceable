<!DOCTYPE html>
<html lang="en">
<head>
<title>Data Owner</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Efficient Traceable project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="plugins/video-js/video-js.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/about.css">
<link rel="stylesheet" type="text/css" href="styles/about_responsive.css">
</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header">
			
		<!-- Top Bar -->
		

		<!-- Header Content -->
		<div class="header_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_content d-flex flex-row align-items-center justify-content-start">
							<div class="logo_container">
								<a href="#">
									<div class="logo_content d-flex flex-row align-items-end justify-content-start">
										<div class="logo_img"><img src="images/logo.png" alt=""></div>
										
									</div>
								</a>
							</div>
							<nav class="main_nav_contaner ml-auto">
									<ul class="main_nav">							<ul class="main_nav">
									<li class="active"><a href="index.html">home</a></li>
									<li><a href="dataownerlogin.jsp">DATA OWNER</a></li>
									<li><a href="userlogin.jsp">USER</a></li>
									<li><a href="KGClogin.jsp">KGC</a></li>
									<li><a href="CLoudlogin.jsp">CLOUD</a></li>
								</ul>
								
								<!-- Hamburger -->

								<div class="hamburger menu_mm">
									<i class="fa fa-bars menu_mm" aria-hidden="true"></i>
								</div>
							</nav>

						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Header Search Panel -->
		<div class="header_search_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_search_content d-flex flex-row align-items-center justify-content-end">
							<form action="#" class="header_search_form">
								<input type="search" class="search_input" placeholder="Search" required="required">
								<button class="header_search_button d-flex flex-column align-items-center justify-content-center">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</form>
						</div>
					</div>
				</div>
			</div>			
		</div>			
	</header>

	<!-- Menu -->

	<div class="menu d-flex flex-column align-items-end justify-content-start text-right menu_mm trans_400">
		<div class="menu_close_container"><div class="menu_close"><div></div><div></div></div></div>
		<div class="search">
			<form action="#" class="header_search_form menu_mm">
				<input type="search" class="search_input menu_mm" placeholder="Search" required="required">
				<button class="header_search_button d-flex flex-column align-items-center justify-content-center menu_mm">
					<i class="fa fa-search menu_mm" aria-hidden="true"></i>
				</button>
			</form>
		</div>
		<nav class="menu_nav">
			<ul class="menu_mm">
				<li class="menu_mm"><a href="index.html">Home</a></li>
				<li class="menu_mm"><a href="userlogin.jsp">Courses</a></li>
				<li class="menu_mm"><a href="instructors.html">Instructors</a></li>
				<li class="menu_mm"><a href="#">Events</a></li>
				<li class="menu_mm"><a href="blog.html">Blog</a></li>
				<li class="menu_mm"><a href="CLoudlogin.jsp">Contact</a></li>
			</ul>
		</nav>
		<div class="menu_extra">
			<div class="menu_phone"><span class="menu_title">phone:</span>(009) 35475 6688933 32</div>
			<div class="menu_social">
				<span class="menu_title">follow us</span>
				<ul>
					<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<!-- Home -->

	<div class="home">
		<!-- Background image artist https://unsplash.com/@thepootphotographer -->
		<div class="home_background parallax_background parallax-window" data-parallax="scroll" data-image-src="images/about.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row">
					<div class="col">
                                            <div class="home_content text-center">
							<div class="home_title">Data Owner Login</div><br>
                                                        <form action="owner_login" method="post">
                                                            <h5 style="color:white">UserName:<input type="text" name="uname"/></h5><br>
                                                            <h5 style="color:white">Password:<input type="password" name="upass"/></h5>
                                                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="  Reset  "/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                             <input type="submit" value="  Login  "/><br><br>
                                                        </form>
                                                        <% 
                                                        String msg=request.getParameter("msg");
                                                            if(msg !=null && msg.equalsIgnoreCase("success"))
                                                            {
                                                              out.println("<font color='green'><b>Login Success</b></font>");
                                                            }
                                                            if(msg!=null && msg.equalsIgnoreCase("waiting"))
                                                            {
                                                               out.println("<font color='Red'><b>You are not Yet Activated,you should be activated by KGC</b></font>");
                                                            }
                                                            if(msg!=null && msg.equalsIgnoreCase("failed"))
                                                            {
                                                                out.println("<font color='Red'><b>Login Failed,please provide correct details..</b></font>");
                                                            }
                                                            if(msg !=null && msg.equalsIgnoreCase("wrongpassword"))
                                                            {
                                                                out.println("<font color='Red'><b>Please Enter Valid Password</b></font>");
                                                            }
                                                         if(msg !=null && msg.equalsIgnoreCase("regsuccess"))
                                                            {
                                                              out.println("<font color='green'><b>Successfully Registered</b></font>");
                                                            }
                                                        
                                                        
                                                        %>
								<ul>
									<li><a href="ownerreg.jsp" style="color: rgb(0,255,0)"><font color="F9FF33"><b>>Register here</b></font></a></li>
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	                            <!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">

				<!-- About -->
				<div class="col-lg-3 footer_col">
					<div class="footer_about">
						<div class="logo_container">
							<a href="#">
								
							</a>
						</div>
						<div class="footer_about_text">
							<p>Efficient Traceable Authorization Search System cloud Storage</p>
						</div>
						<div class="footer_social">
							<ul>
								<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							</ul>
						</div>
						<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
					</div>
				</div>

				<div class="col-lg-3 footer_col">
					<div class="footer_links">
						<div class="footer_title">Quick menu</div>
						<ul class="footer_list">
							<li><a href="index.html">Home</a></li>
							<li><a href="dataownerlogin.jsp">Data Owner</a></li>
							<li><a href="userlogin.jsp">Data User</a></li>
							<li><a href="kgclogin.jsp">KGC</a></li>
							<li><a href="CLoudlogin.jsp">Cloud</a></li>
							<li><a href="#">Facts</a></li>
						</ul>
					</div>
				</div>

		

				<div class="col-lg-3 footer_col">
					<div class="footer_contact">
						<div class="footer_title">Contact Us</div>
						<div class="footer_contact_info">
							<div class="footer_contact_item">
								<div class="footer_contact_title">Address:</div>
								<div class="footer_contact_line">1481 Creekside Lane Avila Beach, CA 93424</div>
							</div>
							<div class="footer_contact_item">
								<div class="footer_contact_title">Phone:</div>
								<div class="footer_contact_line">+53 345 7953 32453</div>
							</div>
							<div class="footer_contact_item">
								<div class="footer_contact_title">Email:</div>
								<div class="footer_contact_line">yourmail@gmail.com</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/about.js"></script>
</body>
</html>