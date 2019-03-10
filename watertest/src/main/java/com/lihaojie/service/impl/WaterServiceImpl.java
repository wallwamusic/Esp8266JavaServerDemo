package com.lihaojie.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lihaojie.bean.WaterValue;
import com.lihaojie.dao.WaterDao;
import com.lihaojie.service.WaterService;

@Service
public class WaterServiceImpl implements WaterService {
	@Autowired
	private WaterDao waterDao;

	@Override
	@Transactional
	public int uploadData(WaterValue waterValue) throws Exception {
		return waterDao.uploadData(waterValue);
	}

}
