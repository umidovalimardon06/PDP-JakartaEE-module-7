package com.myapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class FileNameRepo {
    public void saveName() {
        try(Connection connection = DriverManager.getConnection(
                "jdbc:postgresql://localhost:5432",
                "",
                ""
        )) {

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
