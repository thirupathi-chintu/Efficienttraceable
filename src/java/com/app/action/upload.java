
package com.app.action;

import com.app.utility.DBConnectionn;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.InputStreamReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author DHARANI
 */
//@WebServlet("/upload")
@MultipartConfig(maxFileSize = 16177215) 
public class upload extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
         PrintWriter pw = response.getWriter();
             SimpleFTPClient client;
          String oname=request.getParameter("oname");
          int oid=(Integer.parseInt(request.getParameter("oid")));
            //System.out.println(oname);
          String oparskey=request.getParameter("oparskey");
          GenerateParsKeys gen=new GenerateParsKeys(); 
          String filekey=gen.generateRandomString().substring(oparskey.length()-5); 
          String branch=request.getParameter("branch");
          String dept=request.getParameter("dept");
          String sdept=request.getParameter("sdept");
          String job=request.getParameter("job");
         //tring oid=request.getParameter("oid");
           Part filepart=request.getPart("file");
           InputStream is2=null;
           InputStream inputStream = null;
           InputStream is1=null;
           String fname=null;
           StringBuffer buf=new StringBuffer();
           String data=null;
          if(filepart!=null)
          {
          System.out.println(filepart.getSize());
          System.out.println(filepart.getName());
          fname=filepart.getSubmittedFileName();
              System.out.println(fname);
           is2=filepart.getInputStream(); 
           inputStream=is2;
          }
           String str=" ";
           String cipherdata=null;
           BufferedReader br=new BufferedReader(new InputStreamReader(inputStream));
           if(inputStream!=null){
            try {
                while((str=br.readLine()) !=null){
                    buf.append(str+" ");
                }
                data=buf.toString();
                cipherdata=EncryptionAlgoritham.encrypt(data);                
                is1=new ByteArrayInputStream(cipherdata.getBytes());
                
            } catch (Exception ex) {
                Logger.getLogger(upload.class.getName()).log(Level.SEVERE, null, ex);
            }
} 
          try {
              client=new SimpleFTPClient();
              client.setHost("ftp.drivehq.com");
              client.setUser("cloud15");
              client.setPassword("cloud15");
             // File f = new File("D:\\cloudmail\\divorcereport.txt");
              client.setRemoteFile("dph/"+fname);
              boolean log=client.connect();
              Connection con=DBConnectionn.getConnection();
                  PreparedStatement ps=con.prepareStatement("insert into fileupload(ownername, ownerid, ownerparskey, branch, department, subdepartment, job, file, filename, filekey, encryptedfile) values (?,?,?,?,?,?,?,?,?,?,?)");
                            //ps.setString(1, oid);
                            ps.setString(1, oname);
                            ps.setInt(2, oid);
                            ps.setString(3, oparskey);
                            ps.setString(4, branch);
                            ps.setString(5, dept);
                            ps.setString(6, sdept);
                            ps.setString(7, job);
                            ps.setBinaryStream(8, filepart.getInputStream());
                            ps.setString(9, fname);
                            ps.setString(10, filekey);
                            ps.setString(11, cipherdata);
           int k=ps.executeUpdate();
           if(k>0){
               inputStream.close();
             // if(log){
          // if(client.uploadFile(is1)){
               response.sendRedirect("upload.jsp?mesg=successs"); 
         //  }
          // else
          // {
          //        response.sendRedirect("upload.jsp?mesg=failed"); 
          // }
        }
               else
           {
                  response.sendRedirect("upload.jsp?mesg=failed"); 
           }//}
          //   else
           //{
                //  response.sendRedirect("upload.jsp?mesg=failed"); 
           //}
          }
catch(Exception e){
    pw.println(e);
}}}
    

