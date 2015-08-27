<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>柱状图Demo</title>
<%
	String path = request.getContextPath();
	request.setAttribute("path", path);
%>
<!-- 引入echarts.js 框架文件  -->

<script type="text/javascript"
	src="${path}/js/echarts/build/dist/echarts.js"></script>
<!-- 为模块加载器配置echarts和所需图表的路径  -->
<script type="text/javascript">
	require.config({
		paths : {
			echarts : '${path}/js/echarts/build/dist'
		}
	});
</script>

<!-- 使用 -->
<script type="text/javascript">
	require([ 'echarts', 'echarts/chart/bar','echarts/chart/line' // 使用柱状图就加载bar模块，按需加载
	], function(ec) {
		// 基于准备好的dom，初始化echarts图表
		var myChart = ec.init(document.getElementById('main'));

		var option = {
			title : {  //标题
				text : '测试数据',
				subtext : 'subtext'
			},
			toolbox: { //工具
		        show : true,
		        feature : {
		        	mark : {show: true},  //辅助线
		            dataView : {show: true, readOnly: false}, //纯数据展示
		            magicType: {show: true, type: ['line', 'bar']},  // 图表之间切换 
		            restore : {show: true},  //刷新
		            saveAsImage : {show: true}  // 保存为图片
		        }
		    },
			legend : { // 图例配置
				padding : 5, // 图例内边距，单位px，默认上下左右内边距为5
				itemGap : 10, // Legend各个item之间的间隔，横向布局时为水平间隔，纵向布局时为纵向间隔
				data : [ 'ios', 'android' ]
			},
			tooltip : { // 气泡提示配置
				trigger : 'item', // 触发类型，默认数据触发，可选为：'axis'
			},
			xAxis : [ // 直角坐标系中横轴数组
			{
				type : 'category', // 坐标轴类型，横轴默认为类目轴，数值轴则参考yAxis说明
				data : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul',
						'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ]
			} ],
			yAxis : [ // 直角坐标系中纵轴数组
			{
				type : 'value', // 坐标轴类型，纵轴默认为数值轴，类目轴则参考xAxis说明
				boundaryGap : [ 0.1, 0.1 ], // 坐标轴两端空白策略，数组内数值代表百分比
				splitNumber : 4
			// 数值轴用，分割段数，默认为5
			} ],
			series : [
					{
						name : 'ios', // 系列名称
						type : 'line', // 图表类型，折线图line、散点图scatter、柱状图bar、饼图pie、雷达图radar
						data : [ 112, 23, 45, 56, 233, 343, 454, 89, 343, 123,
								45, 123 ]
					},
					{
						name : 'android', // 系列名称
						type : 'line', // 图表类型，折线图line、散点图scatter、柱状图bar、饼图pie、雷达图radar
						data : [ 45, 123, 145, 526, 233, 343, 44, 829, 33, 123,
								45, 13 ]
					} ]
		};

		// 为echarts对象加载数据 
		myChart.setOption(option);
	});
</script>

</head>
<body>


	<div id="main" style="height: 400px"></div>
</body>
</html>