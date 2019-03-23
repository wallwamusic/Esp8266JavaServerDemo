package com.lihaojie.dao;

import java.util.List;

import com.lihaojie.bean.WaterValue;

public interface IndexDao {

	List<WaterValue> selectIndexData(Integer currentPage) throws Exception;

	int selectpageCount() throws Exception;

	List<WaterValue> getIndexDataGraph();

}
