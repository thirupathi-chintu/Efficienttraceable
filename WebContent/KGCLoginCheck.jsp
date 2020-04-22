<%  String kname=request.getParameter("kname");     
    String pword=request.getParameter("kpass");
    
        if(kname.equals("KGC") && pword.equals("KGC"))
            {
            response.sendRedirect("KGCHome.jsp?msgg=success");
            }
        else if(kname.equals("KGC") && pword !="KGC")
            {
            response.sendRedirect("KGClogin.jsp?msgg=wrongpassword");
            }   
        else
            {
            response.sendRedirect("KGClogin.jsp?msgg=failed");
            }


%>