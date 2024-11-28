package com.mySpring.myapp.pages.vo;

import org.springframework.stereotype.Component;

@Component("campingSiteVO") // bean 생성
public class CampingSiteVO {
    private int id;
    private String name;
    private String location;
    private String image_url;
    private int price;

    public CampingSiteVO() {
    }

    public CampingSiteVO(int id, String name, String location, String image_url, int price) {
        this.id = id;
        this.name = name;
        this.location = location;
        this.image_url = image_url;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getImageUrl() {
        return image_url;
    }

    public void setImageUrl(String imageUrl) {
        this.image_url = image_url;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
