package com.github.umidovalimardon06;

import com.github.umidovalimardon06.entity.Book;
import com.github.umidovalimardon06.repository.BookRepository;
import lombok.SneakyThrows;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Jdbctest {
    public static Connection connection;
    public static Statement statement;

    @SneakyThrows
    public static void main(String[] args) {
          connection =  DriverManager.getConnection(
                "jdbc:postgresql://localhost:5432/jdbc_test_db",
                "jdbc_test",
                "123");

        if (connection != null && !connection.isClosed()) {
            System.out.println("✅ Connected to PostgreSQL");
        } else {
            System.out.println("❌ Not connected");
        }
/*        statement = connection.createStatement();

        simpleQuery();*/

        BookRepository bookRepository = new BookRepository();

        ///  book-1
        int aBook = bookRepository.saveBook(
                Book.builder()
                        .title("A book")
                        .pages(123)
                        .build()
        );
        System.out.println(aBook);

        ///  book-2
        int bBook = bookRepository.saveBook(
                Book.builder()
                        .title("B book")
                        .pages(320)
                        .build()
        );
        System.out.println(bBook);

    }

    @SneakyThrows
    public static void simpleQuery() {
        ResultSet set = statement.executeQuery("SELECT version()");
        if (set.next()) System.out.println(set.getString(1));
    }



}
