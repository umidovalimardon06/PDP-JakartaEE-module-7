package com.myapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import static com.myapp.FileUpload.canExtractFileExtension;

@WebServlet(name = "DownloadServlet",value = "/download")
public class FileDownload extends HttpServlet {
    private final Path rootPath = Path.
            of("C:\\Users\\satos\\OneDrive\\Desktop\\PDP\\JakartaEE\\uploaded");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("download.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fileName = req.getParameter("file_name");
        Path actualFileName = rootPath.resolve(fileName).normalize();
        if (securityCheck(fileName)) {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "Access denied");
            return;
        }

        String fileNameWithoutExt = fileName;
        String format = "";

        if (canExtractFileExtension(fileName)) {
            fileNameWithoutExt = fileName.substring(0, fileName.lastIndexOf('.'));
            format = fileName.substring(fileName.lastIndexOf('.') + 1);
        }
        resp.setContentType("application/octet-stream");
        resp.setHeader("Content-Disposition", "attachment; filename=\"" + fileName + "\"");
        resp.setContentLengthLong(Files.size(actualFileName));
        try (InputStream in = Files.newInputStream(actualFileName)) {
            try (OutputStream out = resp.getOutputStream()) {
                in.transferTo(out);
            }
        }
    }

    private boolean securityCheck(String fileName) throws IOException {
        Path actualFileName = rootPath.resolve(fileName).normalize();
        if (fileName.contains("..") || fileName.contains("/") || fileName.contains("\\")) {
            return true;
        }
        if (!Files.exists(actualFileName)) {
            return true;
        }
        return !actualFileName.startsWith(rootPath);
    }


}
