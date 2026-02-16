package com.myapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;

@WebServlet(name = "FileUploadServlet", value = "/upload")
@MultipartConfig(location = "C:\\Users\\satos\\OneDrive\\Desktop\\PDP\\JakartaEE\\uploaded")
public class FileUpload extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/files/upload.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part file = req.getPart("file");
        String submittedFileName = file.getSubmittedFileName();
        System.out.println("<INFO>: " + submittedFileName);
        String fileNameWithoutExt = submittedFileName;
        String format = "";
        int lastDotIndex = submittedFileName.lastIndexOf('.');
        if (lastDotIndex > 0 && lastDotIndex < submittedFileName.length() - 1) {
            fileNameWithoutExt = submittedFileName.substring(0, lastDotIndex);
            format = submittedFileName.substring(lastDotIndex + 1);
        }
        System.out.println("<INFO> Filename without extension: " + fileNameWithoutExt);
        System.out.println("<INFO> Format: " + format);

        file.write(submittedFileName);
    }
}
