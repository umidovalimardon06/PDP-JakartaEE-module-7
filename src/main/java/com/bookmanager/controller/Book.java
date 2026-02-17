package com.bookmanager.controller;

import com.bookmanager.respository.BookRepository;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Book",value = "/book")
public class Book extends HttpServlet {
    private BookRepository repository;

    @Override
    public void init(ServletConfig config) throws ServletException {
        repository = new BookRepository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("books",repository.getAll());
        req.getRequestDispatcher("/home.jsp").forward(req,resp);
    }
}
