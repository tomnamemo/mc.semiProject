package com.mySpring.myapp.pages.service;

import com.mySpring.myapp.pages.vo.CampingSiteVO;

import java.util.List;

public interface CampingSiteService {
    List<CampingSiteVO> getCampingSites();
    CampingSiteVO getCampingSiteById(int id);
}