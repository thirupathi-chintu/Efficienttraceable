/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.45-community-nt : Database - efficient
*********************************************************************
Server version : 5.0.45-community-nt
*/


create database if not exists `efficient`;

USE `efficient`;

/*Table structure for table `filerequest` */

DROP TABLE IF EXISTS `filerequest`;

CREATE TABLE `filerequest` (
  `fileid` varchar(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `ownername` varchar(50) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `id` int(11) NOT NULL auto_increment,
  `otp` varchar(10) default NULL,
  `filekey` varchar(10) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `filerequest` */

insert into `filerequest` values 
('9','bittuboy','sai','bittu.java','yes',2,'744538',NULL),
('9','bittuboy','sai','bittu.java','yes',3,'744538',NULL),
('6','bittuboy','sai','bittu.java','yes',4,'912642',NULL),
('9','hero','sai','bittu.java','yes',5,'744538',NULL),
('11','hotstar','hotstar','Bittu1.java','yes',6,'252741',NULL),
('29','bittugadu','bittugadu','bittu.java','no',9,'142558','Dyafv');

/*Table structure for table `fileupload` */

DROP TABLE IF EXISTS `fileupload`;

CREATE TABLE `fileupload` (
  `fileid` int(11) NOT NULL auto_increment,
  `ownerid` int(10) default NULL,
  `ownername` varchar(50) NOT NULL,
  `ownerparskey` varchar(50) NOT NULL,
  `branch` varchar(15) NOT NULL,
  `department` varchar(20) NOT NULL,
  `subdepartment` varchar(20) NOT NULL,
  `job` varchar(20) NOT NULL,
  `file` longblob NOT NULL,
  `filename` varchar(100) default NULL,
  `filekey` varchar(10) NOT NULL,
  `encryptedfile` longtext,
  PRIMARY KEY  (`fileid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

/*Data for the table `fileupload` */

insert into `fileupload` values 
(1,1,'sai','saai','null','sai','sais','sai','Efficient Traceable Authorization Search system cloud storage',NULL,'',NULL),
(2,1,'sai','saai','sai','23','508116','sai','\r\n\r\nimport java.io.BufferedReader;\r\nimport java.io.File;\r\nimport java.io.FileReader;\r\nimport java.io.IOException;\r\nimport java.io.PrintWriter;\r\nimport java.sql.Connection;\r\nimport java.sql.DriverManager;\r\nimport java.sql.PreparedStatement;\r\nimport java.sql.SQLException;\r\nimport javax.servlet.ServletException;\r\nimport javax.servlet.http.HttpServlet;\r\nimport javax.servlet.http.HttpServletRequest;\r\nimport javax.servlet.http.HttpServletResponse;\r\n\r\n\r\npublic class access extends HttpServlet {\r\n\r\n   \r\n    protected void processRequest(HttpServletRequest request, HttpServletResponse response)\r\n            throws ServletException, IOException  {\r\n        response.setContentType(\"text/html;charset=UTF-8\");\r\n        PrintWriter pw=response.getWriter();\r\n         String name = request.getParameter(\"data\");\r\n         System.out.println(name);   \r\n         String filename = \"divorce report.txt\";\r\n       BufferedReader reader = new BufferedReader(new FileReader(\"D://divorce report.txt\"));\r\n       String line=\" \";\r\n       String[] totalWOrd = null;\r\n       String[] divorceWOrd = null;\r\n       divorceWOrd = name.split(\"\");\r\n       int count = 0;\r\n       StringBuffer buf = new StringBuffer();\r\n       int cj = 0;\r\n        \r\n       while((line=reader.readLine())!=null)\r\n       {\r\n          //System.out.println(line);\r\n           buf.append(line);\r\n       }\r\n       System.out.println(\"Divorece WOrd = \"+divorceWOrd.length+\" DB Word \"+buf.toString().length());\r\n       String dbStore = buf.toString();\r\n       totalWOrd = dbStore.split(\" \");\r\n           for(int i=0;i<divorceWOrd.length;i++)\r\n           {\r\n               for(int j=0;j<totalWOrd.length;j++)\r\n               {\r\n                   if(divorceWOrd[i].equalsIgnoreCase(totalWOrd[j]))\r\n                   {\r\n                       count++;\r\n                       cj = cj+1;\r\n                      // System.out.println(\"word \" +divorceWOrd[i]+ \" == \" +count);\r\n                   }\r\n                  \r\n                }\r\n         \r\n               \r\n            }\r\n       \r\n        System.out.println(\"Matching words count = \"+cj);\r\n        float perc = (float)(cj*100)/divorceWOrd.length;\r\n        System.out.println(\"Match % \"+perc);\r\n        \r\n        if(perc<=50)\r\n        {\r\n            System.out.println(\"you are not suppose to take divorce\");\r\n        }\r\n     \r\n    \r\n    \r\n    \r\n    \r\n    \r\n    }\r\n\r\n    // <editor-fold defaultstate=\"collapsed\" desc=\"HttpServlet methods. Click on the + sign on the left to edit the code.\">\r\n    /**\r\n     * Handles the HTTP <code>GET</code> method.\r\n     *\r\n     * @param request servlet request\r\n     * @param response servlet response\r\n     * @throws ServletException if a servlet-specific error occurs\r\n     * @throws IOException if an I/O error occurs\r\n     */\r\n    @Override\r\n    protected void doGet(HttpServletRequest request, HttpServletResponse response)\r\n            throws ServletException, IOException {\r\n        processRequest(request, response);\r\n    }\r\n\r\n    /**\r\n     * Handles the HTTP <code>POST</code> method.\r\n     *\r\n     * @param request servlet request\r\n     * @param response servlet response\r\n     * @throws ServletException if a servlet-specific error occurs\r\n     * @throws IOException if an I/O error occurs\r\n     */\r\n    @Override\r\n    protected void doPost(HttpServletRequest request, HttpServletResponse response)\r\n            throws ServletException, IOException {\r\n        processRequest(request, response);\r\n    }\r\n\r\n    /**\r\n     * Returns a short description of the servlet.\r\n     *\r\n     * @return a String containing servlet description\r\n     */\r\n    @Override\r\n    public String getServletInfo() {\r\n        return \"Short description\";\r\n    }// </editor-fold>\r\n\r\n\r\n}',NULL,'',NULL),
(4,1,'sai','3NxfQH4wq4dgq9IOND3Q','Bangalore','Testing','Designing','DotNet','class S\r\n{\r\npublic static void main(String[] args)\r\n{\r\nSystem.out.println(\"helo\");\r\n}\r\n}','bittu.java','',NULL),
(5,1,'sai','3NxfQH4wq4dgq9IOND3Q','Bangalore','Testing','Designing','DotNet','class Bittu1\r\n{\r\npublic static void main(String[] args)\r\n{\r\nSystem.out.println(\"helo\");\r\n}\r\n}','Bittu1.java','OND3Q',NULL),
(6,1,'sai','3NxfQH4wq4dgq9IOND3Q','Bangalore','Testing','Designing','DotNet','','','OND3Q',NULL),
(7,1,'sai','3NxfQH4wq4dgq9IOND3Q','Bangalore','Testing','Designing','DotNet','import java.util.*;\r\nclass DoubleDivision {\r\n\r\n    public static void main(String[ ] args) {\r\nScanner s=new Scanner(System.in);\r\nint no=s.nextInt();\r\n        System.out.println(no/0);\r\n    }\r\n}','DoubleDivision.java','7W5PY',NULL),
(8,3,'sai','5yzg4bySRbxGhvFnTfG7','Chennai','Testing','Designing','DotNet','class Bittu1\r\n{\r\npublic static void main(String[] args)\r\n{\r\nSystem.out.println(\"helo\");\r\n}\r\n}','Bittu1.txt','oKzSa',NULL),
(9,1,'sai','3NxfQH4wq4dgq9IOND3Q','Bangalore','Testing','Designing','DotNet','class S\r\n{\r\npublic static void main(String[] args)\r\n{\r\nSystem.out.println(\"helo\");\r\n}\r\n}','bittu.java','TPmyY',NULL),
(10,6,'hero1','bzayQSyrhG59HTsEY54g','Chennai','Engineering','Programming','Java','import java.util.*;\r\nclass DoubleDivision {\r\n\r\n    public static void main(String[ ] args) {\r\nScanner s=new Scanner(System.in);\r\nint no=s.nextInt();\r\n        System.out.println(no/0);\r\n    }\r\n}','DoubleDivision.java','s5QBj',NULL),
(11,7,'hotstar','5226h4FtP878VUqzaavG','Chennai','Engineering','Programming','Java','class Bittu1\r\n{\r\npublic static void main(String[] args)\r\n{\r\nSystem.out.println(\"helo\");\r\n}\r\n}','Bittu1.java','X1K2y',NULL),
(12,6,'hero1','bzayQSyrhG59HTsEY54g','Chennai','Engineering','Programming','Java','','bittu.java','OxaHP',NULL),
(13,6,'hero1','bzayQSyrhG59HTsEY54g','Chennai','Engineering','Programming','Java','class Bittu1\r\n{\r\npublic static void main(String[] args)\r\n{\r\nSystem.out.println(\"helo\");\r\n}\r\n}','Bittu1.java','uGSTk',NULL),
(14,6,'hero1','bzayQSyrhG59HTsEY54g','Chennai','Engineering','Programming','Java','','Bittu1.txt','f91AE',NULL),
(26,7,'hotstar','5226h4FtP878VUqzaavG','Chennai','Engineering','Programming','Java','class S\r\n{\r\npublic static void main(String[] args)\r\n{\r\nSystem.out.println(\"helo\");\r\n}\r\n}','bittu.java','EcKZH','M45XcrejJqt/v7qBvLW3KEy4gFDoYF/ux2jesxfllwrQNJLsaVC/KEuXYSZaKlwodWchpcpruCI4\r\nt7Q6zrcFTMgWOzwW3JocUFlQTJMQ4rLGu1hBafZNFZTsJlDknLzH'),
(29,9,'bittugadu','VbV18ome4tOomnzWULNR','Chennai','Engineering','Programming','Java','class S\r\n{\r\npublic static void main(String[] args)\r\n{\r\nSystem.out.println(\"helo\");\r\n}\r\n}','bittu.java','Dyafv','M45XcrejJqt/v7qBvLW3KEy4gFDoYF/ux2jesxfllwrQNJLsaVC/KEuXYSZaKlwodWchpcpruCI4\r\nt7Q6zrcFTMgWOzwW3JocUFlQTJMQ4rLGu1hBafZNFZTsJlDknLzH');

/*Table structure for table `ownerdetails` */

DROP TABLE IF EXISTS `ownerdetails`;

CREATE TABLE `ownerdetails` (
  `ownerid` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `mobilenumber` varchar(10) NOT NULL,
  `branch` varchar(15) NOT NULL,
  `department` varchar(15) NOT NULL,
  `subdepartment` varchar(41) NOT NULL,
  `jobrole` varchar(15) NOT NULL,
  `status` varchar(15) default NULL,
  `parskey` varchar(20) default NULL,
  PRIMARY KEY  (`ownerid`,`emailid`,`mobilenumber`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `ownerdetails` */

insert into `ownerdetails` values 
(1,'sai','sai','prathap1.datapoint@gmail.com','8885697874','Delhi','Engineering','Programming','Java','yes','3NxfQH4wq4dgq9IOND3Q'),
(2,'sai1','11','prathap1.dat1apoint@gmail.com','8885197874','Chennai','Engineering','Programming','Java','yes',NULL),
(3,'sai4','44','prathap1.datapoi@gmail.com','8885697874','Chennai','Testing','Designing','DotNet','yes','5yzg4bySRbxGhvFnTfG7'),
(4,'heroine','heroine','saiprathap587@gmail.com','8885697874','Chennai','Engineering','Programming','Java','no',NULL),
(5,'rockstar','rocky','prathap1.datapoint@gmail.com','8885697874','Bangalore','Marketing','Programming','Java','no',NULL),
(6,'hero1','hero','prathap1.datapoint@gmail.com','8885697874','Chennai','Engineering','Programming','Java','yes','Ohh91GE9JlZljudlTchj'),
(7,'hotstar','hot','prathap1.datapoint@gmail.com','8885697874','Chennai','Engineering','Programming','Java','yes','5226h4FtP878VUqzaavG'),
(8,'s','s','s','s','Chennai','Engineering','Programming','Java','no',NULL),
(9,'bittugadu','b1','prathap1.datapoint@gmail.com','8885697874','Chennai','Engineering','Programming','Java','yes','VbV18ome4tOomnzWULNR');

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `userid` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL,
  `password` varchar(20) default NULL,
  `emailid` varchar(50) NOT NULL,
  `mobilenumber` varchar(10) NOT NULL,
  `branch` varchar(20) default NULL,
  `department` varchar(20) default NULL,
  `subdepartment` varchar(20) default NULL,
  `jobrole` varchar(20) default NULL,
  `status` varchar(15) default NULL,
  `publickey` varchar(10) default NULL,
  `secretkey` varchar(10) default NULL,
  `block` varchar(10) default NULL,
  `count` int(10) default NULL,
  PRIMARY KEY  (`userid`,`emailid`,`mobilenumber`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

insert into `userdetails` values 
(2,'sai','4578','prathap1s.datapoint@gmail.com','8885697874','Delhi','Engineering','Programming','Java','yes',NULL,NULL,NULL,NULL),
(3,'sai11','sai11','prathap1.datapoint@gmail.com','8845697874','Mumbai','Accounting','Designing','Java','yes','sX$pOjT&UM','+)ECLUlV16',NULL,0),
(4,'bittuboy','b1','saiprathap587@gmail.com','8885699899','Bangalore','Testing','Designing','DotNet','yes','Lj9cVfLo3M','M+63cS3zoU','no',NULL),
(5,'hero','hero','prathap1.datapoint@gmail.com','8885697874','Delhi','Engineering','Programming','Java','yes','I(^4V%k(+I','aweGJXK8Tc','no',NULL),
(6,'siva','siva','lx160cm@gmail.com','9849025631','Bangalore','Testing','Designing','Java','yes','j^9R&r2Iil','5V$vG)brCt','no',NULL),
(7,'hotstar','hot','prathap1.datapoint@gmail.com','8885697874','Chennai','Engineering','Programming','Java','yes','_%+v9I#fkF','xbd*OtHHs_','no',2),
(8,'sai','s','s','s','Chennai','Engineering','Programming','Java','not activated',NULL,NULL,'no',NULL),
(9,'bittugadu','b1','prathap1.datapoint@gmail.com','8885697874','Chennai','Engineering','Programming','Java','yes','x6qb2itwed','ez5oh*Y)Zc','no',3);
