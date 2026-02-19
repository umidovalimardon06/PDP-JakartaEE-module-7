package com.library;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "SessionHandler",value = "/login")
public class SessionHandler extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String loginUsername = req.getParameter("loginUsername");
        String loginPassword = req.getParameter("loginPassword");
        HttpSession session = req.getSession();
        System.out.println("session.getId() = " + session.getId());
        System.out.println("session.getCreationTime() = " + session.getCreationTime());

        session.setAttribute("loginUsername",loginUsername);
        /*session.setAttribute("loginPassword",loginPassword);*/
        session.setMaxInactiveInterval(10);

    }

}










