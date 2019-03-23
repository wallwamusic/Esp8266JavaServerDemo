package com.lihaojie.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MxcTest {
	@RequestMapping("/mxctest.action")
	public void mxctest(HttpServletResponse response){
		int i = 40;
		if (i >= 30) {
			try {
				PrintWriter out = response.getWriter();
				out.println("4");
				out.flush();
				out.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
