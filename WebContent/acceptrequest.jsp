
<%@page import="com.app.action.mail_Send"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.app.action.GenerateSecretKeys"%>
<%@page import="com.app.action.GeneratePublicKeys"%>
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
                 String id=request.getParameter("id");
                 String fid=request.getParameter("fid");
                 String oname=request.getParameter("oname");
                 String uname=request.getParameter("uname");
        Connection con=DBConnectionn.getConnection();
       Statement stm2=con.createStatement();
                ResultSet rs2=stm2.executeQuery("select * from fileupload where fileid='"+fid+"'");
            if(rs2.next()){
            String filename=rs2.getString("filename");
            String filekey=rs2.getString("filekey");
            System.out.println(filekey);
            String fileid=rs2.getString("fileid");
            String parskey=rs2.getString("ownerparskey");
            Statement stm3=con.createStatement();
            ResultSet rs3=stm3.executeQuery("select emailid from userdetails where name='"+uname+"'");
            if(rs3.next()){
            String email=rs3.getString("emailid");
            mail_Send.sendMail("File Name is: "+filename+"\n"+" The Filekey Keyis: "+filekey+"\n"+"The File Id is: " +fileid+"\n"+"Parskeyis: " +parskey,"The Requested File Details", uname, email);
            System.out.println(email);
        Statement stm1=con.createStatement();
        int k1=stm1.executeUpdate("update filerequest set status='yes' where id='"+id+"'");
        if(k1>0){
 response.sendRedirect("sendkey.jsp?message=detailssent");
            System.out.println("file Information sent");
            //out.println("User Activated");
          //out.println("<script>alert('USer Activated')</script>");
           
        } 
         else
       {   out.println("<script type=\"text/javascript\">");
    out.println("alert('Error in Sending File Information');");
    out.println("location='sendkey.jsp';");
    out.println("</script>");
}
            }
            else   {   out.println("<script type=\"text/javascript\">");
    out.println("alert('Error in Retriving Mail...email sendinf failed');");
    out.println("location='sendkey.jsp';");
    out.println("</script>");
} }  
        else
        {   out.println("<script type=\"text/javascript\">");
    out.println("alert('Error in Retriving FileDetails...');");
    out.println("location='sendkey.jsp';");
    out.println("</script>");
}
          }
      catch(Exception e)
            {
                out.println(e);
                System.out.println(e);
            }
            
    %>
    </body>
</html>
