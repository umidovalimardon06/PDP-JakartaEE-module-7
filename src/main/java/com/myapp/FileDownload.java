package com.myapp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;

@WebServlet(name = "FileDownloadServlet",value = "/download")
public class FileDownload extends HttpServlet {
    private final Path rootPath = Path.of("C:\\Users\\satos\\OneDrive\\Desktop\\PDP\\JakartaEE\\uploadedCustom");

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/files/download.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String fileName = req.getParameter("file_name");
        byte[] bytes = Files.readAllBytes(rootPath.resolve(fileName));
        resp.getOutputStream().write(bytes);

    }
}
