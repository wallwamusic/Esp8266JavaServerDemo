<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>采集数据信息详情</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,maximum-scale=1.0, user-scalable=no">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<script src="bootstrap/js/jquery2.0.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="col-sm-12">
			<h1>某地温湿度数据监测</h1>
		</div>

		<div class="col-sm-12">
			<table class="table table-striped">
				<thead>
					<tr>
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
		<c:if test="${not empty indexData }">
			<div class="col-sm-4"></div>
			<div class="col-sm-4">
				<ul class="pagination">
					<c:if test="${currentPage > 1 }">
						<li class="page-item"><a class="page-link"
							href="index.action?currentPage=${currentPage-1 }">上一页</a>
						</li>
					</c:if>
					<c:if test="${currentPage <= 1 }">
						<li class="page-item disabled"><a class="page-link">上一页</a>
						</li>
					</c:if>
					<li class="page-item active"><a class="page-link"
						href="index.action?currentPage=${currentPage }"> ${currentPage }
					</a>
					</li>
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
			<div class="col-sm-4"></div>
		</c:if>
	</div>
	<div>${currentPage }</div>
	<div>${pageCount }</div>
</body>
</html>
