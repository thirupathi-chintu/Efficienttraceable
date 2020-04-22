<%@page import="java.sql.ResultSet"%>
<%@page import="com.app.utility.DBConnectionn"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
									<li class="active"><a href="CloudHome.jsp">home</a></li>
                                                                        <li><a href="viewdataownerdetails.jsp">View Data Owner</a></li>
									<li><a href="viewuserdetails.jsp">View Data User</a></li>
                                                                        <li><a href="viewallfiles.jsp">View Files</a></li>
                                                                        <li><a href="malicious.jsp">Malicious user</a></li>
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
        </header><br><br>
        <br> <br>
        <br> <br>
       <%
           Connection con=DBConnectionn.getConnection();
           Statement stm=con.createStatement();
           ResultSet rs=stm.executeQuery("select * from userdetails where block='waiting'");
           if(rs.next()){
             int id=rs.getInt("userid");
             String name=rs.getString("name");
             int count=rs.getInt("count");%>
              <center>
               <h2>Malicious User</h2>
             <table align="center" border="1" height="150" cellspacing="1px" cellpadding="5px" width="700px">
               <tr>  <th>&nbsp;&nbsp;&nbsp;UserId&nbsp;&nbsp;</th>
               <th>&nbsp;&nbsp;&nbsp;UserName&nbsp;&nbsp;</th>
               <th>&nbsp;&nbsp;&nbsp;Attempt&nbsp;&nbsp;</th>
               <th>&nbsp;&nbsp;&nbsp;Block Request&nbsp;&nbsp;</th>
               </tr>
               <tr><td>&nbsp;&nbsp;<%=id%>&nbsp;&nbsp;</td>
                   <td>&nbsp;&nbsp;<%=name%>&nbsp;&nbsp;</td>
                   <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=count%>&nbsp;&nbsp;</td>
                   <td>&nbsp;&nbsp;<a href="blockrequesttocloud.jsp?uid=<%=id%>">Send Request to Cloud</a></td>
               </tr>
        </table>
           </center>
          <%}else{
out.println("<center>*******no malicious user present********</center>");%><br><br><center><%
}
           %>
           <%
           String msg=request.getParameter("msg");
           if(msg !=null && msg.equals("blockrequestsent"))
           {
     out.println("<script type=\"text/javascript\">");
    out.println("alert('BLock Request sent to cloud!!');");
    out.println("</script>");      
    out.println("<center><font color='Red'>blockrequest sent to cloud</font></center>");    
                }
           if(msg !=null && msg.equals("notblocked"))
           {
           out.println("<script type=\"text/javascript\">");
           out.println("alert('Block Request Cannot be sent to cloud!!');");
           out.println("</script>");  
           out.println("<font color='Red'>blockrequest cannot be sent to cloud</font>");    
}%></center>
    </body>
</html>
