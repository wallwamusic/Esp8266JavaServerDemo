package com.lihaojie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lihaojie.bean.WaterValue;
import com.lihaojie.service.IndexService;

@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;

	@RequestMapping("/index")
	public String getIndex(Integer currentPage,Model model) throws Exception {
		List<WaterValue> list = indexService.getIndexData(currentPage);
		int pageCount = indexService.getpageCount();
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("indexData", list);
		return "/WEB-INF/jsp/main.jsp";
	}
}
