/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.app.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.app.utility.DBConnectionn;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author IBN5
 */
public class owner_login extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            String uname=request.getParameter("uname");
            String pass=request.getParameter("upass");
            
          Connection con= DBConnectionn.getConnection();
          Statement st=con.createStatement();
          ResultSet rt=st.executeQuery("select * from ownerdetails where name='"+uname+"'");
          if(rt.next()){
              String p=rt.getString("password");
              int oid=rt.getInt("ownerid");
              System.out.println(oid+"owner login.java");
              String status=rt.getString("status");
              String name=rt.getString("name");
              if(pass.equalsIgnoreCase(p)){
                  if(status.equalsIgnoreCase("yes")){
                      HttpSession user=request.getSession();
                      user.setAttribute("oid",oid);
                      int sessionid=(int)user.getAttribute("oid");
                      System.out.println(sessionid+"session id");    
                      user.setAttribute("name", name);
                     // user.setAttribute("username", uname);
                   /**request.setAttribute("oid", oid);
RequestDispatcher dispatcher = request.getRequestDispatcher("OwnerHomepage.jsp");
dispatcher.forward( request, response );**/
                   response.sendRedirect("OwnerHomepage.jsp");
                  }
                  else{
                      response.sendRedirect("dataownerlogin.jsp?msg=waiting");
                  }
              }
              else{
                  response.sendRedirect("dataownerlogin.jsp?msg=wrongpassword");
              }
          }
          else{
              response.sendRedirect("dataownerlogin.jsp?msg=failed");          }
        }
        catch(Exception e){
            out.println(e);
        } 
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
