package com.lihaojie.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lihaojie.bean.WaterValue;
import com.lihaojie.service.WaterService;

@Controller
public class BackUploadControlller {
	@Autowired
	private WaterService waterService;

	@RequestMapping("/upload")
	public void backUploadData(WaterValue waterValue,HttpServletResponse response) throws Exception {
		int i = waterService.uploadData(waterValue);
		//此处上传没有问题，需要注意插入编号的id获取是否正确
		if(i >= 1) {
			PrintWriter out = response.getWriter();
			out.println("4");
			out.flush();
			out.close();
		}
	}
}
