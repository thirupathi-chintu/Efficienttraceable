<%-- 
    Document   : cloudlogout
    Created on : Aug 25, 2018, 4:40:19 PM
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
       response.sendRedirect("CLoudlogin.jsp");
       %>
    </body>
</html>
