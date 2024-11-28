package com.mySpring.myapp.pages.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

import com.mySpring.myapp.pages.vo.CampingSiteVO;

public interface CampingSiteController {
	ModelAndView listCampingSites(HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView addCampingSite(CampingSiteVO campingSite, HttpServletRequest request, HttpServletResponse response)
			throws Exception;

	ModelAndView removeCampingSite(int id, HttpServletRequest request, HttpServletResponse response) throws Exception;

	ModelAndView main(HttpServletRequest request, HttpServletResponse response);

	ModelAndView detail(HttpServletRequest request, HttpServletResponse response);

}
