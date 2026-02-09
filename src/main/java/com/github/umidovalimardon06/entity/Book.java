package com.github.umidovalimardon06.entity;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
@Builder
public class Book {
    private int id;
    private String title;
    private int pages;
}
