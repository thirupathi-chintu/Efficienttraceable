<%-- 
    Document   : activateuser
    Created on : Aug 18, 2018, 5:52:59 PM
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
									<li class="active"><a href="KGCHome.jsp">home</a></li>
									<li><a href="activateuser.jsp">Activate User</a></li>
									<li><a href="activateowner.jsp">Activate Owner</a></li>
									<li><a href="sendkey.jsp">Send Key</a></li>
									<li><a href="malicious.jsp">Malicious User</a></li>
									<li><a href="kgclogout.jsp">Log Out</a></li>
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
                <fieldset>   <center>   <h2><font color='#BE33FF'>Data User</font></h2>    
    <table align="center" border="1" cellspacing="1px" cellpadding="10px" height="350px" width="900px">
        <tr>
            <th><font color='Red'>&nbsp;&nbsp;S.No&nbsp;</font></th>
        <th><font color='Red'>&nbsp;&nbsp;User Name&nbsp;</font></th>
        <th><font color='Red'>&nbsp;&nbsp;Attributes&nbsp;</font></th>
         <th><font color='Red'>&nbsp;&nbsp;Generate Key&nbsp;</font></th>
        </tr>
        <%
              
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        int sno = 0;
        try{
         String query = "select *from userdetails";
         con = DBConnectionn.getConnection();
         ps = con.prepareStatement(query);       
         rs = ps.executeQuery();
         while(rs.next()){
         sno++;
         int uid = rs.getInt(1);
         String name= rs.getString(2);
         String email= rs.getString(4);
         String branch = rs.getString(6);
         String department = rs.getString(7);
         String subdepartment = rs.getString(8);
         String jobrole = rs.getString(9);       
         HttpSession ses=request.getSession();
         ses.setAttribute("uid",uid);
         ses.setAttribute("email",email);
         //ses.setAttribute("uid",uid);
         %>
         <tr>
             <td>&nbsp;&nbsp;<%=sno%>&nbsp;</td>
             <td>&nbsp;&nbsp;<%=name%>&nbsp;</td>
             <td><B>&nbsp;&nbsp;<%=branch+","+department+","+subdepartment+","+jobrole%>&nbsp;</B></td>
              <td>&nbsp;&nbsp;<a href="generateuserkeys.jsp?uid=<%=uid%>&&email=<%=email%>&&branch=<%=branch%>&&department=<%=department%>&&subdepartment=<%=subdepartment%>&&jobrole=<%=jobrole%>">Generate Key</a></td>
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
<%
String msg=request.getParameter("msg");
if(msg !=null && msg.equalsIgnoreCase("activated"))
{   out.println("<script type=\"text/javascript\">");
   out.println("alert('User Activated');");
   out.println("</script>");
    out.println("<font color='Green>User Activated</font>");
}
if(msg !=null && msg.equalsIgnoreCase("notactivated"))
{   out.println("<script type=\"text/javascript\">");
    out.println("alert('User Not Activated');");
    out.println("</script>");
    out.println("<font color='Red'>User not Activated</font>");
}
%>
    </body>
</html>
