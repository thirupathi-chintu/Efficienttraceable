<%-- 
    Document   : filedetailscheck
    Created on : Aug 24, 2018, 1:26:04 PM
    Author     : DHARANI
--%>

<%@page import="com.app.action.GenerateOtp"%>
<%@page import="com.app.action.mail_Send"%>
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
        //String oid=request.getParameter("oid");
        String fname=request.getParameter("fname");
        System.out.println(fname);
        String fid=request.getParameter("fid");
          System.out.println(fid);
        String fkey=request.getParameter("fkey");
        String pkey=request.getParameter("pkey");
        
            Connection con=DBConnectionn.getConnection();
            Statement stm=con.createStatement();
            ResultSet rs=stm.executeQuery("select filename, filekey, fileid, ownerparskey from fileupload where fileid='"+fid+"'");
        if(rs.next())
            {
                String filename=rs.getString("filename");
                String filekey=rs.getString("filekey");
                String ownerparskey=rs.getString("ownerparskey");
                String fileid=rs.getString("fileid");
                
            if(filename.equals(fname) && filekey.equals(fkey) && ownerparskey.equals(pkey) && fileid.equals(fid))
            {   
                HttpSession user=request.getSession();
                int uid =Integer.parseInt(user.getAttribute("uid").toString());
                Statement stm1=con.createStatement();
                ResultSet rs1=stm.executeQuery("select emailid from userdetails where userid='"+uid+"'");
                if(rs1.next()){
                    String email=rs1.getString("emailid");
                GenerateOtp g=new GenerateOtp();
                String otp=g.generateOtp();
                Statement stm2=con.createStatement();
                int k=stm2.executeUpdate("update filerequest set otp='"+otp+"' where fileid='"+fid+"' and filekey='"+filekey+"'");
                if(k>0){
                mail_Send.sendMail("The OTP for the file"+filename+"is: "+otp, "OneTimePassword", "userid", email);
                session.setAttribute("fid",""+fid);
                response.sendRedirect("otp.jsp");
            }
                else{
                   System.out.println("error generating otp"); 
                    response.sendRedirect("downloadfiles.jsp?msg=otpfailed"); 
                }}
              else
              {
                System.out.println("invalid id");
                         response.sendRedirect("downloadfiles.jsp?msg=invalidid");   
                        }
            }  else
              {
                System.out.println("invalid details");
                         response.sendRedirect("downloadfiles.jsp?msg=invaliddetails");   
                        }
                 }  else
              {
                System.out.println("invalid fileid");
                         response.sendRedirect("downloadfiles.jsp?msg=invalidfileid");   
                        }
     %>
    </body>
</html>
