<%@page import="com.app.utility.DBConnectionn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
									<li class="active"><a href="#">home</a></li>
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
                </body>
                          <fieldset>
                              <center>
    <table align="center" border="1" cellspacing="1px" height="250px" cellpadding="10px" width="1000px">
        <tr>
            <th><font color='Red'>&nbsp;&nbsp;File ID</font></th>
        <th><font color='Red'>&nbsp;&nbsp;Owner Name</font></th>
        <th><font color='Red'>&nbsp;&nbsp;File Name</font></th>
        <th><font color='Red'>&nbsp;&nbsp;Send Request</font></th>
        </tr>
        <%
              
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
         String query = "select * from fileupload";
         con = DBConnectionn.getConnection();
         ps = con.prepareStatement(query);       
         rs = ps.executeQuery();
         while(rs.next()){
         String fid = rs.getString(1);
         String name= rs.getString(3);
         String key= rs.getString("filekey");
         String fname=rs.getString("filename");
         System.out.println(fname+"from request.jsp");
         String oname=rs.getString("ownername");
         int oid=rs.getInt("ownerid");
         //ses.setAttribute("uid",uid);
         //ses.setAttribute("email",email);
         //ses.setAttribute("uid",uid);
         %>
         <tr>
             <td>&nbsp;&nbsp;<%=fid%></td>
             <td>&nbsp;&nbsp;<%=name%></td>
              <td>&nbsp;&nbsp;<%=fname%></td>
             <td><font color='Red'>&nbsp;&nbsp;<a href="attributecheck.jsp?oid=<%=oid%>&&oname=<%=oname%>&&fname=<%=fname%>&&fid=<%=fid%>&&fkey=<%=key%>">Send Request</a></font></td>
         </tr>
        
        <%
         }
        }catch(Exception e){
        System.out.println("Error at Getting File "+e.getMessage());
        e.printStackTrace();
        }
        
%>
<%
      String msg=request.getParameter("msg");
          if(msg !=null && msg.equalsIgnoreCase("attributefailed"))
                  {
              out.println("<h4 align='center'><font color='Black' face='verdan'><b>***Attributes Doesnot Match***</b></font></h4>"); 
          }
         
    %>
    </table>
                              </center>
                </fieldset>
             
        </html>