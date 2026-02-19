package com.library;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(
        name = "Servlet",
        value = "/test",
        initParams = {
                @WebInitParam(name = "url",value ="jdbc:postgresql://localhost:5432/jdbc_test_db"),
                @WebInitParam(name = "user",value ="jdbc_test"),
                @WebInitParam(name = "pass",value ="123")
        }
)
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletConfig config = getServletConfig();

        String username = config.getInitParameter("url");
        String user = config.getInitParameter("user");
        String pass = config.getInitParameter("pass");


        PrintWriter writer = resp.getWriter();
        writer.println(username);
        writer.println(user);
        writer.println(pass);
    }
}







