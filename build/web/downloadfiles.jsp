<html>
<head>
<title>Efficient Traceable</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Efficient Traceable project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link href="plugins/video-js/video-js.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>
<body>

    <header class="header">

            <!-- Top Bar -->
            <div class="top_bar">
                    <div class="top_bar_container">
                            <div class="container">
                                    <div class="row">
                                            <div class="col">

                                            </div>
                                    </div>
                            </div>
                    </div>				
            </div>

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
                                                                            <div class="logo_text"></div>
                                                                    </div>
                                                            </a>
                                                    </div>
                                                    <nav class="main_nav_contaner ml-auto">
                                                            <ul class="main_nav">
                                                                    <li class="active"><a href="UserHomepage.jsp">home</a></li>
                                                                    <li><a href="keygen.jsp">Search File</a></li>
                                                                    <li><a href="downloadfiles.jsp">Download Files</a></li>
                                                                    <li><a href="userlogout.jsp">Log Out</a></li>
                                                            </ul>
                                                                                    <div class="hamburger menu_mm">
                                                                    <i class="fa fa-bars menu_mm" aria-hidden="true"></i>
                                                            </div>
                                                    </nav>

                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
            <br>
          <h4 align="center"><font color='Red'><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Download File</b></h2>
                 <form action="filedetailscheck.jsp" method="post">
                     <p align="center"> File Name:<input type="text" required name="fname"/></p>
                     <p align="center"> File Key:&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" required name="fkey"/></p>
                     <p align="center">File Id:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" required name="fid"/></p>
                     <p align="center">ParsKey:<input type="text" required name="pkey"/></p>
                     <p align="center">&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit"  value="  Check  "/></p>
                 </form><br><br>
                 
          <%
          String msg=request.getParameter("msg");
          if(msg !=null && msg.equalsIgnoreCase("invaliddetails"))
                  {
              out.println("<h4 align='center'><font color='Red' face='verdan'><b>***Invalid File Information***</b></font></h4>"); 
          }
          else if(msg !=null && msg.equalsIgnoreCase("invalidfileid"))
                  {
              out.println("<h4 align='center'><font color='Red' face='verdan'><b>***Invalid File Id***</b></font></h4>"); 
          }
         else if(msg !=null && msg.equalsIgnoreCase("invalidid"))
                  {
              out.println("<h4 align='center'><font color='Red' face='verdan'><b>***Invalid Id***</b></font></h4>"); 
          }
         else if(msg !=null && msg.equalsIgnoreCase("invalidotp"))
          {
              out.println("<h4 align='center'><font color='Red' face='verdan'><b>***INVALID ONE TIME PASSWORD***</b></font></h4>"); 
          }
          else if(msg !=null && msg.equalsIgnoreCase("invalidotp1"))
          {
              out.println("<h4 align='center'><font color='Red' face='verdan'><b>***You will be Blocked next time...if you enter wrong ONE TIME PASSWORD next time***</b></font></h4>"); 
          }
else if(msg !=null && msg.equalsIgnoreCase("blocked"))
       {   out.println("<script type=\"text/javascript\">");
    out.println("alert('You Are Blocked!!');");
    out.println("location='userlogout.jsp';");
    out.println("</script>");
}
          %>  
    </body>
</html>
