package com.kmikt;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/**
 * Created by miro on 09.05.2018.
 */
@WebServlet(urlPatterns = "/fileUpload")
public class FileUpload extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        File file;

        // Change default value for upload file
        int maxFileSize = 5000 * 1024;  // if you want 10MB file, change 5000 to 10000
        int maxMemSize = 5000 * 1024;   // if you want 10MB file, change 5000 to 10000

        // Get absolute path to our project
        // If you have linux or unix OS, upload directory must to be writable for Apache Tomcat user
        ServletContext context = request.getServletContext();
        String filePath = context.getRealPath(File.separator + "upload");

        // Verify the content type

        String contentType = request.getContentType();
        if ((contentType.indexOf("multipart/form-data") >= 0)) {

            DiskFileItemFactory factory = new DiskFileItemFactory();
            // maximum size that will be stored in memory
            factory.setSizeThreshold(maxMemSize);
            // Location to save data that is larger than maxMemSize.
            factory.setRepository(new File(filePath));

            //System.out.println("Factory repository: " + factory.getRepository());

            // Create a new file upload handler
            ServletFileUpload upload = new ServletFileUpload(factory);
            // maximum file size to be uploaded.
            upload.setSizeMax( maxFileSize );
            try{
                // Parse the request to get file items.
                List fileItems = upload.parseRequest(request);

                // Process the uploaded file items
                Iterator i = fileItems.iterator();

                while ( i.hasNext () )
                {
                    FileItem fi = (FileItem)i.next();
                    if ( !fi.isFormField () )
                    {
                        // Get the uploaded file parameters
                        String fieldName = fi.getFieldName();
                        String fileName = fi.getName();
                        boolean isInMemory = fi.isInMemory();
                        long sizeInBytes = fi.getSize();

                        // Write the file
                        file = new File( filePath + File.separator + fileName );
                        //System.out.print(filePath + File.separator + fileName);
                        fi.write( file ) ;

                    }
                }

            }catch(Exception ex) {
                ex.printStackTrace();
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
