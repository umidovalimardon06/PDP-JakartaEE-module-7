package com.jpa.repository;

import com.jpa.entity.Talent;
import jakarta.persistence.*;

public class Repository {
    private EntityManagerFactory factory;
    private EntityManager manager;

    public Repository() {
        this.factory = Persistence.createEntityManagerFactory("talent-form");
        this.manager = factory.createEntityManager();
    }

    public void persistTalent(Talent talent) {
        EntityTransaction transaction = manager.getTransaction();
        transaction.begin();
        manager.persist(talent);
        transaction.commit();
    }

}
