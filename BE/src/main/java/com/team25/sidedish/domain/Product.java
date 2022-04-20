package com.team25.sidedish.domain;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class Product {

    private Long id;
    private String name;
    private int price;
    private String discription;
    private int stock;
    private Long categoryId;

}
