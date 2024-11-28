package com.mySpring.myapp.pages.dao;

import java.util.List;

import com.mySpring.myapp.pages.vo.CampingSiteVO;

public interface CampingSiteDAO {
    List<CampingSiteVO> selectAllCampingSites();
    int insertCampingSite(CampingSiteVO campingSiteVO);
    int deleteCampingSite(int id);
}
