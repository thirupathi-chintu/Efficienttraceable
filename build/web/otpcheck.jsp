<%-- 
    Document   : otpcheck
    Created on : Aug 24, 2018, 4:46:18 PM
    Author     : DHARANI
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.app.utility.DBConnectionn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession user=request.getSession();
           int uid =Integer.parseInt(user.getAttribute("uid").toString());
        Connection con=DBConnectionn.getConnection();
        Statement stm=con.createStatement();
        String fid=(String)session.getAttribute("fid");
        String otp=request.getParameter("otp");
        System.out.println(otp);
        ResultSet rs=stm.executeQuery("select otp from filerequest where fileid='"+fid+"'");
        if(rs.next()){
          String otp1=rs.getString("otp");
           if(otp1.equals(otp)){
               response.sendRedirect("download.jsp");
           }
           else
              {
%>
                <%!int count=1;%>
<%  
                System.out.println("wrong otp");
                count=count+1;
                System.out.println(count);
                    if(count==2)
                        {
                            Statement stm3=con.createStatement();
                             int k=stm3.executeUpdate("update userdetails set count='"+count+"' where userid='"+uid+"'");
                         response.sendRedirect("downloadfiles.jsp?msg=invalidotp");   
                        }
                   else  if(count==3)
                        {
                                Statement stm4=con.createStatement();
                             int k=stm4.executeUpdate("update userdetails set count='"+count+"' where userid='"+uid+"'");
                             response.sendRedirect("downloadfiles.jsp?msg=invalidotp1");   
                        }
                    else if(count>3)
                        {
                         response.sendRedirect("block.jsp");
                         }
                }
} else{
System.out.println("error in selecting otp");
}
        %>
    </body>
</html>
