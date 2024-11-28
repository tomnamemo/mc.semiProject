package com.mySpring.myapp.pages.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;
 
import com.mySpring.myapp.pages.vo.CampingSiteVO;

@Repository("campingSiteDAO")
public class CampingSiteDAOImpl implements CampingSiteDAO {
    @Autowired
    private SqlSession sqlSession;

    @Override
    public List<CampingSiteVO> selectAllCampingSites() throws DataAccessException {
        List<CampingSiteVO> campingSitesList = null;
        campingSitesList = sqlSession.selectList("mapper.pages.selectAllCampingSites");
        return campingSitesList;
    }

    public CampingSiteVO selectCampingSiteById(int id) {
        return sqlSession.selectOne("mapper.pages.selectCampingSiteById", id); // 매퍼에서 ID로 조회
    }
    
    @Override
    public int insertCampingSite(CampingSiteVO campingSiteVO) throws DataAccessException {
        int result = sqlSession.insert("mapper.pages.insertCampingSite", campingSiteVO);
        return result;
    }

    @Override
    public int deleteCampingSite(int id) throws DataAccessException {
        int result = sqlSession.delete("mapper.pages.deleteCampingSite", id);
        return result;
    }
}
