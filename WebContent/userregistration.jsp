<!DOCTYPE html>
<html lang="en">
<head>
<title>About us</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Efficient Traceable project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="plugins/video-js/video-js.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/about.css">
<link rel="stylesheet" type="text/css" href="styles/race.css">
<link rel="stylesheet" type="text/css" href="styles/about_responsive.css">
</head>
<body background="news.jpg" >

<div class="super_container">

	<!-- Header -->

	<header class="header">
			
		<!-- Top Bar -->
		

		<!-- Header Content -->
		<div class="header_container">
			<div class="container">
				<div class="row align-items-center">
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
        <br><br> <br><br>
	<div class="home">
		<!-- Background image artist https://unsplash.com/@thepootphotographer -->
		<div class="home_background parallax_background parallax-window1" data-parallax="scroll" data-image-src="images/news.jpg" data-speed="0.8"></div>
		<div class="home_container">
			<div class="container">
				<div class="row h-100 align-items-center">
					<div class="col">
                                            <div class="home_content text-center">
							<div class="home_title">User Registration</div><br><br>
                                                       
                    <form method="post"  action="userreg.jsp">
                       
                          &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; <font color="white">  Username: <input type="text" size="30" style="height: 25px;" required placeholder="Enter Username"  name="name"/>
                           &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  Password: <input type="password" size="30" required style="height: 25px;" placeholder="Enter Password"  name="password"/><br><br>
                         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;   Email-Id: <input type="text" size="30" style="height: 25px;" placeholder="Enter Email-id" required name="emailid" />                
                         &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; Mobile Number : <input type="text" size="30" style="height: 25px;" placeholder="Enter Mobile Number" required name="mbno" /><br><br>
                                
  Branch: <select name="branch" id="_branch">
  <option value="Chennai">Chennai</option>
  <option value="Bangalore">Bangalore</option>
  <option value="Mumbai">Mumbai</option>
  <option value="Delhi">Delhi</option>
                         </select> 
                         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;  &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; Department: <select name="dept" id="_dept">
  <option value="Engineering">Engineering</option>
  <option value="Testing">Testing</option>
  <option value="Accounting">Accounting</option>
  <option value="Marketing">Marketing</option>
                         </select><br><br>
                              &nbsp; &nbsp; &nbsp; &nbsp; Sub Department: <select name="subdept" id="_subdept">
  <option value="Programming">Programming</option>
  <option value="Designing">Designing</option>
  <option value="PayRoll">PayRoll</option>
  <option value="Investment">Investment</option>
</select>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
                                
                            &nbsp; &nbsp; &nbsp;Job Roles: <select name="jobrole" id="_jobrole">
  <option value="Java">Java</option>
  <option value="DotNet">DotNet</option>
  <option value="Android">Android</option>
  <option value="Seller">Seller</option>
</select><br><br>
                                    
                                     
                            <input type="submit" value=" Register " style="height: 25px;width: 90px;"/>&nbsp;&nbsp;&nbsp;
                            <input type="reset" value=" Reset " style="height: 25px;width: 90px;"/>
                            </font>  </form>
								
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

						</div>
						<div class="footer_about_text">
							<p>. Morbi tempor odio eget lacus tempus pulvinar.</p>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
					</div>
				</div>

				<div class="col-lg-3 footer_col">
					<div class="footer_links">
						<div class="footer_title">Quick menu</div>
						<ul class="footer_list">
							<li><a href="index.html">Home</a></li>
							<li><a href="dataownerlogin.jsp">About us</a></li>
							<li><a href="#">Testimonials</a></li>
							<li><a href="#">Services</a></li>
							<li><a href="CLoudlogin.jsp">Contact</a></li>
							<li><a href="#">Facts</a></li>
						</ul>
					</div>
				</div>

				<div class="col-lg-3 footer_col">
					<div class="footer_links">
						<div class="footer_title">Useful Links</div>
						<ul class="footer_list">
							<li><a href="userlogin.jsp">Courses</a></li>
							<li><a href="#">Events</a></li>
							<li><a href="KGClogin.jsp">News</a></li>
							<li><a href="#">Teachers</a></li>
							<li><a href="#">Links</a></li>
							<li><a href="#">FAQ</a></li>
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
