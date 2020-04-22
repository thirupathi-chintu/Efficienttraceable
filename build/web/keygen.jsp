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
                <h4 align="center"><font color='Red'><b>Enter your Secret Key and Public Key To search File</b></font></h4>
        <form action="keyscheck.jsp" method="post">
            <p align="center">Secret Key:<input type="text" name="secretkey"/></p>
            <p align="center">Public Key:<input type="text" name="publickey"/></p>
            <p align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="    Check    "/></p>
        </form>
          <%
          String msg=request.getParameter("msg");
          if(msg !=null && msg.equalsIgnoreCase("failed"))
          {
              out.println("<script type=\"text/javascript\">");
              out.println("alert('Error in Sending keys...please Retry');");
              out.println("</script>");
              out.println("<h4 align='center'><font color='Black' face='verdan'><b>***Invalid Public key and Secret Key Combination***</b></font></h4>"); 
          }
          %>      
    </body>
</html>
