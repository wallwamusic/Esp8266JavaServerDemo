<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>采集数据信息详情</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport'/>
	<link rel="shortcut icon" href="assets/img/favicon.ico" type="image/x-icon" />
    <link rel="icon" sizes="any" mask href="assets/img/favicon.ico">
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
	<link rel="stylesheet" href="assets/css/ready.css">
	<link rel="stylesheet" href="assets/css/main.css">
</head>
<body>
	<div class="container">
		<div class="col-sm-12">
			<p class="text-center bg-success text-white" style="font-size: 35px">某地温湿度数据监测</p>
		</div>

		<div class="col-sm-12">
			<table class="table table-striped text-center table-hover">
				<thead>
					<tr class="bg-success text-white">
						<th>编号</th>
						<th>温度</th>
						<th>湿度</th>
						<th>时间</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${indexData }" var="data">
					<tr>
						<td>${data.collectnum}</td>
						<td>${data.tempvalue}</td>
						<td>${data.humivalue}</td>
						<td>${data.valuetime}</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-sm-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">近期温湿度走势图</h4>
					<p class="card-category">红色:湿度&nbsp;&nbsp;蓝色:温度</p>
				</div>
				<!-- 温湿度直方图 -->
				<div class="card-body">
					<div id="tempChart" class="chart"></div>
				</div>
			</div>
		</div>
		<c:if test="${not empty indexData }">
		<div class = "row">
			<div class = "col-sm-4"></div>
			<div class = "col-sm-4">
				<ul class="pagination">
					<c:if test="${currentPage > 1 }">
						<li class="page-item"><a class="page-link"
							href="index.action?currentPage=${currentPage-1 }">上一页</a></li>
					</c:if>
					<c:if test="${currentPage <= 1 }">
						<li class="page-item disabled"><a class="page-link">上一页</a></li>
					</c:if>
					<li class="page-item active"><a class="page-link"
						href="index.action?currentPage=${currentPage }"> ${currentPage }
					</a></li>
					<c:if test="${currentPage < pageCount }">
						<li class="page-item"><a class="page-link"
							href="index.action?currentPage=${currentPage + 1 }">
								${currentPage + 1 } </a></li>
					</c:if>
					<c:if test="${currentPage + 2 < pageCount }">
						<li class="page-item"><a class="page-link"
							href="index.action?currentPage=${currentPage + 2 }">
								${currentPage + 2 } </a></li>
					</c:if>
					<c:if test="${currentPage + 1 < pageCount }">
						<li class="page-item"><a class="page-link"
							href="index.action?currentPage=${currentPage + 1 }">下一页</a></li>
					</c:if>
					<c:if test="${currentPage + 1 >= pageCount }">
						<li class="page-item disabled"><a class="page-link">下一页</a></li>
					</c:if>
				</ul>
			</div>
			<div class = "col-sm-4"></div>
			</div>
		</c:if>
	</div>
</body>
<script src="assets/js/core/jquery.3.2.1.min.js"></script>
<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
<script src="assets/js/core/bootstrap.min.js"></script>
<script src="assets/js/plugin/chartist/chartist.min.js"></script>
<script src="assets/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
<script src="assets/js/index.js"></script>
</html>
