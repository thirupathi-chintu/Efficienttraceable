package com.prathapam;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.File;
import java.io.FileInputStream;

/**
 *
 * @author Ramu Maloth
 */
public class TestCloud {
    public static void main(String[] args) {
        SimpleFTPClient client;
        File file;
        
        try {
            client = new SimpleFTPClient();
            client.setHost("ftp.drivehq.com");
            client.setUser("cloud15");
            client.setPassword("cloud15");
            
            client.setRemoteFile("dph/divorcereport.txt");
            
            boolean log = client.connect();
            File f = new File("D:\\cloudmail\\divorcereport.txt");
            System.out.println("Log Status "+log);
            if (log) {
              
                if (client.uploadFile(new FileInputStream(f))) {
                    System.out.println("File Uploaded");
                  
                } else {
                    System.out.println("File Not Uploaded");
                }
            } else {
                System.out.println("File Upload Error");
            }
 
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
