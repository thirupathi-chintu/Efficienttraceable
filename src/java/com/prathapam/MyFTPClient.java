package com.prathapam;
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import java.io.File;

/**
 *
 * @author Ramu Maloth
 */
public class MyFTPClient {
    public static void main(String[] args) {
        SimpleFTPClient client;
        File file;
        try {

            String path = "D:/";
            client = new SimpleFTPClient();
            client.setHost("ftp.drivehq.com");
            client.setUser("cloud15");
            client.setPassword("cloud15");
            client.setRemoteFile("pathcreators/cmail.txt");

            client.connect();
            if (client.downloadFile(path+"cmail.txt")) {
                System.out.println("Downloaded In D drive");
            } else {
                System.out.println("File Not Availabe for Download");
            }


        } finally {
            
        }
    }
}
