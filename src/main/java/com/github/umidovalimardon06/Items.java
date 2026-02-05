package com.github.umidovalimardon06;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class Items extends HttpServlet {
    private final Map<Integer,String> store = new ConcurrentHashMap<>();

    /// RETRIEVE
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        String idParam = req.getParameter("id");

        if (idParam==null) {
            resp.getWriter().write(store.toString());
            return;
        }

        int id = Integer.parseInt(idParam);
        String value = store.get(id);

        if (value==null) {
            resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        resp.getWriter().write("{\"id\":" + id + ",\"value\":" + value + "\"}");
    }

    /// CREATE
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String value = req.getParameter("value");
        store.put(id,value);

        resp.setStatus(HttpServletResponse.SC_CREATED);
        resp.setHeader("Location","/items?id="+id);
    }

    /// FULL-UPDATE
    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String value = req.getParameter("value");

        if (!store.containsKey(id)) {
            resp.setStatus(HttpServletResponse.SC_NOT_FOUND);
            return;
        }

        store.put(id,value);
        resp.setStatus(HttpServletResponse.SC_NO_CONTENT);
    }

    /// DELETE
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        store.remove(id);
        resp.setStatus(HttpServletResponse.SC_NO_CONTENT);
    }

}














