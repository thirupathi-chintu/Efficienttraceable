<%-- 
    Document   : KGCHome
    Created on : Aug 18, 2018, 2:28:29 PM
    Author     : DHARANI
--%>

<%@page import="java.sql.ResultSet"%>
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
									<li class="active"><a href="KGCHome.jsp">home</a></li>
								<li><a href="activateuser.jsp">Activate User</a></li>
									<li><a href="activateowner.jsp">Activate Owner</a></li>
									<li><a href="sendkey.jsp">Send Key</a></li>
									<li><a href="malicious.jsp">Malicious User</a></li>
                                                                        <li><a href="kgclogout.jsp">Log Out</a></li>
                                                                </ul> </nav>
                                                    </div></div></div></div></div>
                 <center>
    <table align="center" border="1" cellspacing="1px" cellpadding="10px" height="220px" width="500px">
        <tr>
            <th><font color='Red'>&nbsp;&nbsp;&nbsp;Username</font></th>
        <th><font color='Red'>&nbsp;&nbsp;&nbsp;Owner Name</font></th>
        <th><font color='Red'>&nbsp;&nbsp;&nbsp;File Name</font></th>
         <th><font color='Green'>&nbsp;&nbsp;&nbsp;Accept Request</font></th>
        </tr>     
<%
      try{
Connection con=DBConnectionn.getConnection();
Statement stm=con.createStatement();
ResultSet rs=stm.executeQuery("select * from filerequest where status='no'");
while(rs.next()){
    String uname=rs.getString("username");
    String oname=rs.getString("ownername");
    String fname=rs.getString("filename");
    String id=rs.getString("id");
    String fid=rs.getString("fileid");
    System.out.println(id+"sendkey id");

%>
	 <tr>
             <td>&nbsp;&nbsp;&nbsp;<%=uname%></td>
             <td>&nbsp;&nbsp;&nbsp;<%=oname%></td>
             <td><B>&nbsp;&nbsp;&nbsp;<%=fname%></B></td>
             <td><B>&nbsp;&nbsp;&nbsp;<a href="acceptrequest.jsp?id=<%=id%>&&fid=<%=fid%>&&oname=<%=oname%>&&uname=<%=uname%>">Accept Request</a></B></td>
         </tr>
          
              <%  }
        }catch(Exception e){
        System.out.println("Error at Getting File "+e.getMessage());
        e.printStackTrace();
        }
        %>
        </table>
                    </center>
        <%
        String message=request.getParameter("message");
        if(message !=null && message.equalsIgnoreCase("detailssent"))
            {   out.println("<script type=\"text/javascript\">");
    out.println("alert('File Information Sent');");
    out.println("</script>");
}
        %>
    </body>
</html>
