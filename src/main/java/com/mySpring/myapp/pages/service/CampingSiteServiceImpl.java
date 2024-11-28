package com.mySpring.myapp.pages.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mySpring.myapp.pages.dao.CampingSiteDAO;
import com.mySpring.myapp.pages.vo.CampingSiteVO;

@Service("campingSiteService")
public class CampingSiteServiceImpl implements CampingSiteService {

    @Autowired
    private CampingSiteDAO campingSiteDAO;

    @Override
    public List<CampingSiteVO> listCampingSites() {
        return campingSiteDAO.selectAllCampingSites();
    }

    @Override
    public void addCampingSite(CampingSiteVO campingSite) {
        campingSiteDAO.insertCampingSite(campingSite);
    }

    @Override
    public void removeCampingSite(int id) {
        campingSiteDAO.deleteCampingSite(id);
    }
}
