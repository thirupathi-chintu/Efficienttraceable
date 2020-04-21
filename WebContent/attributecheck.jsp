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
        HttpSession user=request.getSession(true);
        int uid =Integer.parseInt(user.getAttribute("uid").toString());
        System.out.println(uid);
        String fid=request.getParameter("fid");
        String fkey=request.getParameter("fkey");
        session.setAttribute("fid",fid);
        String fname=request.getParameter("fname");
        session.setAttribute("fname",fname);
        //HttpSession sessio=request.getSession();
         int oid=Integer.parseInt(request.getParameter("oid"));
          session.setAttribute("oid",oid);
            System.out.println(oid);
            String oname=request.getParameter("oname");
            session.setAttribute("oname",oname);
            Connection con=DBConnectionn.getConnection();
            Statement stm=con.createStatement();           
  ResultSet rs=stm.executeQuery("SELECT ownerdetails.* , userdetails.* FROM ownerdetails , userdetails WHERE ownerdetails.ownerid='"+oid+"' and userdetails.userid='"+uid+"' and ownerdetails.branch = userdetails.branch and ownerdetails.department = userdetails.department and ownerdetails.subdepartment = userdetails.subdepartment and ownerdetails.jobrole = userdetails.jobrole");
  if(rs.next()){
              response.sendRedirect("sendfilerequest.jsp?fkey="+fkey+"");
            }
  else{
      response.sendRedirect("request.jsp?msg=attributefailed");
  }
        %>
                    </body>
</html>
