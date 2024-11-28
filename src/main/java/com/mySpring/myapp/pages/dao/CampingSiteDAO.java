package com.mySpring.myapp.pages.dao;

import com.mySpring.myapp.pages.vo.CampingSiteVO;

import java.util.List;

public interface CampingSiteDAO {
    List<CampingSiteVO> getCampingSites(); // 모든 캠핑장 조회
    CampingSiteVO getCampingSiteById(int id); // ID로 캠핑장 조회
}
