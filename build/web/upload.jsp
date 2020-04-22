
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.app.utility.DBConnectionn"%>
<%@ page language="java" session="true"%>
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
									<li class="active"><a href="OwnerHomepage.jsp">home</a></li>
									<li><a href="upload.jsp">File Upload</a></li>
									<li><a href="viewuploadfiles.jsp">View Uploaded Files</a></li>
									<li><a href="ownerlogout.jsp">Log Out</a></li>
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
                
         <%               
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
       
        try{
              int oid=(int)session.getAttribute("oid");
              System.out.println(oid+"upload.jsp"); //user.getAttribute("oid");
         String query = "select *from ownerdetails where ownerid='"+oid+"'";
         con = DBConnectionn.getConnection();
         ps = con.prepareStatement(query);       
         rs = ps.executeQuery();
         while(rs.next()){
         String name= rs.getString(2);
         String parskey= rs.getString(11);
         String branch = rs.getString(6);
         String department = rs.getString(7);
         String subdepartment = rs.getString(8);
         String jobrole = rs.getString(9);
         %>
         
             <center>
               <!-- <body background="images/dataownerhome.jpg" alt="Image" height="200" width="600"/>-->
               <h3 align='center'><font color='Red'>Upload File Access With Policy</font></h3>
                 <form action='upload?oid=<%=oid%>' method='post' enctype="multipart/form-data">
               <table align='center' border='3' height="80" width='420'>
                  
                        <tr>
                            <td>Owner Name:</td><td><input type="text" style="height: 40px;" size="45" readonly name="oname" value=<%=name%>></td>
                       </tr>
                       <tr>
                            <td>Owner ParsKey:</td><td><input type="text" style="height: 40px;" size="45" readonly name="oparskey" value=<%=parskey%>></td>
                       </tr>
                        </table>
               <br>
               <h3 align='center'><font color='Red'><b>Access Policy</b></font></h3>
               <table align='center' border='3' height="250" width='400'>
                       <tr>
                            <td>Branch:</td><td><input type="text" name="branch" style="height: 50px;" size="45" readonly value=<%=branch%>></td>
                       </tr>
                       <tr>
                            <td>Department:</td><td><input type="text" name="dept" style="height: 50px;" size="45" readonly value=<%=department%>></td>
                       </tr>
                       <tr>
                            <td>Sub Department:</td><td><input type="text" name="sdept" style="height: 50px;" size="45" readonly value=<%=subdepartment%>></td>
                       </tr>
                       <tr>
                           <td>Job:</td><td><input type="text" name="job" style="height: 50px;" size="45" readonly value=<%=jobrole%>></td>
                       </tr>
                       <tr>
                           <td>Choose File</td><td><input type='file' name='file'/></td>
                       </tr>
               </table><br>
                  <p align='center'><input type='submit' value='  Upload   '/></p>
                 </form>  
               </center>
      
       
               <%
         }
        }catch(Exception e){
        System.out.println("Error at Getting File "+e.getMessage());
        e.printStackTrace();
        }finally{
        try{
        rs.close();
        ps.close();
        con.close();
        }catch(Exception e){
        out.println(e);
        }
        }
%><% String mesg=request.getParameter("mesg");
   if(mesg !=null && mesg.equalsIgnoreCase("successs"))
 { 
   out.println("<script type=\"text/javascript\">");
   out.println("alert('File Successfully Uploaded');");
   out.println("</script>");
   out.println("<font color='green'><b>Upload Success</b></font>");
   out.println("<center><font color='green'><b>File Upload Success</b></font></center>");
 }
 if(mesg !=null && mesg.equalsIgnoreCase("failed"))
 {
   out.println("<script type=\"text/javascript\">");
   out.println("alert('File Not Uploaded');");
   out.println("</script>");
   out.println("<font color='Red'><b>Upload Failed</b></font>");
 }
%>
<br>
<br>
</body>
</html>
