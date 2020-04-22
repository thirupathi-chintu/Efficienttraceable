
<%@page import="java.sql.Statement"%>
<%@page import="com.app.utility.DBConnectionn"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<script type="text/javascript" >
    </head>
    <body>
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
									<li class="active"><a href="#">home</a></li>
								<li><a href="activateuser.jsp">Activate User</a></li>
									<li><a href="activateowner">Activate Owner</a></li>
									<li><a href="sendkey.jsp">Send Key</a></li>
									<li><a href="malicioususer.jsp">Malicious User</a></li>
                                                                </ul> </nav>
                                                </div>
                                            </div>
                                    </div>
                            </div></div>
    <%
            try
            {
            HttpSession ses=request.getSession();
            //String id=(String)ses.getAttribute("uid");
            String oid=request.getParameter("oid");
            String parskey=request.getParameter("parskey");
            System.out.println(oid);
        Connection con=DBConnectionn.getConnection();
        Statement stm=con.createStatement();
        int k=stm.executeUpdate("update ownerdetails set status='yes', parskey='"+parskey+"' where ownerid='"+oid+"'");
       
        System.out.println(k);
        if(k!=0)
        {
            response.sendRedirect("activateowner.jsp?msg=activated");
          //out.println("<script>alert('USer Activated')</script>");
           
        }
        else
        {
            response.sendRedirect("activateowner.jsp?msg=notactivated");
        }    
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
    %>
    </body>
</html>
