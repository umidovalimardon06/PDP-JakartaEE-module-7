package com.myapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;

@WebServlet(name = "UploadServlet", value = "/upload")
@MultipartConfig(location = "C:\\Users\\satos\\OneDrive\\Desktop\\PDP\\JakartaEE\\uploaded")
public class FileUpload extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("upload.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part file = req.getPart("file");
        String submittedFileName = file.getSubmittedFileName();
        nameSplittingLogger(submittedFileName);
        file.write(submittedFileName);
        System.out.println("<INFO> FILE-SAVED(PART)");
        req.setAttribute("fileName",submittedFileName);
        req.getRequestDispatcher("success.jsp").forward(req,resp);
    }

    private static void nameSplittingLogger(String submittedFileName) {
        String fileNameWithoutExt = submittedFileName;
        String format = "";

        if (canExtractFileExtension(submittedFileName)) {
            fileNameWithoutExt = submittedFileName.substring(0, submittedFileName.lastIndexOf('.'));
            format = submittedFileName.substring(submittedFileName.lastIndexOf('.') + 1);
        }
        System.out.println("<INFO> Filename without extension: " + fileNameWithoutExt);
        System.out.println("<INFO> Format: " + format);
    }

    public static boolean canExtractFileExtension(String submittedFileName) {
        int lastDotIndex = submittedFileName.lastIndexOf('.');
        return lastDotIndex > 0 && lastDotIndex < submittedFileName.length() - 1;
    }
}
