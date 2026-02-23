package com.jpa.utils;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

public class Utils {
    public static EntityManager getEntityManager() {
        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("lesson");
        EntityManager manager = entityManagerFactory.createEntityManager();
        return manager;
    }
}
