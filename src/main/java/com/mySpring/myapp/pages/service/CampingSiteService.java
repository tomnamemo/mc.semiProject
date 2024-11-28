package com.mySpring.myapp.pages.service;

import java.util.List;

import com.mySpring.myapp.pages.vo.CampingSiteVO;

public interface CampingSiteService {
    List<CampingSiteVO> listCampingSites();
    void addCampingSite(CampingSiteVO campingSite);
    void removeCampingSite(int id);
	CampingSiteVO getCampingSiteById(int id);
}
