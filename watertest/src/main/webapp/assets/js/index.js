$(function(){
	$.ajax({
		url:"indexGraph.action",
		type:"get",
		cache:false,
		dataType:"json",
		contentType:"application/json;charset=utf-8",
		success:function(data){
			var timedata = data[0];
			var tempdata = data[1];
			var humidata = data[2];
			
			// 直方图的绘制
			var data = [
			   tempdata,
			   humidata
			];
			var dataLabel = timedata;
			var dataTempHumi = {
			    labels:dataLabel,
			    series:data
			}

			var optionChart = {
				plugins: [
				Chartist.plugins.tooltip()
				],
				axisX: {
					showGrid: false
				},
				height: "245px",
			}

			var responsiveChart = [
			['screen and (max-width: 640px)', {
				axisX: {
					labelInterpolationFnc: function (value) {
						return value[0];
					}
				}
			}]
			];

			Chartist.Line('#tempChart', dataTempHumi, optionChart, responsiveChart);

		}
	});
})
