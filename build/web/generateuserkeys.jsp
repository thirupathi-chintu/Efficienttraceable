<%-- 
    Document   : KGCHome
    Created on : Aug 18, 2018, 2:28:29 PM
    Author     : DHARANI
--%>

<%@page import="com.app.action.GenerateParsKeys"%>
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
                                                                        <li><a href="kgclogout.jsp">Log Out</a></li>
                                                                </ul> </nav>
                                                </div>
                                            </div>
                                    </div>
                            </div></div>
   <%
     String uid=request.getParameter("uid");  
     String email=request.getParameter("email");
     String branch=request.getParameter("branch");
     String department=request.getParameter("department");  
     String subdepartment=request.getParameter("subdepartment");
     String jobrole=request.getParameter("jobrole");
           
           GenerateParsKeys gen=new GenerateParsKeys();
           String ParsKey=gen.generateRandomString();
     
   %>
        <h1 align='center'><font color="Red">Key Generation</font></h1>
             <form action="kgcuseractivation.jsp?uid=<%=uid%>&parskey=<%=ParsKey%>&&email=<%=email%>" method="post"/>  
    <center>
      <table align="center" border="3" height="150" width="600"  style="text-align:center;margin: 0px;color:black;">
          <tr>
              <td>Public Parameters:</td><td><%=ParsKey%></td>
          </tr>
          <br>
          <tr>
              <td>Attributes :</td><td><%=branch+","+department+","+subdepartment+","+jobrole%></td><br>
          </tr>
          <br>
          <tr><td>&nbsp;</td>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><input type="submit"  value="Get Private Key"/></td>
          </tr><br>
      </table>
    </center>
</form> 
</body>
</html>
