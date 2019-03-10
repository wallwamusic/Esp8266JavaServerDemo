package com.lihaojie.service;

import java.util.List;

import com.lihaojie.bean.WaterValue;

public interface IndexService {

	List<WaterValue> getIndexData(Integer currentPage) throws Exception;

	int getpageCount() throws Exception;

}
