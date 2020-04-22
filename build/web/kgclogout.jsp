<%-- 
    Document   : logout
    Created on : Aug 20, 2018, 3:10:21 PM
    Author     : DHARANI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       HttpSession ses=request.getSession();
       ses.invalidate();
       response.sendRedirect("KGClogin.jsp");
       %>
    </body>
</html>
