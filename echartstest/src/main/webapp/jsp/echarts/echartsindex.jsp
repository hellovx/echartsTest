<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Echarts Demo Test Info</title>
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
	require([ 'echarts', 'echarts/chart/bar' // 使用柱状图就加载bar模块，按需加载
	], function(ec) {
		// 基于准备好的dom，初始化echarts图表
		var myChart = ec.init(document.getElementById('main'));

		var option = {
			tooltip : {
				show : true
			},
			legend : {
				data : [ '销量' ]
			},
			xAxis : [ {
				type : 'category',
				data : [ "衬衫", "羊毛衫", "雪纺衫", "裤子", "高跟鞋", "袜子" ]
			} ],
			yAxis : [ {
				type : 'value'
			} ],
			series : [ {
				"name" : "销量",
				"type" : "bar",
				"data" : [ 7, 23, 123, 3, 44, 69 ]
			} ]
		};

		// 为echarts对象加载数据 
		myChart.setOption(option);
	});
</script>

</head>
<body>

 <h2><a href="<%=request.getContextPath()%>/jsp/echarts/pie.jsp">Echarts PIE 饼状图 Demo Test</a></h2>
  <h2><a href="<%=request.getContextPath()%>/jsp/echarts/bar.jsp">Echarts BAR 柱状图 Demo Test</a></h2>
 
	<div id="main" style="height: 400px"></div>
</body>
</html>