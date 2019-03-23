package com.lihaojie.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lihaojie.bean.WaterValue;
import com.lihaojie.service.IndexService;

@Controller
public class IndexController {
	@Autowired
	private IndexService indexService;

	@RequestMapping("/index.action")
	public String getIndex(Integer currentPage, Model model) throws Exception {
		List<WaterValue> list = indexService.getIndexData(currentPage);
		int pageCount = indexService.getpageCount();
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("indexData", list);
		return "/WEB-INF/jsp/main.jsp";
	}

	@RequestMapping("/indexGraph.action")
	@ResponseBody
	public List<Object> getIndexGraph() throws Exception {
		List<WaterValue> list = indexService.getIndexDataGraph();
		String[] timeArray = new String[10];
		String[] tempArray = new String[10];
		String[] humiArray = new String[10];
		for (int i = 9 ; i >= 0 ; i--) {
			timeArray[9-i] = list.get(i).getValuetime().toString().substring(5, 19);
			tempArray[9-i] = list.get(i).getTempvalue();
			humiArray[9-i] = list.get(i).getHumivalue();
		}
		List<Object> listgraph = new ArrayList<>();
		listgraph.add(timeArray);
		listgraph.add(tempArray);
		listgraph.add(humiArray);
		return listgraph;
	}
}
