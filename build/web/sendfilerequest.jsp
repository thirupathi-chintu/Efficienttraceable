<%-- 
    Document   : sendfilerequest
    Created on : Aug 23, 2018, 4:29:58 PM
    Author     : DHARANI
--%>

<%@page import="java.sql.PreparedStatement"%>
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
        <%try{
            String fid = (String)session.getAttribute("fid");
           String uname = (String)session.getAttribute("name");
           String fname = (String)session.getAttribute("fname");
            System.out.println(uname+"uname"+fid+"fid"+fname+" from sendfilerequest.java");
          // System.out.println(uname+"uname from sendfilerequest.java");
           String oname = (String)session.getAttribute("oname");
           System.out.println(oname);
           int oid = (int)session.getAttribute("oid");
           System.out.println(oid);
              String fkey=request.getParameter("fkey");
        Connection con=DBConnectionn.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into filerequest (fileid,username,ownername,filename,status,filekey) values (?,?,?,?,?,?)");//'"+fid+"', ='"+uname+"', ='"+oname+"', ='"+fname+"', ='no'");
        ps.setString(1,fid);
        ps.setString(2,uname);
        ps.setString(3,oname);
        ps.setString(4,fname);
        ps.setString(5,"no");
        ps.setString(6,fkey);
        int k=ps.executeUpdate();
        if(k>0){
            response.sendRedirect("request.jsp?msg=success");
        }
        else
        {
            response.sendRedirect("request.jsp?msg=failed");
        }
        }
        catch(Exception e){
            out.println(e);
            System.out.println(e);
        }
        %>
    </body>
</html>
