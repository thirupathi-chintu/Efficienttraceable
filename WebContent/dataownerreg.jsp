<%@page import="java.sql.*" %>
<%@page import="com.app.utility.DBConnectionn" %>

<%

String name = request.getParameter("name").trim();
String password  = request.getParameter("password").trim();
String emailid= request.getParameter("emailid").trim();
String mobilenumber= request.getParameter("mbno").trim();
String branch = request.getParameter("branch").trim();
String department  = request.getParameter("dept").trim();
String subdepartment= request.getParameter("subdept");
String jobrole= request.getParameter("jobrole").trim();


%>

<%
Connection con  =null;
PreparedStatement ps = null;
try{
con = DBConnectionn.getConnection();
String query="insert into ownerdetails(name, password, emailid, mobilenumber, branch, department, subdepartment, jobrole, status) values (?,?,?,?,?,?,?,?,?)";
ps = con.prepareStatement(query);
ps.setString(1, name);
ps.setString(2, password);
ps.setString(3, emailid);
ps.setString(4, mobilenumber);
ps.setString(5, branch);
ps.setString(6, department);
ps.setString(7, subdepartment);
ps.setString(8, jobrole);
ps.setString(9, "no");
int no = ps.executeUpdate();
if(no>0){
    response.sendRedirect("ownerreg.jsp?msg=success");
}
else{
     response.sendRedirect("ownerreg.html?msg=failed");
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