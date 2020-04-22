/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.prathapam;


import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Ramu Maloth
 */
@MultipartConfig(maxFileSize = 16177215) 
public class FileUploading extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        java.sql.Date sqldate = new java.sql.Date(new java.util.Date().getTime());
        HttpSession hs = request.getSession();
         SimpleFTPClient client;
        File file;
        String oname  = hs.getAttribute("oname").toString();
        String pubKey = request.getParameter("pubKey");       
        String fname  = request.getParameter("fname");
        InputStream inputStream = null;
        Part filePart = request.getPart("file");
         if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
         Connection con = null;
         PreparedStatement ps = null;
         
         try {
            client = new SimpleFTPClient();
            client.setHost("ftp.drivehq.com");
            client.setUser("cloud15");
            client.setPassword("cloud15");
            client.setRemoteFile(fname);
            boolean log = client.connect();
            con = null;
            String query = "insert into files(oname,filename,fdata,pubkey,cdate,tmkey1,tmkey2,tmkey3,tmkey4,status) values(?,?,?,?,?,?,?,?,?,?)";
            ps = con.prepareStatement(query);
            ps.setString(1, oname);
            ps.setString(2, fname);
           // ps.setString(5,description);
            if(inputStream!=null){
            ps.setBlob(3, inputStream);
            }
            ps.setString(4, pubKey);
            ps.setDate(5, sqldate);
            ps.setString(6,"");
            ps.setString(7,"");
            ps.setString(8,"");
            ps.setString(9,"");
             ps.setString(10,"notgenerated");
            int row = ps.executeUpdate();
            if(row>0){
                System.out.println("Connection Status is "+log);
                 if (log) {
              
                if (client.uploadFile(filePart.getInputStream())) {
                   response.sendRedirect("fileUpload.jsp?msg=success");
                  
                } else {
                    response.sendRedirect("fileUpload.jsp?msg=faild");
                }
           
            }else{
            response.sendRedirect("fileUpload.jsp?msg=faild");
            }
        } else{
            response.sendRedirect("fileUpload.jsp?msg=faild");
            }
         }catch (Exception e) {
            e.printStackTrace();
        }finally{
             try {
                 inputStream.close();
                 ps.close();
                 con.close();
             } catch (Exception e) {
             }
         }
        
        
    }

   
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
