package com.mySpring.myapp.pages.service;

import com.mySpring.myapp.pages.dao.CampingSiteDAO;
import com.mySpring.myapp.pages.vo.CampingSiteVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CampingSiteServiceImpl implements CampingSiteService {

    @Autowired
    private CampingSiteDAO campingSiteDAO;

    @Override
    public List<CampingSiteVO> getCampingSites() {
        return campingSiteDAO.getCampingSites();
    }

    @Override
    public CampingSiteVO getCampingSiteById(int id) {
        return campingSiteDAO.getCampingSiteById(id);
    }
}
 