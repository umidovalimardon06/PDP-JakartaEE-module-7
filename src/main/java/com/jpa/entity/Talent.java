package com.jpa.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NoArgsConstructor;
import java.util.Random;

@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "talents")
public class Talent {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private Integer age;
    private String gender;
    private String major;
    private String country;
    private String acceptance_rate;

    public void setAcceptance() {
        this.acceptance_rate = calcAcceptanceRandomly();
    }

    private String calcAcceptanceRandomly() {
        Random random = new Random();
        if (random.nextBoolean()) return "GOOD";
        return "NOT GOOD";
    }

}
