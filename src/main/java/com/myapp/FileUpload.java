package com.myapp;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;

@WebServlet(name = "FileUploadServlet", value = "/upload")
@MultipartConfig(location = "C:\\Users\\satos\\OneDrive\\Desktop\\PDP\\JakartaEE\\uploaded")
public class FileUpload extends HttpServlet {
    private final Path rootPath = Path.of("C:\\Users\\satos\\OneDrive\\Desktop\\PDP\\JakartaEE\\uploadedCustom");

    @Override
    public void init(ServletConfig config) throws ServletException {
        if (!Files.exists(rootPath)) {
            try {
                Files.createDirectories(rootPath);
            } catch (IOException e){
                System.out.println(e.getMessage());
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/files/upload.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Part file = req.getPart("file");
        String submittedFileName = file.getSubmittedFileName();
        nameSplitting(submittedFileName);
        manualWriting(file);
        file.write(submittedFileName);
        System.out.println("File-auto done");
    }

    private void manualWriting(Part file) throws IOException {
        InputStream inputStream = file.getInputStream();
        String submittedFileName = file.getSubmittedFileName();
        Path filePath = rootPath.resolve(submittedFileName);
        Files.copy(inputStream,filePath, StandardCopyOption.REPLACE_EXISTING);
        System.out.println("Manual-done");
    }

    private static void nameSplitting(String submittedFileName) {
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
    }
}
