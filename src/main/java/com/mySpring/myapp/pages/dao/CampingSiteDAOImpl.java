package com.mySpring.myapp.pages.dao;

import com.mySpring.myapp.pages.vo.CampingSiteVO;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CampingSiteDAOImpl implements CampingSiteDAO {
    private DataSource dataSource;

    public CampingSiteDAOImpl(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<CampingSiteVO> getCampingSites() {
        List<CampingSiteVO> campingSites = new ArrayList<>();
        String sql = "SELECT * FROM camping_sites"; // 테이블 이름 수정

        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                CampingSiteVO site = new CampingSiteVO();
                site.setId(rs.getInt("id"));
                site.setName(rs.getString("name"));
                site.setLocation(rs.getString("location"));
                site.setImageUrl(rs.getString("image_url"));
                site.setPrice(rs.getInt("price"));
                campingSites.add(site);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return campingSites;
    }

    @Override
    public CampingSiteVO getCampingSiteById(int id) {
        CampingSiteVO site = null;
        String sql = "SELECT * FROM camping_sites WHERE id = ?"; // 테이블 이름 수정

        try (Connection conn = dataSource.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setInt(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                site = new CampingSiteVO();
                site.setId(rs.getInt("id"));
                site.setName(rs.getString("name"));
                site.setLocation(rs.getString("location"));
                site.setImageUrl(rs.getString("image_url"));
                site.setPrice(rs.getInt("price"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return site;
    }
}
