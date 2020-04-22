<%-- 
    Document   : viewuploadfiles
    Created on : Aug 20, 2018, 5:42:10 PM
    Author     : DHARANI
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.app.utility.DBConnectionn"%>
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
									<li><a href="viewuserdetails.jsp">View Data User</a></li>
                                                                        <li><a href="viewdataownerdetails.jsp">View Data Owner</a></li>
                                                                        <li><a href="viewallfiles.jsp">View Files</a></li>
                                                                        <li><a href="malicious1.jsp">Malicious user</a></li>
                                                                        <li><a href="unrevokeuser.jsp">Unrevoke user</a></li>
									<li><a href="cloudlogout.jsp">Log Out</a></li>
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
                <fieldset>    
                    <center>
    <table align="center" border="1" cellspacing="1px" cellpadding="10px" height="220px" width="500px">
        <tr>
            <th><font color='Red'>Owner Name</font></th>
        <th><font color='Red'>Owner Name</font></th>
        <th><font color='Red'>File Name</font></th>
        <th><font color='Red'>File Key</font></th>
        </tr>
        <%
        
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int sno = 0;
        try{
         String query = "select * from fileupload ";
         con = DBConnectionn.getConnection();
         ps = con.prepareStatement(query);       
         rs = ps.executeQuery();
         while(rs.next()){
         sno++;
         String fid = rs.getString(1);
         String name= rs.getString(3);
         String fname= rs.getString(10);
         String filekey= rs.getString(11);
         //String key1=key.substring(key.length()-3);
         //ses.setAttribute("uid",uid);
         //ses.setAttribute("email",email);
         //ses.setAttribute("uid",uid);
         %>
         <tr>
             <td>&nbsp;&nbsp;&nbsp;<%=sno%></td>
             <td>&nbsp;&nbsp;&nbsp;<%=name%></td>
             <td>&nbsp;&nbsp;&nbsp;<%=fname%></td>
             <td><B>&nbsp;&nbsp;&nbsp;<%=filekey%></B></td>
         </tr>
        
        <%
         }
        }catch(Exception e){
        System.out.println("Error at Getting File "+e.getMessage());
        e.printStackTrace();
        }
        
%>
    </table>
                    </center>

                </fieldset>

    </body>
</html>