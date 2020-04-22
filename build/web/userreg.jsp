<%@page import="java.sql.*" %>
<%@page import="com.app.utility.DBConnectionn" %>

<%

String name = request.getParameter("name");
String password  = request.getParameter("password");
String emailid= request.getParameter("emailid");
String mobilenumber= request.getParameter("mbno");
String branch = request.getParameter("branch");
String department  = request.getParameter("dept");
String subdepartment= request.getParameter("subdept");
String jobrole= request.getParameter("jobrole");


%>

<%
Connection con  =null;
PreparedStatement ps = null;
try{
con = DBConnectionn.getConnection();
String query="insert into userdetails(name, password, emailid, mobilenumber, branch, department, subdepartment, jobrole, status, block) values (?,?,?,?,?,?,?,?,?,?)";
ps = con.prepareStatement(query);
ps.setString(1, name);
ps.setString(2, password);
ps.setString(3, emailid);
ps.setString(4, mobilenumber);
ps.setString(5, branch);
ps.setString(6, department);
ps.setString(7, subdepartment);
ps.setString(8, jobrole);
ps.setString(9, "not activated");
ps.setString(10, "no");
int no = ps.executeUpdate();
if(no>0){
    response.sendRedirect("userlogin.jsp?msg=regsuccess");
}
else{
     response.sendRedirect("userreg.jsp?msg=failed");
}
}catch(Exception e){
System.out.println(e.getMessage());
}
finally{
try{
ps.close();
con.close();
}catch(Exception ee){
System.out.println(ee.getMessage());
}
}

%>