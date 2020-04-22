<%@page import="com.app.utility.DBConnectionn"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    int fid =Integer.parseInt(session.getAttribute("fid").toString());
    String filename = null;
    int BUFFER_SIZE = 4096;
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    try {
        String query = "select file, filename from fileupload where fileid=?";
        con = DBConnectionn.getConnection();
        ps = con.prepareStatement(query);
        ps.setInt(1, fid);
        rs = ps.executeQuery();
        if (rs.next()) {
            Blob blob = rs.getBlob("file");
            filename = rs.getString("filename");
            InputStream inputStream = blob.getBinaryStream();
            int fileLength = inputStream.available();

            System.out.println("fileLength = " + fileLength);

            ServletContext context = getServletContext();

            // sets MIME type for the file download
            String mimeType = context.getMimeType(filename);
            if (mimeType == null) {
                mimeType = "application/octet-stream";
            }

            // set content properties and header attributes for the response
            response.setContentType(mimeType);
            response.setContentLength(fileLength);
            String headerKey = "Content-Disposition";
            String headerValue = String.format("attachment; filename=\"%s\"", filename);
            response.setHeader(headerKey, headerValue);

            // writes the file to the client
            OutputStream outStream = response.getOutputStream();

            byte[] buffer = new byte[BUFFER_SIZE];
            int bytesRead = -1;

            while ((bytesRead = inputStream.read(buffer)) != -1) {
                outStream.write(buffer, 0, bytesRead);
            }
            //response.sendRedirect("download.jsp?msg=filedownloaded");
            inputStream.close();
            outStream.close();

        }
    } catch (Exception e) {
        System.out.println("Download Error " + e.getMessage());
    } finally {
        try {
            // is.close();
            rs.close();
            ps.close();
            con.close();
        } catch (Exception e) {
        }
    }

%>