package com.jpa.servlet;

import com.jpa.entity.Book;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import jakarta.persistence.TypedQuery;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BookList",value = "/booklist")
public class BookList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("lesson");
        EntityManager manager = entityManagerFactory.createEntityManager();

        manager.getTransaction().begin();
/*        List<Book> books = manager.createQuery("from Book", Book.class).getResultList();
        manager.getTransaction().commit();*/

        TypedQuery<Book> query = manager.createQuery("select b from Book b where b.id=:id", Book.class);
        query.setParameter("id",1);
        Book singleResult = query.getSingleResult();

        resp.getWriter().println(singleResult.toString());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
