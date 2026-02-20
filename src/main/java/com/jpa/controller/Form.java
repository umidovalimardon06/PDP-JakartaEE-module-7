package com.jpa.controller;

import com.jpa.entity.Talent;
import com.jpa.repository.Repository;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "FormServlet",value = "/form")
public class Form extends HttpServlet {
    private Repository repository;

    @Override
    public void init(ServletConfig config) throws ServletException {
        this.repository = new Repository();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("form.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String talentMajor = req.getParameter("major");
        String talentCountry = req.getParameter("country");
        Integer talentAge = Integer.valueOf(req.getParameter("age"));
        String talentGender = req.getParameter("gender");
        String talentName = req.getParameter("name");
        Talent talent = Talent.builder()
                .major(talentMajor)
                .country(talentCountry)
                .age(talentAge)
                .gender(talentGender)
                .name(talentName)
                .build();
        talent.setAcceptance();
        repository.persistTalent(talent);
    }
}
