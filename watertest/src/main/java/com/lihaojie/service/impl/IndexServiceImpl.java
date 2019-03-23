package com.lihaojie.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lihaojie.bean.WaterValue;
import com.lihaojie.dao.IndexDao;
import com.lihaojie.service.IndexService;

@Service
public class IndexServiceImpl implements IndexService {
	@Autowired
	private IndexDao indexDao;

	@Override
	public List<WaterValue> getIndexData(Integer currentPage) throws Exception {
		return indexDao.selectIndexData((currentPage-1)*10);
	}

	@Override
	public int getpageCount() throws Exception {
		return (int) Math.ceil((double)indexDao.selectpageCount()/10);
	}

	@Override
	public List<WaterValue> getIndexDataGraph() {
		return indexDao.getIndexDataGraph();
	}

}
