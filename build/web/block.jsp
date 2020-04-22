<%-- 
    Document   : block
    Created on : Aug 24, 2018, 3:02:30 PM
    Author     : DHARANI
--%>

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
        Connection con=DBConnectionn.getConnection();  
        HttpSession user=request.getSession();
         int uid =Integer.parseInt(user.getAttribute("uid").toString());
         System.out.println(uid);
        Statement stm=con.createStatement();
        int k=stm.executeUpdate("update userdetails set block='waiting' where userid='"+uid+"'");
        if(k>0)
        {
            response.sendRedirect("downloadfiles.jsp?msg=blocked");
        }
        else{
            out.println("error in blocking");
        }
        %>
    </body>
</html>
