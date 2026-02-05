package com.github.umidovalimardon06;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;


public class MainServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(req.getMethod());
        PrintWriter printWriter = resp.getWriter();
        printWriter.println("Hello from Servlet!");
        printWriter.println("Its:"+ LocalDateTime.now());
        String name = req.getParameter("name");
        printWriter.println("Hello:"+name);
    }

}
