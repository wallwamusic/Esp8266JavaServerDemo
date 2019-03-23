package com.lihaojie.test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.lihaojie.bean.WaterValue;
import com.lihaojie.dao.IndexDao;
import com.lihaojie.service.IndexService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:/spring/*.xml"})
public class TestSendTime {
	@Autowired
	private IndexDao indexDao;
	
	@Autowired
	private IndexService indexService;
	
	@Test
	public void testTime() {
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyÄêMMÔÂddÈÕ  HH:mm:ss");
		System.out.println(sdf.format(date));
	}

	@Test
	public void testArray() {
		int[] num = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
		System.out.println(num.length);
		for (int i = 9; i >= 0; i--) {
			System.out.println(num[i]);
		}
	}

	@Test
	public void testTimestamp() {
		List<WaterValue> list = indexDao.getIndexDataGraph();
		System.out.println(list.get(4).getValuetime().toString().substring(5, 19));
	}
	
	@Test
	public void testZhuanHuan() {
		if(Double.valueOf("25.2")>30) {
			System.out.println(Double.valueOf("25.2"));
		}else {
			System.out.println("!!!!!!!!!");
		}
	}
	
	
	@Test
	public void testSort() {
		List<WaterValue> list = indexService.getIndexDataGraph();
		String[] timeArray = new String[10];
		String[] tempArray = new String[10];
		String[] humiArray = new String[10];
		for (int i = 9 ; i >= 0 ; i--) {
			timeArray[9-i] = list.get(i).getValuetime().toString().substring(5, 19);
			tempArray[9-i] = list.get(i).getTempvalue();
			humiArray[9-i] = list.get(i).getHumivalue();
		}
	
		for (String string : timeArray) {
			System.out.println(string);
		}
	}
}
