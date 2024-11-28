package com.mySpring.myapp.pages.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.mySpring.myapp.pages.service.CampingSiteService;
import com.mySpring.myapp.pages.vo.CampingSiteVO;

@Controller("campingSiteController") // bean 생성
public class CampingSiteControllerImpl implements CampingSiteController {

	@Autowired // 의존성 주입
	private CampingSiteService campingSiteService;

	@Override
	@RequestMapping(value = { "/", "/main.do" }, method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request, HttpServletResponse response) {
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView();
		List<CampingSiteVO> campList = campingSiteService.listCampingSites();
		mav.addObject("campList", campList);
		mav.setViewName(viewName);
		return mav;
	}

	@RequestMapping(value = "/pages/detail.do", method = RequestMethod.GET)
	public ModelAndView viewCampingSiteDetail(@RequestParam("id") int id, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		CampingSiteVO campingSiteVO = campingSiteService.getCampingSiteById(id);
		if (campingSiteVO == null) {
			throw new Exception("Camping site not found for ID: " + id);
		}
		ModelAndView mav = new ModelAndView();
		mav.setViewName(viewName);
		mav.addObject("campingSite", campingSiteVO);
		return mav;
	}

	@Override
	@RequestMapping(value = "/pages/listCampingSites.do", method = RequestMethod.GET)
	public ModelAndView listCampingSites(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName = (String) request.getAttribute("viewName");
		List<CampingSiteVO> campingSitesList = campingSiteService.listCampingSites();
		ModelAndView mav = new ModelAndView(viewName);
		mav.addObject("campingSitesList", campingSitesList);
		return mav;
	}

	@Override
	@RequestMapping(value = "/pages/addCampingSite.do", method = RequestMethod.POST)
	public ModelAndView addCampingSite(@ModelAttribute("campingSite") CampingSiteVO campingSite,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		campingSiteService.addCampingSite(campingSite);
		ModelAndView mav = new ModelAndView("redirect:/camping/listCampingSites.do");
		return mav;
	}

	@Override
	@RequestMapping(value = "/pages/removeCampingSite.do", method = RequestMethod.GET)
	public ModelAndView removeCampingSite(@RequestParam("id") int id, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		campingSiteService.removeCampingSite(id);
		ModelAndView mav = new ModelAndView("redirect:/camping/listCampingSites.do");
		return mav;
	}

	@Override
	public ModelAndView detail(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return null;
	}

}
