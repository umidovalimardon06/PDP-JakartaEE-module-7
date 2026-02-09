package com.github.umidovalimardon06.repository;

import com.github.umidovalimardon06.Jdbctest;
import com.github.umidovalimardon06.entity.Book;
import lombok.SneakyThrows;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BookRepository {
    @SneakyThrows
    public int saveBook(Book book) {
        PreparedStatement insert = Jdbctest.connection.prepareStatement(
                "INSERT INTO BOOK(TITLE,PAGES) " +
                        "VALUES (?,?) returning id;"
        );
        insert.setString(1,book.getTitle());
        insert.setInt(2,book.getPages());
        ResultSet set = insert.executeQuery();
        if (set.next()) return set.getInt(1);
        return -1;
    }
}
