package com.mySpring.myapp.pages.vo;

import org.springframework.stereotype.Component;

@Component("campingSiteVO") // bean 생성
public class CampingSiteVO {
    private int id;                  // 고유 ID
    private String name;             // 캠핑장명
    private String type;             // 구분 (캠핑, 야영장)
    private String shortDesc;        // 축약 설명
    private String intro;            // 소개글
    private String loc;              // 위치 (시군구)
    private String address;          // 상세 주소
    private String custPhone;        // 고객 상담 전화
    private String repImage;         // 캠핑장 대표 이미지
    private int price;            // 예약 가격
    private String reservUrl;         // 예약 URL

    public CampingSiteVO() {
    }

    public CampingSiteVO(int id, String name, String type, String shortDesc, String intro, String loc, String address, String custPhone, String repImage, int price, String reservUrl) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.shortDesc = shortDesc;
        this.intro = intro;
        this.loc = loc;
        this.address = address;
        this.custPhone = custPhone;
        this.repImage = repImage;
        this.price = price;
        this.reservUrl = reservUrl;
    }

    // Getter 및 Setter 메서드
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getShortDesc() {
        return shortDesc;
    }

    public void setShortDesc(String shortDesc) {
        this.shortDesc = shortDesc;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCustPhone() {
        return custPhone;
    }

    public void setCustPhone(String custPhone) {
        this.custPhone = custPhone;
    }

    public String getRepImage() {
        return repImage;
    }

    public void setRepImage(String repImage) {
        this.repImage = repImage;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getreservUrl() {
        return reservUrl;
    }

    public void setreservUrl(String reservUrl) {
        this.reservUrl = reservUrl;
    }
}
