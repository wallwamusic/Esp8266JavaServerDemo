package com.lihaojie.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lihaojie.bean.WaterValue;
import com.lihaojie.service.WaterService;
import com.lihaojie.utils.SendEmail;

@Controller
public class BackUploadControlller {
	@Autowired
	private WaterService waterService;

	// 传感器方上传数据接收
	@RequestMapping("/upload.action")
	public void backUploadData(@Validated WaterValue waterValue, HttpServletResponse response,
			BindingResult bindingResult) throws IOException{
		try {
			if (!bindingResult.hasErrors()) {
				if (Double.valueOf(waterValue.getTempvalue()) > 30 || Double.valueOf(waterValue.getHumivalue()) > 60) {
					SendEmail.sendEmail();
				}
				int i = waterService.uploadData(waterValue);
				if (i >= 1) {
					PrintWriter out = response.getWriter();
					out.println("4");
					out.flush();
					out.close();
				}
			}
		} catch (Exception e) {
			PrintWriter out = response.getWriter();
			out.println("5");
			out.flush();
			out.close();
			e.printStackTrace();
		}
	}
}
