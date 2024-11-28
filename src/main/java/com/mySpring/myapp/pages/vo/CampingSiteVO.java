package com.mySpring.myapp.pages.vo;

public class CampingSiteVO {
    private int id;            // 캠핑장 ID
    private String name;       // 캠핑장 이름
    private String location;   // 캠핑장 위치
    private String imageUrl;   // 캠핑장 이미지 URL
    private int price;         // 캠핑장 가격

    // 기본 생성자
    public CampingSiteVO() {}

    // Getter와 Setter 메소드
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
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
