package com.mySpring.myapp.pages.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.mySpring.myapp.pages.vo.CampingSiteVO;

public interface CampingSiteController {
	public ModelAndView CampingSites(HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ModelAndView addCampingSite(@ModelAttribute("info") CampingSiteVO CampingSiteVO, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

	public ModelAndView removeCampingSite(@RequestParam("id") String id, HttpServletRequest request,
			HttpServletResponse response) throws Exception;

	public ModelAndView login(@ModelAttribute("member") CampingSiteVO member, RedirectAttributes rAttr,
			HttpServletRequest request, HttpServletResponse response) throws Exception;

	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response) throws Exception;
}