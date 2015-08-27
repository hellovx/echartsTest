<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	String path = request.getContextPath();
	request.setAttribute("path", path);
%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>柱状图Demo</title>
	
		<script type="text/javascript"
	src="${path}/js/echarts/theme/green.js"></script>
	
	
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
	require([ 'echarts','echarts/theme/green','echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
	], function(ec) {
		// 基于准备好的dom，初始化echarts图表  macarons infographic为主题
		var myChart = ec.init(document.getElementById('main'));
		var ob=require('echarts/theme/green');
		debugger;
		myChart.setTheme(ob);

		option = {
			title : {
				text : '世界人口总量',
				subtext : '数据来自网络'
			},
			tooltip : {
				trigger : 'axis'
			},
			legend : {
				data : [ '2011年', '2012年' ]
			},
			toolbox : {
				show : true,
				feature : {
					mark : {
						show : true
					},
					dataView : {
						show : true,
						readOnly : false
					},
					magicType : {
						show : true,
						type : [ 'line', 'bar' ]
					},
					restore : {
						show : true
					},
					saveAsImage : {
						show : true
					}
				}
			},
			calculable : true,
			xAxis : [ {
				type : 'value',
				boundaryGap : [ 0, 0.01 ]
			} ],
			yAxis : [ {
				type : 'category',
				data : [ '巴西', '印尼', '美国', '印度', '中国', '世界人口(万)' ]
			} ],
			series : [ {
				name : '2011年',
				type : 'bar',
				data : [ 18203, 23489, 29034, 104970, 131744, 630230 ]
			}, {
				name : '2012年',
				type : 'bar',
				data : [ 19325, 23438, 31000, 121594, 134141, 681807 ]
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