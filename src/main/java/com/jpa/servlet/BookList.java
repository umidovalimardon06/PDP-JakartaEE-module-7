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

import static com.jpa.utils.Utils.getEntityManager;

@WebServlet(name = "BookList",value = "/booklist")
public class BookList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Book singleResult = executeJpqlQuery();
        resp.getWriter().println(singleResult.toString());
    }

    private static Book executeJpqlQuery() {
        EntityManager manager = getEntityManager();
        Book singleResult = executeJpqlQuery(manager);
        return singleResult;
    }

    private static Book executeJpqlQuery(EntityManager manager) {
        manager.getTransaction().begin();
        /* List<Book> books = manager.createQuery("from Book", Book.class).getResultList();
        manager.getTransaction().commit();*/
        TypedQuery<Book> query = manager.createQuery("select b from Book b where b.id=:id", Book.class);
        query.setParameter("id",1);
        Book singleResult = query.getSingleResult();
        manager.getTransaction().commit();
        return singleResult;
    }

}
