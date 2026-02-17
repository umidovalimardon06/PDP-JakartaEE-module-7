package com.bookmanager.respository;

import com.bookmanager.model.Book;
import lombok.SneakyThrows;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookRepository {
    @SneakyThrows
    public List<Book> getAll() {
        Class.forName("org.postgresql.Driver");
        ResultSet set = getResultSet("SELECT * FROM BOOK");
        List<Book> bookList = new ArrayList<>();
        while (set.next()) {
            Book book = Book.builder()
                    .title(set.getString(1))
                    .author(set.getString(2))
                    .build();
            bookList.add(book);
        }
        return bookList;
    }

    @SneakyThrows
    public boolean delete(String title) {
        Class.forName("org.postgresql.Driver");
        return deleteByTitle( "DELETE FROM BOOK WHERE title = '" + title + "'");
    }

    private static ResultSet getResultSet(String sql) throws SQLException {
        Connection connection = DriverManager.getConnection(
          "jdbc:postgresql://localhost:5432/jdbc_test_db",
          "jdbc_test",
          "123"
        );

        Statement statement = connection.createStatement();
        ResultSet set = statement.executeQuery(sql);
        return set;
    }
    private static boolean deleteByTitle(String sql) throws SQLException {
        Connection connection = DriverManager.getConnection(
          "jdbc:postgresql://localhost:5432/jdbc_test_db",
          "jdbc_test",
          "123"
        );
        Statement statement = connection.createStatement();
        return statement.execute(sql);
    }

/*    @SneakyThrows
    public static void main(String[] args) {
        BookRepository repo = new BookRepository();
        List<Book> all = repo.getAll();
        all.forEach(System.out::println);
    }*/
}
