package com.bookmanager.model;

import lombok.*;

@Data
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Book {
    private String title;
    private String author;
}
