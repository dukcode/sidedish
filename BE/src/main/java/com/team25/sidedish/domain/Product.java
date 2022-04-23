package com.team25.sidedish.domain;

import com.team25.sidedish.exception.NotEnoughStockException;
import lombok.Getter;
import org.springframework.data.annotation.Id;

@Getter
public class Product {

    @Id
    private Long id;
    private String name;
    private int price;
    private String description;
    private String thumbnailImageUrl;
    private int stock;

    public Product(String name, int price, String description, String thumbnailImageUrl,
        int stock) {
        this.name = name;
        this.price = price;
        this.description = description;
        this.thumbnailImageUrl = thumbnailImageUrl;
        this.stock = stock;
    }

    public int updateStock(int amountToDeliver) {
        if (stock < amountToDeliver) {
            throw new NotEnoughStockException("해당 제품의 재고가 충분하지 않습니다");
        }
        stock -= amountToDeliver;
        return stock;
    }
}
