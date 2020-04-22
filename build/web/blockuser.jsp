<%-- 
    Document   : blockrequesttocloud
    Created on : Aug 25, 2018, 1:11:24 PM
    Author     : DHARANI
--%>
<%@page import="java.sql.Connection"%>
<%@page import="com.app.utility.DBConnectionn"%>
<%@page import="com.app.utility.DBConnectionn"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%  int id=Integer.parseInt(request.getParameter("uid"));
         Connection con=DBConnectionn.getConnection();
             Statement stm1=con.createStatement();
             int k=stm1.executeUpdate("update userdetails set block='yes' where userid='"+id+"'");
             if(k!=0){
                 response.sendRedirect("malicious1.jsp?msg=blocked");
             }
             else{
                 response.sendRedirect("malicious1.jsp?msg=notblocked");
             }
       %>
    </body>
</html>
